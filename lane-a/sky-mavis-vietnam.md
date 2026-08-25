---
company: "Sky Mavis"
country: "Vietnam"
sector: "Blockchain Gaming / Web3 Infrastructure"
outcome: "pivot"
year: "2022"
lane: "a"
logged_at: "2026-08-25T00:00:00Z"
sources:
  - name: "Ronin Blog — Back to Building: Ronin Security Breach Postmortem"
    url: "https://roninchain.com/blog/posts/back-to-building-ronin-security-breach-6513cc78a5edc1001b03c364"
    date: "2022-04-27"
  - name: "TNGlobal — Vietnam's Sky Mavis raises $150M led by Binance to restore Ronin Bridge funds"
    url: "https://technode.global/2022/04/07/vietnams-sky-mavis-raises-150m-funding-led-by-binance-to-restore-funds-on-the-ronin-bridge/"
    date: "2022-04-07"
  - name: "Vietcetera — Sky Mavis Bounces Back: Profit Soars, Ronin Regains Momentum"
    url: "https://vietcetera.com/en/sky-mavis-bounces-back-profit-soars-ronin-regains-momentum"
    date: "2025-03-01"
  - name: "Cointelegraph — Sky Mavis recovers $5.7M from Ronin Bridge hack"
    url: "https://cointelegraph.com/news/sky-mavis-recovers-5-7m-ronin-bridge-hack"
    date: "2024-06-07"
---

## One-liner

Ho Chi Minh City-based Sky Mavis, creator of Axie Infinity and the Ronin blockchain, suffered the largest crypto hack in history ($625 million, March 2022), raised $150 million in emergency funding within two weeks to reimburse users, then pivoted from a single-game chain to a multi-game blockchain ecosystem — ultimately returning to profitability in FY 2024.

## What happened

Sky Mavis was founded in 2018 in Ho Chi Minh City by Trung Nguyen and a small team as a blockchain gaming company. Its flagship product, Axie Infinity, became one of the defining play-to-earn games of the 2021 cycle: at its peak in late 2021, Axie had over 2.7 million daily active users — a large proportion in the Philippines and Vietnam — and the in-game economy was generating hundreds of millions of dollars in NFT trading volume per month. Sky Mavis built Ronin, a custom Ethereum sidechain, specifically to handle the transaction volume Axie Infinity generated that would have been prohibitively expensive on Ethereum mainnet.

On March 23, 2022, an attacker exploited a vulnerability in Ronin's validator set. Sky Mavis had previously — in November 2021 — allowed the Axie DAO to sign on its behalf to manage transaction load during a surge period. When that arrangement expired in December 2021, the DAO access was not revoked from the allowlist. The attacker obtained Sky Mavis's private keys and used the residual DAO access to sign fraudulent withdrawals, draining 173,600 ETH and 25.5 million USDC — worth approximately $625 million at the time. The breach went undetected for six days until a user reported being unable to withdraw funds on March 29.

The immediate response was fast: Sky Mavis reported the hack, halted the Ronin Bridge, engaged law enforcement (FBI, Norwegian intelligence), and within two weeks had raised $150 million in a funding round led by Binance — specifically earmarked to reimburse all affected users. The reimbursement was completed in full.

The pivot followed the reimbursement: Sky Mavis rebuilt Ronin's security architecture (expanded validator set from 5 to 21 nodes, added Google Cloud as a validator, rebuilt the bridge as Ronin Bridge V2), and then refocused the Ronin chain from an Axie-only blockchain to a multi-game Web3 gaming platform. By 2024, Sky Mavis reported net profit tripling to $13.4 million and revenue rising 51% to $35.2 million — the most significant financial recovery posted by any company affected by a nine-figure crypto hack.

## Key decisions / turning points

- The November 2021 "gas-free RPC" arrangement with the Axie DAO — a reasonable operational shortcut under load — was never properly cleaned up when it expired, creating the attack surface.
- The decision to reimburse 100% of affected users (rather than offering partial compensation or restructuring the loss) preserved user trust and enabled the $150M fundraise within 72 hours of the public disclosure.
- Expanding the validator set from 5 to 21 nodes eliminated the single point of failure that made the original hack possible — small enough to hack with 5 compromised keys, requiring a supermajority with 21.
- The pivot from Axie-only to multi-game infrastructure reframed Ronin as a platform play rather than a single-IP dependency — a structurally more resilient business.

## Why it matters (pattern / lesson)

Sky Mavis demonstrates the "operational shortcut residue" failure mode: a temporary security relaxation (the DAO validator access) that was tactically correct at the time but never revoked when the underlying condition changed. This pattern appears repeatedly in large-scale infrastructure hacks — the entry point is often a reasonable decision that wasn't cleaned up, not an outright security mistake. The recovery arc is equally instructive: full reimbursement at speed, transparent postmortem, architectural overhaul, and business model pivot produced a financially stronger company within two years. The pivot from single-game to multi-game chain is a model for how crypto gaming infrastructure companies can escape platform concentration risk.

## Sources
- [Ronin Blog — Back to Building: Ronin Security Breach Postmortem](https://roninchain.com/blog/posts/back-to-building-ronin-security-breach-6513cc78a5edc1001b03c364) — 2022-04-27
- [TNGlobal — Vietnam's Sky Mavis raises $150M led by Binance to restore Ronin Bridge funds](https://technode.global/2022/04/07/vietnams-sky-mavis-raises-150m-funding-led-by-binance-to-restore-funds-on-the-ronin-bridge/) — 2022-04-07
- [Vietcetera — Sky Mavis Bounces Back: Profit Soars, Ronin Regains Momentum](https://vietcetera.com/en/sky-mavis-bounces-back-profit-soars-ronin-regains-momentum) — 2025-03-01
- [Cointelegraph — Sky Mavis recovers $5.7M from Ronin Bridge hack](https://cointelegraph.com/news/sky-mavis-recovers-5-7m-ronin-bridge-hack) — 2024-06-07
