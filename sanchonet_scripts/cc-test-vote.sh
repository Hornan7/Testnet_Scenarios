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
           50)
                VOTE=${INDEX_50}
                ;;
           49)
                VOTE=${INDEX_49}
                ;;
           48)
                VOTE=${INDEX_48}
                ;;
           47)
                VOTE=${INDEX_47}
                ;;
           46)
                VOTE=${INDEX_46}
                ;;
           45)
                VOTE=${INDEX_45}
                ;;
           44)
                VOTE=${INDEX_44}
                ;;
           43)
                VOTE=${INDEX_43}
                ;;
           42)
                VOTE=${INDEX_42}
                ;;
           41)
                VOTE=${INDEX_41}
                ;;
           40)
                VOTE=${INDEX_40}
                ;;
           39)
                VOTE=${INDEX_39}
                ;;
           38)
                VOTE=${INDEX_38}
                ;;
           37)
                VOTE=${INDEX_37}
                ;;
           36)
                VOTE=${INDEX_36}
                ;;
           35)
                VOTE=${INDEX_35}
                ;;
           34)
                VOTE=${INDEX_34}
                ;;
           33)
                VOTE=${INDEX_33}
                ;;
           32)
                VOTE=${INDEX_32}
                ;;
           31)
                VOTE=${INDEX_31}
                ;;
           30)
                VOTE=${INDEX_30}
                ;;
           29)
                VOTE=${INDEX_29}
                ;;
           28)
                VOTE=${INDEX_28}
                ;;
           27)
                VOTE=${INDEX_27}
                ;;
           26)
                VOTE=${INDEX_26}
                ;;
           25)
                VOTE=${INDEX_25}
                ;;
           24)
                VOTE=${INDEX_24}
                ;;
           23)
                VOTE=${INDEX_23}
                ;;
           22)
                VOTE=${INDEX_22}
                ;;
           21)
                VOTE=${INDEX_21}
                ;;
           20)
                VOTE=${INDEX_20}
                ;;
           19)
                VOTE=${INDEX_19}
                ;;
           18)
                VOTE=${INDEX_18}
                ;;
           17)
                VOTE=${INDEX_17}
                ;;
           16)
                VOTE=${INDEX_16}
                ;;
           15)
                VOTE=${INDEX_15}
                ;;
           14)
                VOTE=${INDEX_14}
                ;;
           13)
                VOTE=${INDEX_13}
                ;;
           12)
                VOTE=${INDEX_12}
                ;;
           11)
                VOTE=${INDEX_11}
                ;;
           10)
                VOTE=${INDEX_10}
                ;;
            9)
                VOTE=${INDEX_9}
                ;;
            8)
                VOTE=${INDEX_8}
                ;;
            7)
                VOTE=${INDEX_7}
                ;;
            6)
                VOTE=${INDEX_6}
                ;;
            5)
                VOTE=${INDEX_5}
                ;;
            4)
                VOTE=${INDEX_4}
                ;;
            3)
                VOTE=${INDEX_3}
                ;;
            2)
                VOTE=${INDEX_2}
                ;;
            1)
                VOTE=${INDEX_1}
                ;;
            0)
                VOTE=${INDEX_0}
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
