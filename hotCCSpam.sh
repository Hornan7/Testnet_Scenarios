#! /bin/bash

# Variables and Colors
REQUEST_NO=1
MAX_REQUESTS=40
WITNESS=$((MAX_REQUESTS+1))
CREDENTIALS_NO_SUBMITED=40
YELLOW='\033[1;33m'
NC='\033[0m'

# Time passing animation for the mempool check
time_passing_animation() {
    local total_duration=5
    local elapsed=0
    while [ $elapsed -le $total_duration ]; do
        local progress=$((elapsed*50/total_duration))
        local filled=$progress 
        local unfilled=$((50-filled))
        echo -ne "\r["
        for _ in $(seq 1 $filled); do echo -n "#"; done
        for _ in $(seq 1 $unfilled); do echo -n " "; done
        echo -n "] $elapsed sec Waiting"
        sleep 1
        ((elapsed++))
    done
    echo -e "\nRunning query again."
}

# Verify mempool function
verify_mem_pool() {
        MEMPOOL=$(cardano-cli conway query tx-mempool --testnet-magic 4 tx-exists $(cardano-cli conway transaction txid --tx-file tx.signed) | jq .exists)
        while true; do
                if [ "$MEMPOOL" != "false" ]; then
                        echo "Your Transaction is still in the memory pool. Please Wait...."
                        MEMPOOL=$(cardano-cli conway query tx-mempool --testnet-magic 4 tx-exists $(cardano-cli conway transaction txid --tx-file tx.signed) | jq .exists)
                        sleep 1
                else
                        echo "Your Transaction as been included into a block!"
                        break
                fi
        done
}

# Creating CC cold, hot credentials, hashes and certificates
create_credentials() {
    mkdir -p keysAndHash > /dev/null 2>&1
    while [ $REQUEST_NO -le $MAX_REQUESTS ]; do
        cardano-cli conway governance committee key-gen-cold \
        --cold-verification-key-file keysAndHash/cc-cold${REQUEST_NO}.vkey \
        --cold-signing-key-file keysAndHash/cc-cold${REQUEST_NO}.skey

        cardano-cli conway governance committee key-gen-hot \
        --verification-key-file keysAndHash/cc-hot${REQUEST_NO}.vkey \
        --signing-key-file keysAndHash/cc-hot${REQUEST_NO}.skey

        cardano-cli conway governance committee key-hash \
        --verification-key-file keysAndHash/cc-cold${REQUEST_NO}.vkey > keysAndHash/cc-cold${REQUEST_NO}.hash

        cardano-cli conway governance committee create-hot-key-authorization-certificate \
        --cold-verification-key-file keysAndHash/cc-cold${REQUEST_NO}.vkey \
        --hot-key-file keysAndHash/cc-hot${REQUEST_NO}.vkey \
        --out-file keysAndHash/cc-hot-key-authorization${REQUEST_NO}.cert

        echo " --certificate-file keysAndHash/cc-hot-key-authorization${REQUEST_NO}.cert" >> keysAndHash/batchedCerts.txt
        echo " --signing-key-file keysAndHash/cc-cold${REQUEST_NO}.skey" >> keysAndHash/batchedSigners.txt

        ((REQUEST_NO++))
    done
}  

# Building Transaction, signatures and submit them (double check le witness override)
transaction_build_sign_submit () {
    cardano-cli conway transaction build \
    --testnet-magic 4 \
    --tx-in $(cardano-cli query utxo --address $(cat payment.addr) --testnet-magic 4 --out-file  /dev/stdout | jq -r 'keys[0]') \
    --change-address $(cat payment.addr) \
    $(cat keysAndHash/batchedCerts.txt) \
    --witness-override ${WITNESS} \
    --out-file tx.raw

    cardano-cli conway transaction sign \
    --testnet-magic 4 \
    --tx-body-file tx.raw \
    --signing-key-file payment.skey \
    $(cat keysAndHash/batchedSigners.txt) \
    --out-file tx.signed

    cardano-cli conway transaction submit \
    --testnet-magic 4 \
    --tx-file tx.signed

    rm -rf keysAndHash > /dev/null 2>&1
    echo "${CREDENTIALS_NO_SUBMITED} invalid authorization certificates submitted."
    CREDENTIALS_NO_SUBMITED=$((CREDENTIALS_NO_SUBMITED+40))
    REQUEST_NO=1
}

# Main function
main() {
    create_credentials
    transaction_build_sign_submit
    verify_mem_pool
}

# Simple loop to spam the chain
while true; do
    main
done
