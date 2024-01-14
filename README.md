---
Title: A first test approach of the Constitutional Committee
Status: In Progress
Category: Governance
Authors:
    - Mike Hornan <mike.hornan@able-pool.io>
    - Johnny Kelly <add mail or contact here>
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

# First Test
<Resumé of the governance action and expected vote patern> 
## Governance action 1 - <Type of governance action> (Epoch <`proposedIn`>)
- TxId: <Governance Id>
- Parameter changed: <ex: `pvtHardForkInitiation` from `0.01` to `0.51`>
- The Goal: <`goal of the test`>

| CC Member             | Hot Keys State  | Vote order | Vote asked | Cold-key-hash                                              |
|-----------------------|-----------------|------------|------------|------------------------------------------------------------|
| Johnny Kelly          | `unauthorized`  | `1`        | `none`     | `8e60b56ece6188fbeca1bf9b8e27c20eedb66d248b18490e08c008f0` |
|                       | `unauthorized`  | `2`        | `none`     | `48217aba81d30a6ff6fabb6aeb1ffb979918adad896b8be7c495baec` |
|                       | `unauthorized`  | `3`        | `none`     | `865919d7c630acc68ee57fb6f0d46f8a7a34492f85594721e1834f3b` |
| Mike Hornan (ABLE)    | `unauthorized`  | `4`        | `none`     |                                                            |
|                       | `unauthorized`  | `5`        | `none`     |                                                            |
|                       | `unauthorized`  | `6`        | `none`     |                                                            |
| Nicolas Lovecoach     | `unauthorized`  | `7`        | `none`     | `3d0e7be94b166d2eab5363c6dd36e04cf3535d70e87d59876de0189c` |
|                       | `unauthorized`  | `8`        | `none`     | `5aea32cbcde22c8ba268d692c372901aaaafca4a335ffdca828089ec` |
|                       | `unauthorized`  | `9`        | `none`     | `d8df5290c9147dc676675ff4a7f3e86df18a3dc97914354e2dec1b5b` |
---

#### Expected Results <at Epoch No.> 
<`Expected result options`>
#### Result <at Epoch No.>
<`Results of the votes`>
#### Comments:
<`Additional comments`>



