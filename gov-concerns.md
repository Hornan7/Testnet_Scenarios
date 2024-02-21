---
Title: Concerns and recomendations following the test scenarios on SanchoNet
Category: Governance
Authors:
    - Mike Hornan <mike.hornan@able-pool.io>
Discussions:
    - <https://discord.gg/tHYrxCtdHm>
    - <https://youtube.com/playlist?list=PLWYf5eQbRdbWHysHRWSN5D6IHIEoxMl3H&si=kJ4P8HuERWiQbCli>
    - <https://twitter.com/Hornan7>
Created: 2024-02-21
---
# Concerns and recomendations following the test scenarios on SanchoNet

## Abstract

Following the results of our tests on SanchoNet, we were able to better understand the governance mechanisms and their operation. 
We were happy to discover some bugs which could be fixed immediately in the following versions of the node and the CLI. 
However, I personally have some concerns about certain conclusions regarding the amount of the governance actions deposit and also 
regarding the duration of the [Bootstrapping Phase](https://github.com/Hornan7/CIPs/tree/master/CIP-1694#bootstrapping-phase). In this document, 
I will describe these concerns in detail and outline my recommendations in order to mitigate possible problems that could, 
in my opinion, be detrimental to the proper functioning of the Cardano blockchain and its governance system.

## The governance action deposit 

As you probably already know, when we carried out our tests, I had to design some scripts to speed up the process of submitting governance 
actions as well as voting. This allowed us to complete our tests in a much shorter time frame than if we had had to submit them all one by one.

Which brings me to my concerns. Currently on our testing ground, submitting a governance action costs 1000 tADA. This allowed us to submit 
nearly a hundred governance actions in a matter of seconds. This practice, although very useful on the testnet, could cause some inconvenience 
on the mainnet. Given the amount of this deposit this could open the door to network attacks and in the medium short term, lead to the 
congestion of the chain and unnecessary raise of the computation required to calculate the outcome of the votes during the Epoch boundaries.

However, it is too early at the moment to state with certainty the ideal deposit amount for governance actions. But I can say without pretension
that 10,000 ADA would in my opinion be an acceptable minimum (perhaps even more). Amount which could then be modified downwards or upwards depending
on the measurement of activity on the mainnet during the bootstrapping phase.

Several people agreed to support me in my testing efforts in order to carry out a targeted attack on SanchoNet in order to collect more data on 
the impact of spam from the governance system. We will make 10,000 governance action submissions from different nodes simultaneously and consecutively
until this number is reached. During this operation we will collect data during the attacks and also during the Epoch boundary following the attack.

In conclusion, I unfortunately doubt that I will have sufficient information and data to justify my concerns before submitting our recommendations 
as the Governance Protocols Parameters Working Group. Therefore, I believe it would be better to start with an amount that is slightly too high 
(if that is the case), rather than the opposite.

## The bootstrapping phase
