# ETH4X-Scaling
On-chain scaling of ethereum with full data availability. Moving verification of transactions off-chain.

This repository contains the work on progress for implementing the idea proposed [here](https://ethresear.ch/t/on-chain-scaling-with-full-data-availability-moving-verification-of-transactions-off-chain/3847).

The main Idea is to generate batch transactions such that the base-fee of 21000 gas can be avoided by packing many transactions in a single one. The proposed idea suggest that there is no need to provide verification of every transaction if teh transaction data is avilable this task can be moved out of the network such that users will verify which transacy=tions are valid and which are not, building a merkle tree of the accounts. In theory this method will allow increasing the TPS from 25 Tx/sec to 100 tx/sec a 400% increase (**4X**)
