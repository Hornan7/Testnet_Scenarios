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
