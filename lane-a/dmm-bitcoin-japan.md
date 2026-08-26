---
company: "DMM Bitcoin"
country: "Japan"
sector: "Crypto Exchange / Fintech"
outcome: "failure"
year: "2024"
lane: "a"
logged_at: "2026-08-26T00:00:00Z"
sources:
  - name: "Reuters — Japan's DMM Bitcoin says $308 million worth of bitcoin stolen"
    url: "https://www.reuters.com/technology/japans-dmm-bitcoin-says-308-million-worth-bitcoin-stolen-2024-05-31/"
    date: "2024-05-31"
  - name: "Reuters — Japan's DMM Bitcoin to shut after $320 million crypto hack"
    url: "https://www.reuters.com/technology/cybersecurity/japans-dmm-bitcoin-shut-after-hack-2024-12-02/"
    date: "2024-12-02"
  - name: "NHK World — Cryptocurrency exchange DMM Bitcoin to shut down"
    url: "https://www3.nhk.or.jp/nhkworld/en/news/20241203_10/"
    date: "2024-12-03"
---

## One-liner

DMM Bitcoin, the Japan FSA-licensed cryptocurrency exchange operated by internet conglomerate DMM Group, was forced to shut down in December 2024 after North Korea's Lazarus Group stole 4,502.9 BTC (≈$308 million) in May 2024 — Japan's second-largest crypto theft on record.

## What happened

DMM Bitcoin launched in January 2018 as the cryptocurrency trading arm of DMM Group, one of Japan's largest internet conglomerates (founded 1999, known for video streaming, FX trading, and adult content). It obtained a registration license from Japan's Financial Services Agency (FSA), which had tightened crypto oversight following the 2018 Coincheck hack. Despite its large parent and regulatory standing, DMM Bitcoin operated a relatively lean platform covering major cryptocurrencies including Bitcoin, Ethereum, and XRP. On 30–31 May 2024, 4,502.9 BTC worth approximately ¥48.2 billion ($308 million) was drained from the exchange's wallets — the largest crypto theft in Japan since the Coincheck incident six years earlier. DMM Bitcoin suspended new account openings, certain withdrawals, and spot purchases. DMM Group committed to covering the full customer loss by raising ¥48.2 billion through group company loans and equity issuance, and attempted to acquire sufficient BTC to compensate users. Despite this effort, the exchange was unable to recover operationally. In September 2024, Japan's National Police Agency and U.S. FBI jointly attributed the attack to Lazarus Group, North Korea's state-sponsored hacking unit. In December 2024, DMM Bitcoin announced it was ceasing all operations and would transfer customer accounts and assets to SBI VC Trade, a subsidiary of financial group SBI Holdings, with the transition expected to complete in early 2025.

## Key decisions / turning points

- **Hot wallet exposure**: The scale of the theft (all in Bitcoin) indicated that a significant portion of holdings were in accessible (hot) wallets rather than cold storage — a custody architecture decision that FSA licensing requirements did not prevent.
- **DMM Group's ¥48.2B backstop**: The parent company's decision to fully backstop customer assets rather than invoke insolvency proceedings was critical to preventing a broader confidence crisis, but also committed enormous group resources to cover an operational security failure.
- **No recovery path**: Unlike Bitfinex (2016, $71M stolen, survived by issuing recovery tokens to users and later buying them back), DMM Bitcoin's parent ultimately concluded that rebuilding trust and infrastructure from scratch was not viable at the scale required, choosing orderly wind-down over prolonged distress.

## Why it matters (pattern / lesson)

DMM Bitcoin illustrates that large-parent backing and regulatory compliance are not substitutes for wallet security architecture. Japan's FSA had been one of the more active crypto regulators globally since 2018, yet neither licensing requirements nor the large DMM Group balance sheet prevented a state-sponsored attack from destroying the exchange. The Lazarus Group attribution makes this case particularly relevant: for crypto exchanges in visible regulated markets, sophisticated nation-state adversaries are a credible threat, not a tail risk. The contrast with Coincheck (2018) is instructive — Coincheck survived, was acquired by Monex Group, and restarted; DMM Bitcoin, despite parent-company support, chose exit, suggesting the damage to brand and operational confidence was irreparable within DMM's business context.

## Sources
- [Reuters — Japan's DMM Bitcoin says $308 million worth of bitcoin stolen](https://www.reuters.com/technology/japans-dmm-bitcoin-says-308-million-worth-bitcoin-stolen-2024-05-31/) — 2024-05-31
- [Reuters — Japan's DMM Bitcoin to shut after $320 million crypto hack](https://www.reuters.com/technology/cybersecurity/japans-dmm-bitcoin-shut-after-hack-2024-12-02/) — 2024-12-02
- [NHK World — Cryptocurrency exchange DMM Bitcoin to shut down](https://www3.nhk.or.jp/nhkworld/en/news/20241203_10/) — 2024-12-03
