# ⛓️ Simple On-chain SVG NFT

> Create a simple On-Chain SVG NFT! 🚀

![image](https://user-images.githubusercontent.com/5996795/165186611-b66f6c60-5e8b-41df-8900-d7863d59c611.png)

# 🏄‍♂️ Quick Start

Prerequisites: [Node (v16 LTS)](https://nodejs.org/en/download/) plus [Yarn](https://classic.yarnpkg.com/en/docs/install/) and [Git](https://git-scm.com/downloads)

> clone/fork ⛓️ Simple On-chain SVG NFT

```bash
git clone https://github.com/ldsanchez/onchain-svgnft.git
```

> install:

```bash
cd onchain-svgnft
yarn install
```

🔏 Edit your smart contract `SVGNFT.sol` in `contracts`

🖼️ Edit your svg in `img`

💼 Edit your deployment scripts in `deploy`

# Deploy it! 🛰

🔏 Add your variables `RINKEBY_RPC_URL`, `MNEMONIC`, `ETHERSCAN_API_KEY`

🚀 Run `npx hardhat deploy --network rinkeby` to deploy to your public network of choice (😅 wherever you can get ⛽️ gas)

🔬 Inspect the block explorer for the network you deployed to... make sure your contract is there.

# 📜 Contract Verification

Now you are ready to run the `npx hardhat verify --network rinkeby <CONTRACT_ADDRESS>` command to verify your contracts on etherscan 🛰

# 🚢 Ship it! 🚁

🌐 Open https://testnets.opensea.io/ connect your deployment wallet anc paste your `<CONTRACT_ADDRESS>`

# Thanks 👏🏻

To @PatrickAlphaC and his awesome tutorial https://www.youtube.com/channel/UCn-3f8tw_E1jZvhuHatROwA

To hihayk and josepmartins from https://www.boringavatars.com
