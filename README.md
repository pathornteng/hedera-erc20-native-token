# hedera-erc20-native-token

This repo contains the example code showing how to call Hedera native token from a solidity smart contract. The implementation is based on [HIP-218](https://hips.hedera.com/hip/hip-218), and [HIP-376](https://hips.hedera.com/hip/hip-376)

## Install

```bash
git clone git@github.com:pathornteng/hedera-erc20-native-token.git
cd hedera-erc20-native-token
npm install

```

## Run

```bash
mv .env_sample .env
vi .env
solcjs --bin ERC20.sol
node index.js
```
