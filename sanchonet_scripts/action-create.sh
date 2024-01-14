#!/bin/bash

# Prompt for more governance actions
unset KEY_NUMBER
KEY_NUMBER=50
building_gov_action() {
    unset INDEXNO
    unset AMOUNT    
    echo "What will be the highest index number of your treasury action?"
    read INDEXNO
    sleep 0.5
    echo "What is the max amount to withdraw (in Lovelace)?"
    read AMOUNT
    echo "------------------------------------------"
    echo "              Creating Action"
    echo "------------------------------------------"
    sleep 0.5
    
    #create the action file directory   
    mkdir action-create 2>/dev/null
 
    #create the vote files
    while true; do
            if [ "$INDEXNO" != "0" ]; then
                    cardano-cli conway governance action create-treasury-withdrawal \
  		    --testnet \
  		    --governance-action-deposit 1000000000 \
  		    --deposit-return-stake-verification-key-file stake.vkey \
  		    --anchor-url https://hornan7.github.io/proposal.txt \
  		    --anchor-data-hash 460059c9aded5a476378db48cafa45f5c0cc733b389262364207ccf5ebae1590 \
  		    --funds-receiving-stake-verification-key-file stake-keys/stake${KEY_NUMBER}.vkey \
  		    --transfer ${AMOUNT} \
  		    --out-file action-create/action${INDEXNO}.action
                echo " --proposal-file action-create/action${INDEXNO}.action" >> action-create/txvar.txt
                echo -ne "\rPreparing action number ${INDEXNO} "
                sleep 0.2
		AMOUNT=$((AMOUNT-1000000))
		KEY_NUMBER=$((KEY_NUMBER-1))
                INDEXNO=$((INDEXNO-1))
            else
                    cardano-cli conway governance action create-treasury-withdrawal \
                    --testnet \
                    --governance-action-deposit 1000000000 \
                    --deposit-return-stake-verification-key-file stake.vkey \
                    --anchor-url https://hornan7.github.io/proposal.txt \
                    --anchor-data-hash 460059c9aded5a476378db48cafa45f5c0cc733b389262364207ccf5ebae1590 \
                    --funds-receiving-stake-verification-key-file stake-keys/stake${KEY_NUMBER}.vkey \
                    --transfer ${AMOUNT} \
                    --out-file action-create/action${INDEXNO}.action
                echo " --proposal-file action-create/action${INDEXNO}.action" >> action-create/txvar.txt
                echo -ne "\rPreparing action number ${INDEXNO} "

                    sleep 1
                    break  
            fi
    done
}

building_gov_action           
echo "------------------------------------------"
echo "           Building Transaction"
echo "------------------------------------------"
sleep 0.5

        #build the Transaction
        cardano-cli conway transaction build \
        --testnet-magic 4 \
        --tx-in "$(cardano-cli query utxo --address $(cat payment.addr) --testnet-magic 4 --out-file /dev/stdout | jq -r 'keys[0]')" \
        --change-address $(cat payment.addr) \
        $(cat action-create/txvar.txt) \
        --witness-override 2 \
        --out-file action-tx.raw
        
# Remove the action index options file        
rm -rf action-create
  
echo "           Signing Transaction"
echo "------------------------------------------"
sleep 0.5

        #Sign the transaction
        cardano-cli transaction sign --tx-body-file action-tx.raw \
        --signing-key-file stake.skey \
        --signing-key-file payment.skey \
        --testnet-magic 4 \
        --out-file vote-tx.signed

echo "      Submiting Transaction On-Chain"
echo "------------------------------------------"
sleep 0.5

        #Submit the Transaction
        cardano-cli transaction submit \
        --testnet-magic 4 \
        --tx-file vote-tx.signed

echo "Governance action submition complete"
unset INDEXNO
unset KEY_NUMBER
unset AMOUNT
