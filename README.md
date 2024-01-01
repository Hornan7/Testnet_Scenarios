# Constitutional Committee voting tests and outcomes

Here are some voting scenarios that I would like to be able to test with your agreement. In order for these tests to be a success, 
we must have the participation of all members of the Constitutional Committee, otherwise,it will not be possible for us to properly test all the scenarios below.
In order to more easily test the results of these votes, I will choose Governance actions requiring only the votes of the CC and DReps.
* I will contact you all individually to request your vote on these specific governance actions and inform you of the results by including them in this document, as well as the current Stage that we will be testing.
* When all the votes of the members of the Constitutional Committee are included in the ledger we will be able to compare the results against our expectations.
* Then, I will be able to trigger the results of the scenarios using a DReps that has the capacity to cross the DRep Threshold on its own.
  
# First Test
I will ask you to vote on the governance action below. Then, when the results are out, I will build the governance action of the second test.
Only 4 Constitutional Committee members of the 9 total have made their authorization certificate and can vote using their hot keys. 

## Governance action 1 - Protocol Parameters Update (Epoch 194)
#### TxId: `eec0e234dd5b7e7daef5c4bfb9474025efe15d009843a2f4f01c3a40f98f2ce1#0`
#### Goal: The Goal is to verify if the CC-members who haven't authorize their hot keys yet will be considered in the voting quorum (1/3)

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

#### Expected Results at Epoch 197
- 2 `Yes` votes with only 4 active members considered = RATIFIED
- 2 `Yes` votes with all 9 members considered = NOTHING HAPPEN
#### Result on Epoch 198
The results were positive, the 2 `Yes` votes were not enough to reach quorum. So in conclusion, the 9 members are considered whether they are authorized or not.
#### Comments:
Honestly, it’s a relief. Because I would have hated the simple possibility of having, even for a moment, an authorized member of the Constitutional Committee who could single-handedly decide the outcome of a governance action. I'm glad that's not the case.

# Second Test
Now that we know the outcome of Stage 1, I would like to determine if the Quorum should simply be reached or if it should be crossed.
To do this, we will need 3 yes votes in total and when I have the results at the next Epoch, we will move on to the third test. 

## Governance action 1 - Protocol Parameters Update (Epoch 194)
#### TxId: `eec0e234dd5b7e7daef5c4bfb9474025efe15d009843a2f4f01c3a40f98f2ce1#0`
#### Goal: The Goal is to know if the quorum (1/3) should simply be reached or crossed

| CC Member             | Hot Keys State  | Vote asked | Vote done |
|-----------------------|-----------------|------------|-----------|
| Mike Hornan (ABLE)    | `authorized`    | `Yes`      | `Yes`     |
| Johnny Kelly          | `authorized`    | `Yes`      | `Yes`     |
| Mladen (RUMOR)        | `unauthorized`  | `none`     | `none`    |
| Smaug                 | `unauthorized`  | `none`     | `none`    |
| Martin (ATADA)        | `unauthorized`  | `none`     | `none`    |
| Jonah                 | `unauthorized`  | `none`     | `none`    |
| Nicolas Lovecoach     | `authorized`    | `Yes`      | `Yes`     |
| Adam                  | `authorized`    | `none`     | `none`    |
| Rick McCracken (DIGI) | `authorized`    | `none`     | `none`    |
---

#### Expected Results atEpoch 198
- 3 `Yes` votes with 9 CC-members if Quorum (1/3) should be reached = RATIFIED
- 3 `Yes` votes with 9 CC-members if Quorum (1/3) should be crossed = NOTHING HAPPEN
#### Result on Epoch 199
Three `Yes` votes were enough to ratify the governance action. So in conclusion the Quorum must be reached but not necessarily crossed.
#### Comments:
The results of this test, although positive, lead me to see the negative aspect of having a Constitutional Committee quorum below 51%. 
This would allow a minority of CC-members to ratify governance actions at the last minute, just before the Epoch Boundary, without giving other CC-members time to vote. This could be detrimental to achieving equitable governance.

# Third Test
Now that our governance action is ratified, and therefore enacted at the next Epoch Boundary, all previous `Yes` votes will be changed to `No` votes with no limit on the number of votes. 
We will then move on to fourth test at the next Epoch when I have the results.

## Governance action 1 - Protocol Parameters Update (Epoch 194)
#### TxId: `eec0e234dd5b7e7daef5c4bfb9474025efe15d009843a2f4f01c3a40f98f2ce1#0`
#### Goal: The Goal is to know if the ratified governance action can be "countered" before its enactment on the next Epoch Boundary.

| CC Member             | Hot Keys State  | Vote asked | Vote done |
|-----------------------|-----------------|------------|-----------|
| Mike Hornan (ABLE)    | `authorized`    | `No`       | `No`      |
| Johnny Kelly          | `authorized`    | `No`       | `No`      |
| Mladen (RUMOR)        | `unauthorized`  | `No`       | `none`    |
| Smaug                 | `unauthorized`  | `none`     | `none`    |
| Martin (ATADA)        | `unauthorized`  | `none`     | `none`    |
| Jonah                 | `unauthorized`  | `No`       | `none`    |
| Nicolas Lovecoach     | `authorized`    | `No`       | `No`      |
| Adam                  | `authorized`    | `No`       | `No`      |
| Rick McCracken (DIGI) | `authorized`    | `No`       | `none`    |
---

#### Expected Results at Epoch 199
- If votes on ratified but not yet enacted governance actions are considered = NO ENACTMENT
- If votes on ratified but not yet enacted governance actions are not considered = ENACTMENT
#### Result on Epoch 200
Votes taken by the Constitutional Committee are no longer considered for a governance action after its ratification.
It will be enacted whether they change their votes or not. (These results exclude the governance action "No-confidence", which will also be tested later.)
#### Comments:
This test allowed me to notice some possibly confusing changes to the governance state: `enactState`{previous, current and next ratify state}. The next voting tests and governance action's ratification will allow me to know more about these changes.
