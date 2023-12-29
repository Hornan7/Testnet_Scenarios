# Constitutional Committee voting tests and outcomes

Here are some voting scenarios that I would like to be able to test with your agreement. In order for these tests to be a success, 
we must have the participation of all members of the Constitutional Committee, otherwise,it will not be possible for us to properly test all the scenarios below.
In order to more easily test the results of these votes, I will choose Governance actions requiring only the votes of the CC and DReps.
* I will contact you all individually to request your vote on these specific governance actions and inform you of the results by including them in this document, as well as the current Stage that we will be testing.
* When all the votes of the members of the Constitutional Committee are included in the ledger we will be able to compare the results against our expectations.
* Then, I will be able to trigger the results of the scenarios using a DReps that has the capacity to cross the DRep Threshold on its own.
  
## Stage 1
I will ask you to vote on the governance action below. Then, when the results are out, I will build the governance action of Stage 2.
Only 4 CC-members of the 9 total have made their authorization certificate and can vote using their hot keys. 

### Governance action 1 - Protocol Parameters Update (Epoch 194)
#### TxId: `eec0e234dd5b7e7daef5c4bfb9474025efe15d009843a2f4f01c3a40f98f2ce1#0`
### Goal: The Goal is to verify if the CC-members who haven't authorize their hot keys yet will be considered in the voting quorum (1/3)

| CC Member             | Vote asked    | Vote done |
|-----------------------|---------------|-----------|
| Mike Hornan (ABLE)    | `yes`         | `yes`     |
| Johnny Kelly          | `yes`         | `yes`     |
| Mladen (RUMOR)        | `unauthorized`|           |
| Smaug                 | `unauthorized`|           |
| Martin (ATADA)        | `unauthorized`|           |
| Jonah                 | `unauthorized`|           |
| Nicolas Lovecoach     | `authorized`  | none      |
| Adam                  | `unauthorized`|           |
| Rick McCracken (DIGI) | `authorized`  | none      |
---

### Expected Results (Epoch 197)
- 2 yes votes with only 4 active members considered = RATIFIED
- 2 yes votes with all 9 members considered = NOTHING HAPPEN
### Result (Epoch 198)
### Comments
