---
Title: A first test approach of the Constitutional Committee
Status: In Progress
Category: Governance
Authors:
    - Mike Hornan <mike.hornan@able-pool.io>
    - Johnny Kelly <https://github.com/intertreeJK>
Discussions:
    - <https://discord.gg/tHYrxCtdHm>
    - <https://github.com/Hornan7/Testnet_Scenarios/issues>
    - <https://twitter.com/Hornan7>
    - <https://twitter.com/intertreeJK>
    - <https://youtube.com/playlist?list=PLWYf5eQbRdbWHysHRWSN5D6IHIEoxMl3H&si=E6KDr0tkWtRygP5K>
    - <https://youtube.com/playlist?list=PLWYf5eQbRdbWa5n21tyy8xWpTS6zjm3Mj&si=0ba7NRjx_5c2YyAT>
    - <https://forum.cardano.org/c/governance>
Created: 2023-12-23
---

## Abstract

In order to properly understand and inform the community about the coming governance mechanisms on Cardano, we will test different voting scenarios of the Constitutional Committee. For these tests to be a success, 
we must have a small and very active set of Constitutional Committee members. Otherwise, it will not be possible for us to gather all the possible scenarios outcomes in a short period of time before the release of these features on the mainnet.
* We will use [ABLE pool's Sancho-testnet](https://discord.gg/tHYrxCtdHm) discussion channel as our main communication media to request votes on these specific governance actions.
* We will then inform you of the results by including them in this document, as well as the time (in Epochs) and manner (`Yes`, `No`, `Abstain`) that we will be doing those test.
* When all the votes of the members of the Constitutional Committee will be included in the ledger we will be able to compare the results against our expectations.
* Then, I will be able to trigger the results of the scenarios using a DReps that has over 51% of the total voting stakes to cross the DRep Threshold on its own.
* We already used that power to lower the Stake Pools Thresholds to 1% in order to facilitate our testings by allowing a single stake pool to cross the threshold on its own.

The most crucial aspect of these test scenarios is therefore the real power of the `Yes`, `No`, `Abstain` vote on the ratification of a governance action by the Consitutional Committee.

# Summary of the SanchoNet "Coup d'État"
We firmly wanted to be able to test all the voting possibilities as efficiently as possible. So we submitted a no-confidence governance action on the former Committee using our Drep of 2.7 millions voting power and the vote of the ABLE stake pool to cross the two necessary threshold in order to have it ratified. This subsequently allowed us to self-elect [Mike Hornan](https://github.com/Hornan7), [Johnny Kelly](https://github.com/intertreeJK) and [Nicolas Cerny](https://github.com/thenic95) as a new constitutional committee.

> **Note**
> The IOG developers who are currently working on governance mechanisms were aware of the situation and participated in the workshops and conversations about this takeover.

## The original Constitutional Committee
The former committee was composed of 9 members in total.
- Mike Hornan (ABLE)
- Johnny Kelly
- Mladen (RUMOR)
- SMAUG
- Martin (ATADA)
- Jonah
- Nicolas Lovecoach
- Adam Rusch
- Rick McCracken (DIGI)

## The new temporary Constitutional Committee
The new committee is made up of three active members, each with three cold key pairs. All the information about the governance actions that allowed us to temporarily gain control can be found below.
- Governance action type: `Update Committee`
- TxId: [`db5f8b1b3443cae285ed857233542e7921a0a83d2508189ba06d54b968c0f5ad`](https://github.com/Hornan7/Testnet_Scenarios/blob/main/governance_actions/update-committee-209.json)
- Index: `0`
- Proposed: [`Epoch 209`](https://github.com/Hornan7/Testnet_Scenarios/blob/main/governance_actions/update-committee-209.json)
- Enactment: [`Epoch 211`](https://github.com/Hornan7/Testnet_Scenarios/blob/main/governance_state/gov-state-211.json)
- New Committee State: [`Epoch 211`](https://github.com/Hornan7/Testnet_Scenarios/blob/main/committee_state/committee-state-211.json)
- Term limit: `Epoch 400`
- Quorum: `3/9` or `0.3333333333333333`

| CC Member             | Cold-key-hash                                              | 
|-----------------------|------------------------------------------------------------|
| Johnny Kelly          | `8e60b56ece6188fbeca1bf9b8e27c20eedb66d248b18490e08c008f0` |
|                       | `48217aba81d30a6ff6fabb6aeb1ffb979918adad896b8be7c495baec` |
|                       | `865919d7c630acc68ee57fb6f0d46f8a7a34492f85594721e1834f3b` |
| Mike Hornan (ABLE)    | `d5fff827bb7847f6c42ca7f50c98467b06ba2ac7a7d653a513f514a3` |
|                       | `f8e35def4164e0edefe0a967866d1486a1c27958cdf3506c086185c7` |
|                       | `aa6be06b661821f267a0407dd60071933a86b9a635874cbe7f09c667` |
| Nicolas Lovecoach     | `3d0e7be94b166d2eab5363c6dd36e04cf3535d70e87d59876de0189c` |
|                       | `5aea32cbcde22c8ba268d692c372901aaaafca4a335ffdca828089ec` |
|                       | `d8df5290c9147dc676675ff4a7f3e86df18a3dc97914354e2dec1b5b` |

# Constitutional Committee voting tests and outcomes
Here are the Constitutional hot keys hashes that we have authorized for our tests. 
Each key hash will be assigned a key identifier in order to vote according to the configuration of our tests set up by Johnny Kelly.

| CC Member             | Key Status    | Hot-key-hash                                               | Key Identifier |
|-----------------------|---------------|------------------------------------------------------------|----------------|
| Johnny Kelly          | `authorized`  | `212f86a07149f5d19e1f841d065f9e76c6b4a76db727ae7afc2cb2e4` | `1`            |
|                       | `authorized`  | `8b8fccbc95bd9ed423be3fc0694b21dbfac736cfafdc1fb0f6eb5257` | `2`            |
|                       | `authorized`  | `677552649a2b6cad361caf41304989b1c4543233a4d6a83873b568d6` | `3`            |
| Mike Hornan (ABLE)    | `authorized`  | `178af21d50f0ce3aeddae6ad9b375ad4a7d982d48091f0b4e7e1bb31` | `4`            |
|                       | `authorized`  | `53a42debdc7ffd90085ab7fd9800b63e6d1c9ac481ba6eb7b6a844e4` | `5`            |
|                       | `authorized`  | `d080a6bf0b347d7e647357361199b77fbbdf2680c6a091e1be79b540` | `6`            |
| Nicolas Lovecoach     | `authorized`  | `a6e5df9f0c3c3c45380f7c26cd93d9d297839522e453e0f8f5983c33` | `7`            |
|                       | `authorized`  | `b41855e400020882ae44e868b341ffbad1c1b26cac70186d57387de4` | `8`            |
|                       | `authorized`  | `942d1f20306f3f4cabffac0d549af02f4d94f0963c1f06378fec2e8c` | `9`            |



## First test suite
The Goal of the test is to determine all final Proposal Ratification outcomes of all combinations of Yes/No votes from Constitutional Committee Members, not accounting for explicit Abstain Votes. 
### Expected Results

**Suite 1:**

| Test no. | Vote pattern  | Expected result   |
|----------|---------------|-------------------|
Test 1     | 0 Yes, 1 No   | No Ratifcation due to Quorum not being met
Test 2     | 1 Yes, 0 No   | No Ratifcation due to Quorum not being met 
Test 3     | 0 Yes, 2 No   | No Ratifcation due to Quorum not being met 
Test 4     | 1 Yes, 1 No   | No Ratifcation due to Quorum not being met 
Test 5     | 2 Yes, 0 No   | No Ratifcation due to Quorum not being met 
Test 6     | 0 Yes, 3 No   | No Ratifcation due to Quorum being met and fewer than 51% voting Yes
Test 7     | 1 Yes, 2 No   | No Ratifcation due to Quorum being met and fewer than 51% voting Yes
Test 8     | 2 Yes, 1 No   | Confirmed Ratifcation due to Quorum being met and more than 51% voting Yes
Test 9     | 3 Yes, 0 No   | Confirmed Ratifcation due to Quorum being met and more than 51% voting Yes
Test 10    | 0 Yes, 4 No   | No Ratifcation due to Quorum being met and fewer than 51% voting Yes
Test 11    | 1 Yes, 3 No   | No Ratifcation due to Quorum being met and fewer than 51% voting Yes
Test 12    | 2 Yes, 2 No   | No Ratifcation due to Quorum being met and fewer than 51% voting Yes
Test 13    | 3 Yes, 1 No   | Confirmed Ratifcation due to Quorum being met and more than 51% voting Yes
Test 14    | 4 Yes, 0 No   | Confirmed Ratifcation due to Quorum being met and more than 51% voting Yes
Test 15    | 0 Yes, 5 No   | No Ratifcation due to Quorum being me and fewer than 51% voting Yes
Test 16    | 1 Yes, 4 No   | No Ratifcation due to Quorum being met and fewer than 51% voting Yes
Test 17    | 2 Yes, 3 No   | No Ratifcation due to Quorum being met and fewer than 51% voting Yes
Test 18    | 3 Yes, 2 No   | Confirmed Ratifcation due to Quorum being met and more than 51% voting Yes
Test 19    | 4 Yes, 1 No   | Confirmed Ratifcation due to Quorum being met and more than 51% voting Yes
Test 20    | 5 Yes, 0 No   | Confirmed Ratifcation due to Quorum being met and more than 51% voting Yes
Test 21    | 0 Yes, 6 No   | No Ratifcation due to Quorum being met and fewer than 51% voting Yes
Test 22    | 1 Yes, 5 No   | No Ratifcation due to Quorum being met and fewer than 51% voting Yes
Test 23    | 2 Yes, 4 No   | No Ratifcation due to Quorum being met and fewer than 51% voting Yes
Test 24    | 3 Yes, 3 No   | No Ratifcation due to Quorum being met and fewer than 51% voting Yes
Test 25    | 4 Yes, 2 No   | Confirmed Ratifcation due to Quorum being met and more than 51% voting Yes
Test 26    | 5 Yes, 1 No   | Confirmed Ratifcation due to Quorum being met and more than 51% voting Yes
Test 27    | 6 Yes, 0 No   | Confirmed Ratifcation due to Quorum being met and more than 51% voting Yes
Test 28    | 0 Yes, 7 No   | No Ratifcation due to Quorum being met and fewer than 51% voting Yes
Test 29    | 1 Yes, 6 No   | No Ratifcation due to Quorum being met and fewer than 51% voting Yes
Test 30    | 2 Yes, 5 No   | No Ratifcation due to Quorum being met and fewer than 51% voting Yes
Test 31    | 3 Yes, 4 No   | No Ratifcation due to Quorum being met and fewer than 51% voting Yes
Test 32    | 4 Yes, 3 No   | Confirmed Ratifcation due to Quorum being met and more than 51% voting Yes
Test 33    | 5 Yes, 2 No   | Confirmed Ratifcation due to Quorum being met and more than 51% voting Yes
Test 34    | 6 Yes, 1 No   | Confirmed Ratifcation due to Quorum being met and more than 51% voting Yes
Test 35    | 7 Yes, 0 No   | Confirmed Ratifcation due to Quorum being met and more than 51% voting Yes
Test 36    | 0 Yes, 8 No   | No Ratifcation due to Quorum being met and fewer than 51% voting Yes
Test 37    | 1 Yes, 7 No   | No Ratifcation due to Quorum being met and fewer than 51% voting Yes
Test 38    | 2 Yes, 6 No   | No Ratifcation due to Quorum being met and fewer than 51% voting Yes
Test 39    | 3 Yes, 5 No   | No Ratifcation due to Quorum being met and fewer than 51% voting Yes
Test 40    | 4 Yes, 4 No   | No Ratifcation due to Quorum being met and fewer than 51% voting Yes
Test 41    | 5 Yes, 3 No   | Confirmed Ratifcation due to Quorum being met and more than 51% voting Yes
Test 42    | 6 Yes, 2 No   | Confirmed Ratifcation due to Quorum being met and more than 51% voting Yes
Test 43    | 7 Yes, 1 No   | Confirmed Ratifcation due to Quorum being met and more than 51% voting Yes
Test 44    | 8 Yes, 0 No   | Confirmed Ratifcation due to Quorum being met and more than 51% voting Yes
Test 45    | 0 Yes, 9 No   | No Ratifcation due to Quorum being met and fewer than 51% voting Yes
Test 46    | 1 Yes, 8 No   | No Ratifcation due to Quorum being met and fewer than 51% voting Yes
Test 47    | 2 Yes, 7 No   | No Ratifcation due to Quorum being met and fewer than 51% voting Yes
Test 48    | 3 Yes, 6 No   | No Ratifcation due to Quorum being met and fewer than 51% voting Yes
Test 49    | 4 Yes, 5 No   | No Ratifcation due to Quorum being met and fewer than 51% voting Yes
Test 50    | 5 Yes, 4 No   | Confirmed Ratifcation due to Quorum being met and more than 51% voting Yes
Test 51    | 6 Yes, 3 No   | Confirmed Ratifcation due to Quorum being met and more than 51% voting Yes
Test 52    | 7 Yes, 2 No   | Confirmed Ratifcation due to Quorum being met and more than 51% voting Yes
Test 53    | 8 Yes, 1 No   | Confirmed Ratifcation due to Quorum being met and more than 51% voting Yes
Test 54    | 9 Yes, 0 No   | Confirmed Ratifcation due to Quorum being met and more than 51% voting Yes

### Governance Actions
- Governance action type: `treasury withdrawal`
- TxId: `04577af6d8751e0a449c0b3088f036fb8a8f0a7fb030674c22bc73e301dec99a`
- Highest index number: `0`

| Index variables                    | key 1     |  key 2     | key 3     | key 4     | key 5     | key 6     | key 7     | key 8     | key 9     |
|------------------------------------|-----------|------------|-----------|-----------|-----------|-----------|-----------|-----------|-----------|
| INDEX_0 (Test 1)                   | `No`      | ``         | ``        | ``        | ``        | ``        | ``        | ``        | ``        |
---
- Governance action type: `treasury withdrawal`
- TxId: `239e5eab9d7b4a20341ada7adb18ccdcbcdc44b7ed29ce1c9b8783e2a4931ff8`
- Highest index number: `0`

| Index variables                    | key 1     |  key 2     | key 3     | key 4     | key 5     | key 6     | key 7     | key 8     | key 9     |
|------------------------------------|-----------|------------|-----------|-----------|-----------|-----------|-----------|-----------|-----------|
| INDEX_0 (Test 2)                   | `Yes`     | ``         | ``        | ``        | ``        | ``        | ``        | ``        | ``        |
---
- Governance action type: `treasury withdrawal`
- TxId: `f902a03b03fb2bcd7ed26d10df846f190ba7ffc77c17f8398bef9cf412c25db7`
- Highest index number: `49`

| Index variables                    | key 1     |  key 2     | key 3     | key 4     | key 5     | key 6     | key 7     | key 8     | key 9     |
|------------------------------------|-----------|------------|-----------|-----------|-----------|-----------|-----------|-----------|-----------|
| INDEX_0 (Test 3)                   | --        | --         | ``        | `No`      | `No`      | ``        | ``        | ``        | ``        |
| INDEX_1 (Test 4)                   | `Yes`     | `No`       | ``        | ``        | ``        | ``        | ``        | ``        | ``        |
| INDEX_2 (Test 5)                   | `Yes`     | `Yes`      | ``        | ``        | ``        | ``        | ``        | ``        | ``        |
| INDEX_3 (Test 6)                   | `No`      | `No`       | `No`      | ``        | ``        | ``        | ``        | ``        | ``        |
| INDEX_4 (Test 7)                   | `Yes`     | `No`       | `No`      | ``        | ``        | ``        | ``        | ``        | ``        |
| INDEX_5 (Test 8)                   | `Yes`     | `Yes`      | `No`      | ``        | ``        | ``        | ``        | ``        | ``        |
| INDEX_6 (Test 9)                   | `Yes`     | `Yes`      | `Yes`     | ``        | ``        | ``        | ``        | ``        | ``        |
| INDEX_7 (Test 10)                  | `No`      | `No`       | `No`      | `No`      | ``        | ``        | ``        | ``        | ``        |
| INDEX_8 (Test 11)                  | `Yes`     | `No`       | `No`      | `No`      | ``        | ``        | ``        | ``        | ``        |
| INDEX_9 (Test 12)                  | `Yes`     | `Yes`      | `No`      | `No`      | ``        | ``        | ``        | ``        | ``        |
| INDEX_10 (Test 13)                 | `Yes`     | `Yes`      | `Yes`     | `No`      | ``        | ``        | ``        | ``        | ``        |
| INDEX_11 (Test 14)                 | `Yes`     | `Yes`      | `Yes`     | `Yes`     | ``        | ``        | ``        | ``        | ``        |
| INDEX_12 (Test 15)                 | `No`      | `No`       | `No`      | `No`      | `No`      | ``        | ``        | ``        | ``        |
| INDEX_13 (Test 16)                 | `yes`     | `No`       | `No`      | `No`      | `No`      | ``        | ``        | ``        | ``        |
| INDEX_14 (Test 17)                 | `Yes`     | `Yes`      | `No`      | `No`      | `No`      | ``        | ``        | ``        | ``        |
| INDEX_15 (Test 18)                 | `Yes`     | `Yes`      | `Yes`     | `No`      | `No`      | ``        | ``        | ``        | ``        |
| INDEX_16 (Test 19)                 | `Yes`     | `Yes`      | `Yes`     | `Yes`     | `No`      | ``        | ``        | ``        | ``        |
| INDEX_17 (Test 20)                 | `Yes`     | `Yes`      | `Yes`     | `Yes`     | `Yes`     | ``        | ``        | ``        | ``        |
| INDEX_18 (Test 21)                 | `No`      | `No`       | `No`      | `No`      | `No`      | `No`      | ``        | ``        | ``        |
| INDEX_19 (Test 22)                 | `yes`     | `No`       | `No`      | `No`      | `No`      | `No`      | ``        | ``        | ``        |
| INDEX_20 (Test 23)                 | `Yes`     | `Yes`      | `No`      | `No`      | `No`      | `No`      | ``        | ``        | ``        |
| INDEX_21 (Test 24)                 | `Yes`     | `Yes`      | `Yes`     | `No`      | `No`      | `No`      | ``        | ``        | ``        |
| INDEX_22 (Test 25)                 | `Yes`     | `Yes`      | `Yes`     | `Yes`     | `No`      | `No`      | ``        | ``        | ``        |
| INDEX_23 (Test 26)                 | `Yes`     | `Yes`      | `Yes`     | `Yes`     | `Yes`     | `No`      | ``        | ``        | ``        |
| INDEX_24 (Test 27)                 | `Yes`     | `Yes`      | `Yes`     | `Yes`     | `Yes`     | `Yes`     | ``        | ``        | ``        |
| INDEX_25 (Test 28)                 | `No`      | `No`       | `No`      | `No`      | `No`      | `No`      | `No`      | ``        | ``        |
| INDEX_26 (Test 29)                 | `Yes`     | `No`       | `No`      | `No`      | `No`      | `No`      | `No`      | ``        | ``        |
| INDEX_27 (Test 30)                 | `Yes`     | `Yes`      | `No`      | `No`      | `No`      | `No`      | `No`      | ``        | ``        |
| INDEX_28 (Test 31)                 | `Yes`     | `Yes`      | `Yes`     | `No`      | `No`      | `No`      | `No`      | ``        | ``        |
| INDEX_29 (Test 32)                 | `Yes`     | `Yes`      | `Yes`     | `Yes`     | `No`      | `No`      | `No`      | ``        | ``        |
| INDEX_30 (Test 33)                 | `Yes`     | `Yes`      | `Yes`     | `Yes`     | `Yes`     | `No`      | `No`      | ``        | ``        |
| INDEX_31 (Test 34)                 | `Yes`     | `Yes`      | `Yes`     | `Yes`     | `Yes`     | `Yes`     | `No`      | ``        | ``        |
| INDEX_32 (Test 35)                 | `Yes`     | `Yes`      | `Yes`     | `Yes`     | `Yes`     | `Yes`     | `Yes`     | ``        | ``        |
| INDEX_33 (Test 36)                 | `No`      | `No`       | `No`      | `No`      | `No`      | `No`      | `No`      | `No`      | ``        |
| INDEX_34 (Test 37)                 | `Yes`     | `No`       | `No`      | `No`      | `No`      | `No`      | `No`      | `No`      | ``        |
| INDEX_35 (Test 38)                 | `Yes`     | `Yes`      | `No`      | `No`      | `No`      | `No`      | `No`      | `No`      | ``        |
| INDEX_36 (Test 39)                 | `Yes`     | `Yes`      | `Yes`     | `No`      | `No`      | `No`      | `No`      | `No`      | ``        |
| INDEX_37 (Test 40)                 | `Yes`     | `Yes`      | `Yes`     | `Yes`     | `No`      | `No`      | `No`      | `No`      | ``        |
| INDEX_38 (Test 41)                 | `Yes`     | `Yes`      | `Yes`     | `Yes`     | `Yes`     | `No`      | `No`      | `No`      | ``        |
| INDEX_39 (Test 42)                 | `Yes`     | `Yes`      | `Yes`     | `Yes`     | `Yes`     | `Yes`     | `No`      | `No`      | ``        |
| INDEX_40 (Test 43)                 | `Yes`     | `Yes`      | `Yes`     | `Yes`     | `Yes`     | `Yes`     | `Yes`     | `No`      | ``        |
| INDEX_41 (Test 44)                 | `Yes`     | `Yes`      | `Yes`     | `Yes`     | `Yes`     | `Yes`     | `Yes`     | `Yes`     | ``        |
| INDEX_42 (Test 45)                 | `No`      | `No`       | `No`      | `No`      | `No`      | `No`      | `No`      | `No`      | `No`      |
| INDEX_43 (Test 46)                 | `Yes`     | `No`       | `No`      | `No`      | `No`      | `No`      | `No`      | `No`      | `No`      |
| INDEX_44 (Test 47)                 | `Yes`     | `Yes`      | `No`      | `No`      | `No`      | `No`      | `No`      | `No`      | `No`      |
| INDEX_45 (Test 48)                 | `Yes`     | `Yes`      | `Yes`     | `No`      | `No`      | `No`      | `No`      | `No`      | `No`      |
| INDEX_46 (Test 49)                 | `Yes`     | `Yes`      | `Yes`     | `Yes`     | `No`      | `No`      | `No`      | `No`      | `No`      |
| INDEX_47 (Test 50)                 | `Yes`     | `Yes`      | `Yes`     | `Yes`     | `Yes`     | `No`      | `No`      | `No`      | `No`      |
| INDEX_48 (Test 51)                 | `Yes`     | `Yes`      | `Yes`     | `Yes`     | `Yes`     | `Yes`     | `No`      | `No`      | `No`      |
| INDEX_49 (Test 52)                 | `Yes`     | `Yes`      | `Yes`     | `Yes`     | `Yes`     | `Yes`     | `Yes`     | `No`      | `No`      |
---
- Governance action type: `treasury withdrawal`
- TxId: `fc921d974f6fe0fee05e6cf5147320d5b3341ddb0fa89b2507bbc43b1b6b4e92`
- Highest index number: `1`

| Index variables                    | key 1     |  key 2     | key 3     | key 4     | key 5     | key 6     | key 7     | key 8     | key 9     |
|------------------------------------|-----------|------------|-----------|-----------|-----------|-----------|-----------|-----------|-----------|
| INDEX_0 (Test 53)                  | `Yes`     | `Yes`      | `Yes`     | `Yes`     | `Yes`     | `Yes`     | `Yes`     | `Yes`     | `No`      |
| INDEX_1 (Test 54)                  | `Yes`     | `Yes`      | `Yes`     | `Yes`     | `Yes`     | `Yes`     | `Yes`     | `Yes`     | `Yes`     |
---


### Result <at Epoch No.>

**Suite 1:**

| Test no. | Final result   | Matched expected?   |
|----------|----------------|---------------------|
Test 1     | 
Test 2     |  
Test 3     |   
Test 4     | 
Test 5     |  
Test 6     | 
Test 7     | 
Test 8     | 
Test 9     | 
Test 10    | 
Test 11    | 
Test 12    | 
Test 13    | 
Test 14    | 
Test 15    | 
Test 16    | 
Test 17    | 
Test 18    | 
Test 19    | 
Test 20    | 
Test 21    | 
Test 22    | 
Test 23    | 
Test 24    | 
Test 25    | 
Test 26    | 
Test 27    | 
Test 28    | 
Test 29    | 
Test 30    | 
Test 31    | 
Test 32    | 
Test 33    | 
Test 34    | 
Test 35    | 
Test 36    | 
Test 37    | 
Test 38    | 
Test 39    | 
Test 40    | 
Test 41    | 
Test 42    | 
Test 43    | 
Test 44    | 
Test 45    | 
Test 47    | 
Test 48    | 
Test 49    | 
Test 50    | 
Test 51    | 
Test 52    | 
Test 53    | 
Test 54    | 

### Comments:
<`Additional comments`>


## Second test suite
The Goal of the test is to determine all final Proposal Ratification outcomes of various **important** combinations of Yes Votes and Abstain Positions from Constitutional Committee Members.
### Expected Results

**Suite 2:**

| Test no. | Vote pattern  | Expected result   |
|----------|---------------|-------------------|
Test 1     | 1 Yes, 1 Abstain   | No Ratifcation due to revised Quorum requirement, caused by explicit Abstain Positions, not being met
Test 2     | 1 Yes, 2 Abstain   | No Ratifcation due to revised Quorum requirement, caused by explicit Abstain Positions, not being met
Test 3     | 1 Yes, 3 Abstain   | No Ratifcation due to revised Quorum requirement, caused by explicit Abstain Positions, not being met
Test 4     | 1 Yes, 4 Abstain   | No Ratifcation due to revised Quorum requirement, caused by explicit Abstain Positions, not being met
Test 5     | 1 Yes, 5 Abstain   | No Ratifcation due to revised Quorum requirement, caused by explicit Abstain Positions, not being met 
Test 6     | 1 Yes, 6 Abstain   | Confirmed Ratifcation due to revised Quorum requirement, caused by explicit Abstain Positions, being met and more than 51% voting Yes
Test 7     | 1 Yes, 7 Abstain   | Confirmed Ratifcation due to revised Quorum requirement, caused by explicit Abstain Positions, being met and more than 51% voting Yes
Test 8     | 1 Yes, 8 Abstain   | Confirmed Ratifcation due to revised Quorum requirement, caused by explicit Abstain Positions, being met and more than 51% voting Yes
Test 9     | 2 Yes, 1 Abstain   | No Ratifcation due to revised Quorum requirement, caused by explicit Abstain Positions, not being met 
Test 10    | 2 Yes, 2 Abstain   | No Ratifcation due to revised Quorum requirement, caused by explicit Abstain Positions, not being met 
Test 11    | 2 Yes, 3 Abstain   | Confirmed Ratifcation due to revised Quorum requirement, caused by explicit Abstain Positions, being met and more than 51% voting Yes
Test 12    | 2 Yes, 4 Abstain   | Confirmed Ratifcation due to revised Quorum requirement, caused by explicit Abstain Positions, being met and more than 51% voting Yes
Test 13    | 2 Yes, 5 Abstain   | Confirmed Ratifcation due to revised Quorum requirement, caused by explicit Abstain Positions, being met and more than 51% voting Yes
Test 14    | 2 Yes, 6 Abstain   | Confirmed Ratifcation due to revised Quorum requirement, caused by explicit Abstain Positions, being met and more than 51% voting Yes
Test 15    | 2 Yes, 7 Abstain   | Confirmed Ratifcation due to revised Quorum requirement, caused by explicit Abstain Positions, being met and more than 51% voting Yes
Test 16    | 3 Yes, 1 Abstain   | Confirmed Ratifcation due to revised Quorum requirement, caused by explicit Abstain Positions, being met and more than 51% voting Yes

NB: Testing ends here as 3 Yes votes alone should pass the original full 9 CC Member Quorum requirements of 3 of 9 even with **any** variation of Abstain Positions accompanying. Same applies for any amount of Yes Votes by CC Members **above** 3 total.

### Governance Actions
- Governance action type: `treasury withdrawal`
- TxId: `<TBD>`
- Highest index number: `x`

| Index variables                    | key 1     |  key 2     | key 3     | key 4     | key 5     | key 6     | key 7     | key 8     | key 9     |
|------------------------------------|-----------|------------|-----------|-----------|-----------|-----------|-----------|-----------|-----------|
| INDEX_0 (Test 1)                   | `Yes`     | `Abstain`  | ``        | ``        | ``        | ``        | ``        | ``        | ``        |
| INDEX_1 (Test 2)                   | `Yes`     | `Abstain`  | `Abstain` | ``        | ``        | ``        | ``        | ``        | ``        |
| INDEX_2 (Test 3)                   | `Yes`     | `Abstain`  | `Abstain` | `Abstain` | ``        | ``        | ``        | ``        | ``        |
| INDEX_3 (Test 4)                   | `Yes`     | `Abstain`  | `Abstain` | `Abstain` | `Abstain` | ``        | ``        | ``        | ``        |
| INDEX_4 (Test 5)                   | `Yes`     | `Abstain`  | `Abstain` | `Abstain` | `Abstain` | `Abstain` | ``        | ``        | ``        |
| INDEX_5 (Test 6)                   | `Yes`     | `Abstain`  | `Abstain` | `Abstain` | `Abstain` | `Abstain` | `Abstain` | ``        | ``        |
| INDEX_6 (Test 7)                   | `Yes`     | `Abstain`  | `Abstain` | `Abstain` | `Abstain` | `Abstain` | `Abstain` | `Abstain` | ``        |
| INDEX_7 (Test 8)                   | `Yes`     | `Abstain`  | `Abstain` | `Abstain` | `Abstain` | `Abstain` | `Abstain` | `Abstain` | `Abstain` |
| INDEX_8 (Test 9)                   | `Yes`     | `Yes`      | `Abstain` | ``        | ``        | ``        | ``        | ``        | ``        |
| INDEX_9 (Test 10)                  | `Yes`     | `Yes`      | `Abstain` | `Abstain` | ``        | ``        | ``        | ``        | ``        |
| INDEX_10 (Test 11)                 | `Yes`     | `Yes`      | `Abstain` | `Abstain` | `Abstain` | ``        | ``        | ``        | ``        |
| INDEX_11 (Test 12)                 | `Yes`     | `Yes`      | `Abstain` | `Abstain` | `Abstain` | `Abstain` | ``        | ``        | ``        |
| INDEX_12 (Test 13)                 | `Yes`     | `Yes`      | `Abstain` | `Abstain` | `Abstain` | `Abstain` | `Abstain` | ``        | ``        |
| INDEX_13 (Test 14)                 | `yes`     | `Yes`      | `Abstain` | `Abstain` | `Abstain` | `Abstain` | `Abstain` | `Abstain` | ``        |
| INDEX_14 (Test 15)                 | `Yes`     | `Yes`      | `Abstain` | `Abstain` | `Abstain` | `Abstain` | `Abstain` | `Abstain` | `Abstain` |
| INDEX_15 (Test 16)                 | `Yes`     | `Yes`      | `Yes`     | `Abstain` | ``        | ``        | ``        | ``        | ``        |
---

### Result <at Epoch No.>

**Suite 2:**

| Test no. | Final result   | Matched expected?   |
|----------|----------------|---------------------|
Test 1     | 
Test 2     |  
Test 3     |   
Test 4     | 
Test 5     |  
Test 6     | 
Test 7     | 
Test 8     | 
Test 9     | 
Test 10    | 
Test 11    | 
Test 12    | 
Test 13    | 
Test 14    | 
Test 15    | 
Test 16    | 

### Comments:
<`Additional comments`>




