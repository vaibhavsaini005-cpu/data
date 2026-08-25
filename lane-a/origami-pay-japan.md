---
company: "Origami Pay"
country: "Japan"
sector: "Fintech / Mobile Payments"
outcome: "failure"
year: "2020"
lane: "a"
logged_at: "2026-08-25T00:00:00Z"
sources:
  - name: "Mercari Inc. — Origami Inc. to Join the Mercari Group (press release)"
    url: "https://about.mercari.com/en/press/news/articles/20200123_origami-2/"
    date: "2020-01-23"
  - name: "PYMNTS — Mercari Acquires Rival Marketplace App Origami"
    url: "https://www.pymnts.com/news/partnerships-acquisitions/2020/mercari-acquires-rival-marketplace-app-origami/"
    date: "2020-01-23"
  - name: "Mercari Engineering — The to-do list for terminating a payment service"
    url: "https://engineering.mercari.com/en/blog/entry/20201219-6e7ea87db8/"
    date: "2020-12-19"
---

## One-liner

Japan's first major QR-code mobile payment app, Origami Pay, was absorbed by Mercari's Merpay in early 2020 after failing to compete with PayPay and LINE Pay's massive cash-back campaigns.

## What happened

Origami Inc. was founded in 2012 by Yoshiki Yasui and launched Japan's first QR-code mobile payment service, Origami Pay, in 2016 — years before rivals such as PayPay entered the market. Despite pioneering QR payments in Japan and signing up convenience stores, restaurants, and retailers, Origami Pay could not match the scale of subsidised promotions run by SoftBank-backed PayPay (which offered up to 20% cash back) or the embedded user base of LINE Pay. By late 2019, Origami's business had deteriorated sharply. On 23 January 2020, Mercari announced it would acquire all Origami shares at zero premium (an effective distress takeover), absorbing the company into its Merpay payments unit. Origami Pay ceased all services on 30 June 2020.

## Key decisions / turning points

- **2016 first-mover advantage squandered**: Origami launched QR payments years before competitors but lacked deep pockets for user-acquisition subsidies.
- **PayPay's 10-billion-yen campaign (2018)**: PayPay's aggressive 20%-cashback promotions rapidly shifted Japanese consumers to rival apps; Origami could not match them.
- **Distress acquisition at zero premium (Jan 2020)**: Mercari's Merpay acquired all Origami shares for what was effectively a rescue takeover, valuing the pioneer at near zero.
- **Full shutdown June 2020**: Merpay ran a complex technical wind-down — terminating QR codes, settling merchant payouts, and closing financial accounts — documented in detail by Mercari Engineering.

## Why it matters (pattern / lesson)

Origami Pay is a textbook case of a first-mover losing to deep-pocketed platform entrants. In markets where payments network effects require rapid scale and cash-burning promotions, being technically first is no defence once SoftBank-scale capital enters. The engineering shutdown post-mortem is unusually transparent and has become a reference for how to responsibly wind down a fintech service.

## Sources
- [Mercari Inc. — Origami Inc. to Join the Mercari Group](https://about.mercari.com/en/press/news/articles/20200123_origami-2/) — 2020-01-23
- [PYMNTS — Mercari Acquires Rival Marketplace App Origami](https://www.pymnts.com/news/partnerships-acquisitions/2020/mercari-acquires-rival-marketplace-app-origami/) — 2020-01-23
- [Mercari Engineering — The to-do list for terminating a payment service](https://engineering.mercari.com/en/blog/entry/20201219-6e7ea87db8/) — 2020-12-19
