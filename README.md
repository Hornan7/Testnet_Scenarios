# Constitutional Committee voting tests and outcomes

Here are some voting scenarios that we will be testing. In order for these tests to be a success, 
we must have the participation of all members of the Constitutional Committee, otherwise,it will not be possible for us to properly test all the scenarios below.
In order to more easily test the results of these votes, we will choose Governance actions requiring only the votes of the CC and DReps.
* We will use [ABLE pool's Sancho-testnet](https://discord.gg/tHYrxCtdHm) discution channel to request your vote on these specific governance actions and inform you of the results by including them in this document,
as well as the time (in Epochs) and manner (`Yes`, `No`, `Abstain`) that we will be doing those test.
* When all the votes of the members of the Constitutional Committee are included in the ledger we will be able to compare the results against our expectations.
* Then, I will be able to trigger the results of the scenarios using a DReps that has the capacity to cross the DRep Threshold on its own.
  
# First Test
<Resumé of the governance action and expected vote patern> 
## Governance action 1 - <Type of governance action> (Epoch <`proposedIn`>)
- TxId: <Governance Id>
- Parameter changed: <ex: `pvtHardForkInitiation` from `0.01` to `0.51`>
- The Goal: <`goal of the test`>

| CC Member             | Hot Keys State  | Vote order | Vote asked | Cold-key-hash                                              |
|-----------------------|-----------------|------------|------------|------------------------------------------------------------|
| Johnny Kelly          | `authorized`    | `1`        | `Yes`      | `8e60b56ece6188fbeca1bf9b8e27c20eedb66d248b18490e08c008f0` |
|                       | `authorized`    | `2`        | `Yes`      | `48217aba81d30a6ff6fabb6aeb1ffb979918adad896b8be7c495baec` |
|                       | `unauthorized`  | `3`        | `none`     | `865919d7c630acc68ee57fb6f0d46f8a7a34492f85594721e1834f3b` |
| Mike Hornan (ABLE)    | `unauthorized`  | `4`        | `none`     | |
|                       | `unauthorized`  | `5`        | `none`     | |
|                       | `unauthorized`  | `6`        | `none`     | |
| Nicolas Lovecoach     | `authorized`    | `7`        | `none`     | `3d0e7be94b166d2eab5363c6dd36e04cf3535d70e87d59876de0189c` |
|                       | `unauthorized`  | `8`        | `none`     | `5aea32cbcde22c8ba268d692c372901aaaafca4a335ffdca828089ec` |
|                       | `authorized`    | `9`        | `none`     | `d8df5290c9147dc676675ff4a7f3e86df18a3dc97914354e2dec1b5b` |
---

#### Expected Results <at Epoch No.> 
<`Expected result options`>
#### Result <at Epoch No.>
<`Results of the votes`>
#### Comments:
<`Additional comments`>



