time_passing_animation() {
    local animation="|/-\\"
    local dots=""
    for _ in {1..3}; do
        for i in $(seq 0 3); do
            echo -n -e "\r[ ${animation:$i:1} ] Waiting$dots"
            sleep 1
            dots+=".."
            if [ ${#dots} -gt 20 ]; then
                dots=""
            fi
        done
    done
    echo
}
verify_mem_pool() {
        MEMPOOL=$(cardano-cli conway query tx-mempool --testnet-magic 4 tx-exists $(cardano-cli conway transaction txid --tx-file vote-tx.signed) | jq .exists)
        while true; do
                if [ "$MEMPOOL" != "false" ]; then
                        echo "Your Transaction is still in the memory pool. Please Wait...."
                        time_passing_animation
                        MEMPOOL=$(cardano-cli conway query tx-mempool --testnet-magic 4 tx-exists $(cardano-cli conway transaction txid --tx-file vote-tx.signed) | jq .exists)
                        sleep 1
                else
                        echo "Your Transaction as been included into a block! You can now proceed to your next governance action spam"
                        break
                fi
        done
}
verify_mem_pool
