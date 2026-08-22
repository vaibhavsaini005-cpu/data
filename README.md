# Global Market Intelligence Sprint (Aug 22 → Aug 26, 2026)

This repo is the shared workspace for a 3-lane research sprint, all three
lanes now cloud-automated on the same Claude account. It's how the three
lanes **coordinate** ("talk
to each other") — every run pulls this repo first to see what the other
lanes have already logged, writes its findings here, and pushes back.

Goal: build a **legitimate** (real, sourced, named-company) dataset of
business failures, pivots, and successes across countries/sectors — not
already covered by the 684-company exclusion list in this repo, and never
duplicated between lanes.

## Hard rules for every entry (this is what "legitimate" means here)

1. **Real, named company.** No composites, no fictionalized/synthetic content.
2. **At least one public, checkable source per entry**: news article, company
   blog/postmortem, founder LinkedIn/X post, regulatory filing, Crunchbase/
   PitchBook writeup, YC/accelerator retrospective, etc. Include source name,
   URL, and publish date.
3. **Not already in `excluded_companies.json`** or already logged by any
   lane in `ledger.json`.
4. **No overlap between lanes** — enforced by disjoint country assignments
   below, not by sector (sectors can repeat across countries).
5. Mix of outcome types per lane, roughly: 40% failure/shutdown, 30% pivot,
   30% success — not just success stories.
6. One markdown file per entry in the lane's folder, using the schema in
   `ENTRY_TEMPLATE.md`.

## Lane assignments (disjoint countries → zero collision by construction)

- **Lane A — East/Southeast Asia + Oceania** — Claude 1, runs automatically
  in the cloud, no device needs to be awake. Japan, South Korea, Vietnam,
  Philippines, Thailand, New Zealand, plus *new* companies from
  Indonesia/Singapore not already excluded.
- **Lane B — Africa + Middle East** — Claude 2, also runs automatically in
  the cloud, no device needs to be awake. Kenya, Ghana, Morocco, Jordan,
  Turkey, plus *new* companies from Nigeria/Egypt/UAE/Saudi Arabia not
  already excluded.
- **Lane C — Latin America + Europe** — also runs automatically in the
  cloud now (no longer depends on Codex/My Mac). Colombia, Chile, Peru,
  Poland, Romania, Portugal, Italy, Sweden, Finland, plus *new* companies
  from Argentina/Brazil not already excluded.
- **Lane D — South Asia + Eastern Europe + East Africa** — Codex on My Mac,
  run using `LANE_D_PROMPT.md`; that laptop needs to stay awake and
  plugged in. Pakistan, Bangladesh, Sri Lanka, Nepal, Ukraine, Czech
  Republic, Hungary, Bulgaria, Ethiopia, Rwanda, Tanzania, Uganda — deliberately
  new territory so Codex adds unique coverage instead of duplicating A/B/C.
- Optional extra runner: **Hiya Mac terminal**, running Lane A's own prompt
  unattended via `scripts/run-lane.sh` (see `RUNBOOK.md`) — redundant with
  the cloud Lane A, extra throughput, not required.

## Coordination protocol (how independent runs avoid collisions)

Before writing anything, each run:
1. `git pull` this repo's `main` branch to get the latest state from every
   other lane.
2. Reads `ledger.json` for the full list of company names already logged by
   ALL lanes (not just its own) and `excluded_companies.json`.
3. Picks new companies only from its own assigned countries.
4. Appends its new entries' company names to `ledger.json` under its own
   lane key, writes the entry files, commits, and pushes.
5. If a push is rejected (another lane pushed first), pull/rebase and retry
   — never force-push.

## Status / check-ins

No Telegram or WhatsApp connector is available to this account yet, so
automated check-ins go by email to vaibhav.saini005@gmail.com. Each cloud
lane sends a short digest only when something needs a decision or a run
fails outright — not on every routine success, to avoid noise.
