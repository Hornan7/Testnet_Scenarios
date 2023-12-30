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

| CC Member             | Hot Keys State  | Vote asked | Vote done |
|-----------------------|-----------------|------------|-----------|
| Mike Hornan (ABLE)    | `authorized`    | `Yes`      | `Yes`     |
| Johnny Kelly          | `authorized`    | `Yes`      | `Yes`     |
| Mladen (RUMOR)        | `unauthorized`  | `none`     | `none`    |
| Smaug                 | `unauthorized`  | `none`     | `none`    |
| Martin (ATADA)        | `unauthorized`  | `none`     | `none`    |
| Jonah                 | `unauthorized`  | `none`     | `none`    |
| Nicolas Lovecoach     | `authorized`    | `none`     | `none`    |
| Adam                  | `unauthorized`  | `none`     | `none`    |
| Rick McCracken (DIGI) | `authorized`    | `none`     | `none`    |
---

### Expected Results (Epoch 197)
- 2 `Yes` votes with only 4 active members considered = RATIFIED
- 2 `Yes` votes with all 9 members considered = NOTHING HAPPEN
### Result (Epoch 198)
The results were positive, the 2 `Yes` votes were not enough to reach quorum. So in conclusion, the 9 members are considered whether they are authorized or not.
### Comments
Honestly, it’s a relief. Because I would have hated the simple possibility of having, even for a moment, an authorized member of the Constitutional Committee who could single-handedly decide the outcome of a governance action. I'm glad that's not the case.

## Stage 2
Now that we know the outcome of Stage 1, I would like to determine if the Quorum should simply be reached or if it should be crossed.
To do this, we will need 3 yes votes in total and when I have the results at the next Epoch, we will move on to Stage 3. 

### Governance action 1 - Protocol Parameters Update (Epoch 194)
#### TxId: `eec0e234dd5b7e7daef5c4bfb9474025efe15d009843a2f4f01c3a40f98f2ce1#0`
### Goal: The Goal is to know if the quorum (1/3) should simply be reached or crossed

| CC Member             | Hot Keys State  | Vote asked | Vote done |
|-----------------------|-----------------|------------|-----------|
| Mike Hornan (ABLE)    | `authorized`    | `Yes`      | `Yes`     |
| Johnny Kelly          | `authorized`    | `Yes`      | `Yes`     |
| Mladen (RUMOR)        | `unauthorized`  | `none`     | `none`    |
| Smaug                 | `unauthorized`  | `none`     | `none`    |
| Martin (ATADA)        | `unauthorized`  | `none`     | `none`    |
| Jonah                 | `unauthorized`  | `none`     | `none`    |
| Nicolas Lovecoach     | `authorized`    | `none`     | `none`    |
| Adam                  | `authorized`    | `Yes`      | `Yes`     |
| Rick McCracken (DIGI) | `authorized`    | `none`     | `none`    |
---

### Expected Results (Epoch 198)
- 3 `Yes` votes with 9 CC-members if Quorum (1/3) should be reached = RATIFIED
- 3 `Yes` votes with 9 CC-members if Quorum (1/3) should be crossed = NOTHING HAPPEN
### Result (Epoch 199)
### Comments
