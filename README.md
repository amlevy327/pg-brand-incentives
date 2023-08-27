# pg-brand-incentives

## Overview

Procter & Gamble
Brand Incentives using Smart Contracts.
🔴 The Choice: Colgate or Crest.

Buy Crest instead of my usual Colgate.
Fiance: Who switches brands? She's right.
Why not incentivize brand switching?

🖥️ Why Blockchain: Catalyze Brand-Hopping.

Imagine cross-brand, cross-product incentives.
Buy Crest 3 times. Receive Tide coupon.
Buy Tide 3 times. Receive Bounty coupon.

🔗 The Link: Smart Contracts.

P&G deploys 1 contract per brand. All linked.
Customers purchase. P&G updates status.
Accumulated actions auto mint NFT coupons.

🟢 The Outcome: A Symphony of Savings

🔍 Brands intertwined, loyalty blooms.
⭐️ Traverse new products, unlock deals.
💰 Customers save, P&G grows base.

### Step by step:
1. P&G deploys one smart contract per brand (Crest, Tide, Bounty)
2. At each purchase, P&G updates wallet status on smart contract
3. When promo criteria hit (every 3 purchases), promo NFT minted automatically!

## Play around yourself!

### Mumbai testnet smart contracts:
- Crest: [0x27aEF732a9441f152Cd05535ceB39839651e311D](https://mumbai.polygonscan.com/address/0x27aEF732a9441f152Cd05535ceB39839651e311D)
- Tide: [0x3dcA78F94Ef11ae061Fc5C1743FFF28D7e187404](https://mumbai.polygonscan.com/address/0x3dcA78F94Ef11ae061Fc5C1743FFF28D7e187404)
- Bounty: [0xF90DEe78e4d24a0CD3845A7FA99c6d797d1e435A](https://mumbai.polygonscan.com/address/0xF90DEe78e4d24a0CD3845A7FA99c6d797d1e435A)

### How to interact through PolygonScan
1. Obtain Mumbai MATIC. [FAUCET](https://faucet.polygon.technology/).
#### Buy 3 Crest to get Tide promo NFT
2. Add 3 Crest purchases. Use #1 addPurchase 3 times. Inputs: wallet_ = your wallet. [WRITE CONTRACT](https://mumbai.polygonscan.com/address/0x27aEF732a9441f152Cd05535ceB39839651e311D#writeContract).
3. Verify received promo NFT!
- Option 1: Click "View Transaction" on third transaction. Check "Tokens Transferred" field.
- Option 2: Read #1 balanceOf. Should return value of 1. [READ CONTRACT](https://mumbai.polygonscan.com/address/0x3dcA78F94Ef11ae061Fc5C1743FFF28D7e187404#readContract). 
#### Buy 3 Crest to get Tide promo NFT
4. Add 3 Tide purchases. Use #1 addPurchase 3 times. Inputs: wallet_ = your wallet. [WRITE CONTRACT](https://mumbai.polygonscan.com/address/0x3dcA78F94Ef11ae061Fc5C1743FFF28D7e187404#writeContract).
5. Verify received promo NFT!
- Option 1: Click "View Transaction" on third transaction. Check "Tokens Transferred" field.
- Option 2: Read #1 balanceOf. Should return value of 1. [READ CONTRACT](https://mumbai.polygonscan.com/address/0xF90DEe78e4d24a0CD3845A7FA99c6d797d1e435A#readContract). 