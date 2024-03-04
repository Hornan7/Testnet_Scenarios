# SanchoNet Scripts
Be very careful before using any of these scripts. I haven't tested them sufficiently yet and they are still very primitive and still under development.

## For SanchoNet Chaos Spam Testers
Run this command from your SanchoNet keys directory to get the governance action spam script, the batch voting script and to make them executable by your user only:
```bash
curl -O -J https://raw.githubusercontent.com/Hornan7/Testnet_Scenarios/main/sanchonet_scripts/action-create.sh
curl -O -J https://raw.githubusercontent.com/Hornan7/SanchoBatchVote/main/dRepvote.sh
sudo chmod 700 dRepvote.sh
sudo chmod 700 action-create.sh
```
### Here is a link to both scripts
If you guys want to read it before running it:

[action-create.sh](https://github.com/Hornan7/Testnet_Scenarios/blob/main/sanchonet_scripts/action-create.sh)

[dRepvote.sh](https://github.com/Hornan7/SanchoBatchVote/blob/main/dRepvote.sh)

### For those who would like to batch vote (*SanchoNet Attackers ONLY*)
First you will need to get this script as well:
```bash
curl -O -J https://raw.githubusercontent.com/Hornan7/Testnet_Scenarios/main/sanchonet_scripts/memPoolverif.sh
sudo chmod 700 memPoolverif.sh
```
Then when its done, run this command to make sure everything works properly (**dRepvote.sh and memPoolverif.sh required**)
```bash
printf '%s\n' eaeff375a24ec3172360f2fc86535f7fcf9ba224652d8c20d5e92d26e8d4551a yes yes yes \
32321ed7fa71311bdf57b0c863a8249d575fdacbbd23a12983182c4c99645870 yes yes yes \
58b04c4cf484fdcf51e880df177052cfb03bc702b549662f6ce033c06fcc5881 yes yes yes \
640ce0e33c4f9a2fe267bdc194cf73dc23827b98f8873cf496251f77b5de709b yes yes yes \
3a4198549683724d69377475d8aa1c2c422c8583873773417782c3d3ed913aa2 yes yes yes \
0c724676fda5a77be4203530dc71497889ce8a018e9359a2e6170077733dae56 yes yes yes \
fb607e8d55b14c2c61c6eabdc57ec6c8833735f5b6f3f7dd8f4a5482c699bac8 yes yes yes \
63391cb5e3045bc85324c2922d52886fdaace3e86c0961abf780c7aeb2f303a6 yes yes no | ./dRepvote.sh
./memPoolverif.sh
printf '%s\n' fb607e8d55b14c2c61c6eabdc57ec6c8833735f5b6f3f7dd8f4a5482c699bac8 yes yes no | ./dRepvote.sh
```
The command should automatically batch 400 votes in a single transaction. Then query the mempool to verify if your transaction as been included into a block and then do it again with only 50 votes the 2nd time.
If everything succesfully work, you should be ready to run the next one to vote on all 8000 governance actions and contribute into triggering some epoch boundary calculations.

### Run the command below if you get no error msg:
