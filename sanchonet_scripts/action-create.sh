#!/bin/bash
########################################################################
# Modify the INDEXNO variable depending on the maximum index number
# per transaction ID that you want to submit.
# ex: INDEXNO=49 will give you 50 governance actions, including index 0.

INDEXNO=49



#############################
# Do not modify whats below #
#############################
AMOUNT=1000000000
building_gov_action() {   
    sleep 0.5
    echo "------------------------------------------"
    echo "              Creating Action"
    echo "------------------------------------------"
    sleep 0.5
    
    #create the action file directory   
    mkdir action-create 2>/dev/null
    rm my_outputs.txt 2>/dev/null
     
    #create the vote files
    while true; do
            if [ "$INDEXNO" != "0" ]; then
                    cardano-cli conway governance action create-treasury-withdrawal \
  		    --testnet \
  		    --governance-action-deposit 1000000000 \
  		    --deposit-return-stake-verification-key-file stake.vkey \
  		    --anchor-url https://hornan7.github.io/proposal.txt \
  		    --anchor-data-hash 460059c9aded5a476378db48cafa45f5c0cc733b389262364207ccf5ebae1590 \
  		    --funds-receiving-stake-verification-key-file stake.vkey \
  		    --transfer ${AMOUNT} \
  		    --out-file action-create/action${INDEXNO}.action
                echo " --proposal-file action-create/action${INDEXNO}.action" >> action-create/txvar.txt
                echo "Preparing action number ${INDEXNO} "
                sleep 0.1
		AMOUNT=$((AMOUNT-1000000))
                INDEXNO=$((INDEXNO-1))
            else
	    	if [ "$INDEXNO" -eq "0" ]; then
                    cardano-cli conway governance action create-treasury-withdrawal \
                    --testnet \
                    --governance-action-deposit 1000000000 \
                    --deposit-return-stake-verification-key-file stake.vkey \
                    --anchor-url https://hornan7.github.io/proposal.txt \
                    --anchor-data-hash 460059c9aded5a476378db48cafa45f5c0cc733b389262364207ccf5ebae1590 \
                    --funds-receiving-stake-verification-key-file stake.vkey \
                    --transfer ${AMOUNT} \
                    --out-file action-create/action${INDEXNO}.action
                echo " --proposal-file action-create/action${INDEXNO}.action" >> action-create/txvar.txt
                echo "Preparing action number ${INDEXNO} "

                    sleep 0.5
		fi      
                break  
            fi
    done
}
time_passing_animation() {
    local animation="|/-\\"
    local dots=""
    for _ in {1..3}; do
        for i in $(seq 0 3); do
            echo -n -e "\r[ ${animation:$i:1} ] Waiting$dots"
            sleep 0.5
            dots+=".."
            if [ ${#dots} -gt 20 ]; then
                dots=""
            fi
        done
    done
    echo
}
verify_mem_pool() {
	MEMPOOL=$(cardano-cli conway query tx-mempool --testnet-magic 4 tx-exists $(cardano-cli conway transaction txid --tx-file action-tx.signed) | jq .exists)
	while true; do
 		if [ "$MEMPOOL" != "false" ]; then
   			echo "Your Transaction is still in the memory pool. Please Wait...."
      			time_passing_animation
	 		MEMPOOL=$(cardano-cli conway query tx-mempool --testnet-magic 4 tx-exists $(cardano-cli conway transaction txid --tx-file action-tx.signed) | jq .exists)
	 		sleep 2
    		else
      			echo "Your Transaction as been included into a block! You can now proceed to your next governance action spam"
	 		break
    		fi
        done
}
building_gov_action           
echo "------------------------------------------"
echo "           Building Transaction"
echo "------------------------------------------"
sleep 0.2

        # Build the Transaction
        cardano-cli conway transaction build \
        --testnet-magic 4 \
        --tx-in "$(cardano-cli query utxo --address $(cat payment.addr) --testnet-magic 4 --out-file /dev/stdout | jq -r 'keys[0]')" \
        --change-address $(cat payment.addr) \
        $(cat action-create/txvar.txt) \
        --witness-override 2 \
        --out-file action-tx.raw
        
# Remove the action index options file        
rm -rf action-create 2>/dev/null
  
echo "           Signing Transaction"
echo "------------------------------------------"
sleep 0.2

        # Sign the transaction
        cardano-cli transaction sign --tx-body-file action-tx.raw \
        --signing-key-file stake.skey \
        --signing-key-file payment.skey \
        --testnet-magic 4 \
        --out-file action-tx.signed

echo "      Submiting Transaction On-Chain"
echo "------------------------------------------"
sleep 0.2

        # Submit the Transaction
        cardano-cli transaction submit \
        --testnet-magic 4 \
        --tx-file action-tx.signed > my_outputs.txt 2>&1

 	# Add the governance action to a sharable list
  	if [ "$(cat my_outputs.txt)" == "Transaction successfully submitted." ]; then
   	  cardano-cli conway transaction txid \
   	  --tx-file action-tx.signed >> actionsID.txt
      	  echo "Governance action ID as been added to actionsID.txt file."
	  echo "Share actionsID.txt with the others when you're done."
   	  echo "Governance action submition complete"
      	else
          echo "Couldn't add the governance action ID to actionID.txt file because of a transaction error."
	  echo "Please tell Mike that he F%/?ed up."
    	  echo "Governance action submition failed, see my_outputs.txt file for error logs."
          exit 0
	fi
verify_mem_pool

unset INDEXNO
unset AMOUNT
