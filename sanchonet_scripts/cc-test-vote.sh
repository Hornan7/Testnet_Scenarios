#!/bin/bash

#################################################################################################################
# Modify these variables with your vote on each index number of the same Governance action ID.
# Make sure you use the same patern for each index (no space between the vote and "=" sign)
# And then run the script.

INDEX_0=yes
INDEX_1=yes
INDEX_2=no
INDEX_3=abstain
INDEX_4=
INDEX_5=
INDEX_6=
INDEX_7=
INDEX_8=
INDEX_9=
INDEX_10=
INDEX_11=
INDEX_12=
INDEX_13=
INDEX_14=
INDEX_15=
INDEX_16=
INDEX_17=
INDEX_18=
INDEX_19=
INDEX_20=
INDEX_21=
INDEX_22=
INDEX_23=
INDEX_24=
INDEX_25=
INDEX_26=
INDEX_27=
INDEX_28=
INDEX_29=
INDEX_30=
INDEX_31=
INDEX_32=
INDEX_33=
INDEX_34=
INDEX_35=
INDEX_36=
INDEX_37=
INDEX_38=
INDEX_39=
INDEX_40=
INDEX_41=
INDEX_42=
INDEX_43=
INDEX_44=
INDEX_45=
INDEX_46=
INDEX_47=
INDEX_48=
INDEX_49=

################################################################################################################
# Do not modify what is below if you run this script from your keys directory.
# Please use the sancho.network naming convention for your keys.
################################################################################################################

vote_index_query() {
	case $INDEXNO in
           49)
                if [ "$INDEX_49" != "" ]; then
                VOTE=${INDEX_49}
                else
		echo ""
		echo "No vote variables recorded for Index ${INDEXNO}, skiping to the next one."
                INDEXNO=$((INDEXNO-1))
                vote_index_query
                fi
                ;;
           48)
                if [ "$INDEX_48" != "" ]; then
                VOTE=${INDEX_48}
                else
		echo ""
                echo "No vote variables recorded for Index ${INDEXNO}, skiping to the next one."
                INDEXNO=$((INDEXNO-1))
                vote_index_query
                fi
                ;;
           47)
                if [ "$INDEX_47" != "" ]; then
                VOTE=${INDEX_47}
                else
		echo ""
                echo "No vote variables recorded for Index ${INDEXNO}, skiping to the next one."
	       	INDEXNO=$((INDEXNO-1))
                vote_index_query
                fi
                ;;
           46)
                if [ "$INDEX_46" != "" ]; then
                VOTE=${INDEX_46}
                else
                echo ""
		echo "No vote variables recorded for Index ${INDEXNO}, skiping to the next one."
	       	INDEXNO=$((INDEXNO-1))
                vote_index_query
                fi
                ;;
           45)
                if [ "$INDEX_45" != "" ]; then
                VOTE=${INDEX_45}
                else
		echo ""
                echo "No vote variables recorded for Index ${INDEXNO}, skiping to the next one."
	       	INDEXNO=$((INDEXNO-1))
                vote_index_query
                fi
                ;;
           44)
                if [ "$INDEX_44" != "" ]; then
                VOTE=${INDEX_44}
                else
		echo ""
                echo "No vote variables recorded for Index ${INDEXNO}, skiping to the next one."
	       	INDEXNO=$((INDEXNO-1))
                vote_index_query
                fi
                ;;
           43)
                if [ "$INDEX_43" != "" ]; then
                VOTE=${INDEX_43}
                else
		echo ""
                echo "No vote variables recorded for Index ${INDEXNO}, skiping to the next one."
	       	INDEXNO=$((INDEXNO-1))
                vote_index_query
                fi
                ;;
           42)
                if [ "$INDEX_42" != "" ]; then
                VOTE=${INDEX_42}
                else
		echo ""
                echo "No vote variables recorded for Index ${INDEXNO}, skiping to the next one."
	       	INDEXNO=$((INDEXNO-1))
                vote_index_query
                fi
                ;;
           41)
                if [ "$INDEX_41" != "" ]; then
                VOTE=${INDEX_41}
                else
		echo ""
                echo "No vote variables recorded for Index ${INDEXNO}, skiping to the next one."
	       	INDEXNO=$((INDEXNO-1))
                vote_index_query
                fi
                ;;
           40)
                if [ "$INDEX_40" != "" ]; then
                VOTE=${INDEX_40}
                else
		echo ""
                echo "No vote variables recorded for Index ${INDEXNO}, skiping to the next one."
                INDEXNO=$((INDEXNO-1))
                vote_index_query
                fi
                ;;
           39)
                if [ "$INDEX_39" != "" ]; then
                VOTE=${INDEX_39}
                else
		echo ""
                echo "No vote variables recorded for Index ${INDEXNO}, skiping to the next one."
                INDEXNO=$((INDEXNO-1))
                vote_index_query
                fi
                ;;
           38)
                if [ "$INDEX_38" != "" ]; then
                VOTE=${INDEX_38}
                else
		echo ""
                echo "No vote variables recorded for Index ${INDEXNO}, skiping to the next one."
                INDEXNO=$((INDEXNO-1))
                vote_index_query
                fi
                ;;
           37)
                if [ "$INDEX_37" != "" ]; then
                VOTE=${INDEX_37}
                else
		echo ""
                echo "No vote variables recorded for Index ${INDEXNO}, skiping to the next one."
                INDEXNO=$((INDEXNO-1))
                vote_index_query
                fi
                ;;
           36)
                if [ "$INDEX_36" != "" ]; then
                VOTE=${INDEX_36}
                else
		echo ""
                echo "No vote variables recorded for Index ${INDEXNO}, skiping to the next one."
                INDEXNO=$((INDEXNO-1))
                vote_index_query
                fi
                ;;
           35)
                if [ "$INDEX_35" != "" ]; then
                VOTE=${INDEX_35}
                else
		echo ""
                echo "No vote variables recorded for Index ${INDEXNO}, skiping to the next one."
                INDEXNO=$((INDEXNO-1))
                vote_index_query
                fi
                ;;
           34)
                if [ "$INDEX_34" != "" ]; then
                VOTE=${INDEX_34}
                else
		echo ""
                echo "No vote variables recorded for Index ${INDEXNO}, skiping to the next one."
                INDEXNO=$((INDEXNO-1))
                vote_index_query
                fi
                ;;
           33)
                if [ "$INDEX_33" != "" ]; then
                VOTE=${INDEX_33}
                else
		echo ""
                echo "No vote variables recorded for Index ${INDEXNO}, skiping to the next one."
                INDEXNO=$((INDEXNO-1))
                vote_index_query
                fi
                ;;
           32)
                if [ "$INDEX_32" != "" ]; then
                VOTE=${INDEX_32}
                else
		echo ""
                echo "No vote variables recorded for Index ${INDEXNO}, skiping to the next one."
                INDEXNO=$((INDEXNO-1))
                vote_index_query
                fi
                ;;
           31)
                if [ "$INDEX_31" != "" ]; then
                VOTE=${INDEX_31}
                else
		echo ""
                echo "No vote variables recorded for Index ${INDEXNO}, skiping to the next one."
                INDEXNO=$((INDEXNO-1))
                vote_index_query
                fi
                ;;
           30)
                if [ "$INDEX_30" != "" ]; then
                VOTE=${INDEX_30}
                else
		echo ""
                echo "No vote variables recorded for Index ${INDEXNO}, skiping to the next one."
                INDEXNO=$((INDEXNO-1))
                vote_index_query
                fi
                ;;
           29)
                if [ "$INDEX_29" != "" ]; then
                VOTE=${INDEX_29}
                else
		echo ""
                echo "No vote variables recorded for Index ${INDEXNO}, skiping to the next one."
                INDEXNO=$((INDEXNO-1))
                vote_index_query
                fi
                ;;
           28)
                if [ "$INDEX_28" != "" ]; then
                VOTE=${INDEX_28}
                else
		echo ""
                echo "No vote variables recorded for Index ${INDEXNO}, skiping to the next one."
                INDEXNO=$((INDEXNO-1))
                vote_index_query
                fi
                ;;
           27)
                if [ "$INDEX_27" != "" ]; then
                VOTE=${INDEX_27}
                else
		echo ""
                echo "No vote variables recorded for Index ${INDEXNO}, skiping to the next one."
                INDEXNO=$((INDEXNO-1))
                vote_index_query
                fi
                ;;
           26)
                if [ "$INDEX_26" != "" ]; then
                VOTE=${INDEX_26}
		else
		echo ""
                echo "No vote variables recorded for Index ${INDEXNO}, skiping to the next one."
                INDEXNO=$((INDEXNO-1))
                vote_index_query
                fi
                ;;
           25)
                if [ "$INDEX_25" != "" ]; then
                VOTE=${INDEX_25}
                else
		echo ""
                echo "No vote variables recorded for Index ${INDEXNO}, skiping to the next one."
                INDEXNO=$((INDEXNO-1))
                vote_index_query
                fi
                ;;
           24)
                if [ "$INDEX_24" != "" ]; then
                VOTE=${INDEX_24}
                else
		echo ""
                echo "No vote variables recorded for Index ${INDEXNO}, skiping to the next one."
                INDEXNO=$((INDEXNO-1))
                vote_index_query
                fi
                ;;
           23)
                if [ "$INDEX_23" != "" ]; then
                VOTE=${INDEX_23}
                else
		echo ""
                echo "No vote variables recorded for Index ${INDEXNO}, skiping to the next one."
                INDEXNO=$((INDEXNO-1))
                vote_index_query
                fi
                ;;
           22)
                if [ "$INDEX_22" != "" ]; then
                VOTE=${INDEX_22}
                else
		echo ""
                echo "No vote variables recorded for Index ${INDEXNO}, skiping to the next one."
                INDEXNO=$((INDEXNO-1))
                vote_index_query
                fi
                ;;
           21)
                if [ "$INDEX_21" != "" ]; then
                VOTE=${INDEX_21}
                else
		echo ""
                echo "No vote variables recorded for Index ${INDEXNO}, skiping to the next one."
                INDEXNO=$((INDEXNO-1))
                vote_index_query
                fi
                ;;
           20)
                if [ "$INDEX_20" != "" ]; then
                VOTE=${INDEX_20}
                else
		echo ""
                echo "No vote variables recorded for Index ${INDEXNO}, skiping to the next one."
                INDEXNO=$((INDEXNO-1))
                vote_index_query
                fi
                ;;
           19)
                if [ "$INDEX_19" != "" ]; then
                VOTE=${INDEX_19}
                else
		echo ""
                echo "No vote variables recorded for Index ${INDEXNO}, skiping to the next one."
                INDEXNO=$((INDEXNO-1))
                vote_index_query
                fi
                ;;
           18)
                if [ "$INDEX_18" != "" ]; then
                VOTE=${INDEX_18}
                else
		echo ""
                echo "No vote variables recorded for Index ${INDEXNO}, skiping to the next one."
                INDEXNO=$((INDEXNO-1))
                vote_index_query
                fi
                ;;
           17)
                if [ "$INDEX_17" != "" ]; then
                VOTE=${INDEX_17}
                else
		echo ""
                echo "No vote variables recorded for Index ${INDEXNO}, skiping to the next one."
                INDEXNO=$((INDEXNO-1))
                vote_index_query
                fi
                ;;
           16)
                if [ "$INDEX_16" != "" ]; then
                VOTE=${INDEX_16}
                else
		echo ""
                echo "No vote variables recorded for Index ${INDEXNO}, skiping to the next one."
                INDEXNO=$((INDEXNO-1))
                vote_index_query
                fi
                ;;
           15)
                if [ "$INDEX_15" != "" ]; then
                VOTE=${INDEX_15}
                else
		echo ""
                echo "No vote variables recorded for Index ${INDEXNO}, skiping to the next one."
                INDEXNO=$((INDEXNO-1))
                vote_index_query
                fi
                ;;
           14)
                if [ "$INDEX_14" != "" ]; then
                VOTE=${INDEX_14}
                else
		echo ""
                echo "No vote variables recorded for Index ${INDEXNO}, skiping to the next one."
                INDEXNO=$((INDEXNO-1))
                vote_index_query
                fi
                ;;
           13)
                if [ "$INDEX_13" != "" ]; then
                VOTE=${INDEX_13}
                else
		echo ""
                echo "No vote variables recorded for Index ${INDEXNO}, skiping to the next one."
                INDEXNO=$((INDEXNO-1))
                vote_index_query
                fi
                ;;
           12)
                if [ "$INDEX_12" != "" ]; then
                VOTE=${INDEX_12}
                else
		echo ""
                echo "No vote variables recorded for Index ${INDEXNO}, skiping to the next one."
                INDEXNO=$((INDEXNO-1))
                vote_index_query
                fi
                ;;
           11)
                if [ "$INDEX_11" != "" ]; then
                VOTE=${INDEX_11}
                else
		echo ""
                echo "No vote variables recorded for Index ${INDEXNO}, skiping to the next one."
                INDEXNO=$((INDEXNO-1))
                vote_index_query
                fi
                ;;
           10)
                if [ "$INDEX_10" != "" ]; then
                VOTE=${INDEX_10}
                else
		echo ""
                echo "No vote variables recorded for Index ${INDEXNO}, skiping to the next one."
                INDEXNO=$((INDEXNO-1))
                vote_index_query
                fi
                ;;
            9)
                if [ "$INDEX_9" != "" ]; then
                VOTE=${INDEX_9}
                else
		echo ""
                echo "No vote variables recorded for Index ${INDEXNO}, skiping to the next one."
                INDEXNO=$((INDEXNO-1))
                vote_index_query
                fi
                ;;
            8)
                if [ "$INDEX_8" != "" ]; then
                VOTE=${INDEX_8}
                else
		echo ""
                echo "No vote variables recorded for Index ${INDEXNO}, skiping to the next one."
                INDEXNO=$((INDEXNO-1))
                vote_index_query
                fi
                ;;
            7)
                if [ "$INDEX_7" != "" ]; then
                VOTE=${INDEX_7}
                else
		echo ""
                echo "No vote variables recorded for Index ${INDEXNO}, skiping to the next one."
                INDEXNO=$((INDEXNO-1))
                vote_index_query
                fi
                ;;
            6)
                if [ "$INDEX_6" != "" ]; then
                VOTE=${INDEX_6}
                else
		echo ""
                echo "No vote variables recorded for Index ${INDEXNO}, skiping to the next one."
                INDEXNO=$((INDEXNO-1))
                vote_index_query
                fi
                ;;
            5)
                if [ "$INDEX_5" != "" ]; then
                VOTE=${INDEX_5}
                else
		echo ""
                echo "No vote variables recorded for Index ${INDEXNO}, skiping to the next one."
                INDEXNO=$((INDEXNO-1))
                vote_index_query
                fi
                ;;
            4)
                if [ "$INDEX_4" != "" ]; then
                VOTE=${INDEX_4}
                else
		echo ""
                echo "No vote variables recorded for Index ${INDEXNO}, skiping to the next one."
                INDEXNO=$((INDEXNO-1))
                vote_index_query
                fi
                ;;
            3)
                if [ "$INDEX_3" != "" ]; then
                VOTE=${INDEX_3}
                else
		echo ""
                echo "No vote variables recorded for Index ${INDEXNO}, skiping to the next one."
                INDEXNO=$((INDEXNO-1))
                vote_index_query
                fi
                ;;
            2)
                if [ "$INDEX_2" != "" ]; then
                VOTE=${INDEX_2}
                else
		echo ""
                echo "No vote variables recorded for Index ${INDEXNO}, skiping to the next one."
                INDEXNO=$((INDEXNO-1))
                vote_index_query
                fi
                ;;
            1)
                if [ "$INDEX_1" != "" ]; then
                VOTE=${INDEX_1}
                else
		echo ""
                echo "No vote variables recorded for Index ${INDEXNO}, skiping to the next one."
                INDEXNO=$((INDEXNO-1))
                vote_index_query
                fi
                ;;
            0)
                if [ "$INDEX_0" != "" ]; then
                VOTE=${INDEX_0}
                else
		echo ""
                echo "No vote variables recorded for last Index ${INDEXNO}."
                INDEXNO=$((INDEXNO-1))
                vote_index_query
                fi
                ;;
	esac
}

building_action_vote() {
    echo "What is the governance action ID?"
    read GOVID
    sleep 0.5
    echo "What is its highest index number?"
    read INDEXNO
    sleep 0.5
    echo "------------------------------------------"
    echo "              Creating Vote"
    echo "------------------------------------------"
    sleep 0.5
    
    #create the action file directory   
    mkdir action-votes 2>/dev/null

    #create the vote files
    while true; do
            if [ "$INDEXNO" != "0" ]; then
		
		#query the vote from index
		vote_index_query

                    cardano-cli conway governance vote create \
                    --${VOTE} \
                    --governance-action-tx-id "${GOVID}" \
                    --governance-action-index "${INDEXNO}" \
                    --cc-hot-verification-key-file cc-hot.vkey \
                    --out-file action-votes/action${INDEXNO}.vote
                echo " --vote-file action-votes/action${INDEXNO}.vote" >> action-votes/txvar.txt
                echo -ne "\rPreparing vote of index number ${INDEXNO} "
                sleep 0.2
                INDEXNO=$((INDEXNO-1))
            else
                
		#query the vote from index
		vote_index_query

		    cardano-cli conway governance vote create \
                    --${VOTE} \
                    --governance-action-tx-id "${GOVID}" \
                    --governance-action-index "${INDEXNO}" \
                    --cc-hot-verification-key-file cc-hot.vkey \
                    --out-file action-votes/action${INDEXNO}.vote
                    echo -ne "\rPreparing vote of index number ${INDEXNO} "
                    echo " --vote-file action-votes/action${INDEXNO}.vote" >> action-votes/txvar.txt
                    sleep 1
                    break  
            fi
    done
}

building_action_vote           
echo ""
echo "------------------------------------------"
echo "           Building Transaction"
echo "------------------------------------------"
sleep 0.5

        #build the Transaction
        cardano-cli conway transaction build \
        --testnet-magic 4 \
        --tx-in "$(cardano-cli query utxo --address $(cat payment.addr) --testnet-magic 4 --out-file /dev/stdout | jq -r 'keys[0]')" \
        --change-address $(cat payment.addr) \
        $(cat action-votes/txvar.txt) \
        --witness-override 2 \
        --out-file vote-tx.raw
        
# Remove the action index options file        
rm action-votes/txvar.txt
  
echo "           Signing Transaction"
echo "------------------------------------------"
sleep 0.5

        #Sign the transaction
        cardano-cli transaction sign --tx-body-file vote-tx.raw \
        --signing-key-file cc-hot.skey \
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

echo "Vote complete on ${GOVID}"
