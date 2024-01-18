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

# The takeover of the Constitutional Committee (Summary)
Ajoute un long résumé de la prise de controle du commitée et le fait que tu l'anonce partout depuis le début, le manque d'activité du premier commitée et le désir d'accéléré le processus de test (option pour les scripts). Bref, Met de la viande.

## The original Constitutional Committee
description semblable au nouveau. avec viande.

## The new temporary "dictatorial" Constitutional Committee
- Description: The new committee is made up of three active members, each with three cold key pairs.
- TxId: [`db5f8b1b3443cae285ed857233542e7921a0a83d2508189ba06d54b968c0f5ad`](https://github.com/Hornan7/Testnet_Scenarios/blob/main/governance_actions/update-committee-209.json)
- Index: `0`
- ProposedIn: [`Epoch 209`](https://github.com/Hornan7/Testnet_Scenarios/blob/main/governance_actions/update-committee-209.json)
- RatifiedIn: `Epoch 210`
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
---

#### Expected Results <at Epoch No.> 
<`Expected result options`>
#### Result <at Epoch No.>
<`Results of the votes`>
#### Comments:
<`Additional comments`>

# Constitutional Committee voting tests and outcomes
<Resumé of the governance action and expected vote patern> 
## Governance action 1 - <Type of governance action> (Epoch <`proposedIn`>)
- TxId: <Governance Id>
- Parameter changed: <ex: `pvtHardForkInitiation` from `0.01` to `0.51`>
- The Goal: <`goal of the test`>

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
---

#### Expected Results <at Epoch No.> 
<`Expected result options`>
#### Result <at Epoch No.>
<`Results of the votes`>
#### Comments:
<`Additional comments`>

