# Global Market Intelligence Sprint (Aug 22 → Aug 26, 2026)

This repo is the shared workspace for a 3-lane research sprint, all three
lanes now cloud-automated on the same Claude account. It's how the three
lanes **coordinate** ("talk
to each other") — every run pulls this repo first to see what the other
lanes have already logged, writes its findings here, and pushes back.

Goal: build a **legitimate** (real, sourced, named-company) dataset of
business failures, pivots, and successes across countries/sectors — not
already covered by the 2,321-company exclusion list in this repo, and
never duplicated between lanes.

## Benchmark — what Vee Group already has (audited 2026-08-22)

Two prior datasets exist in `vaibhavsaini005-cpu/vg-claude-code`. Both are
folded into `excluded_companies.json` here so this sprint doesn't repeat
them; their quality bar is also the floor this sprint has to clear, not
just match.

- **`vee-agents/vee_saas_success_db.xlsx`** — 1,000 rows / **684 unique
  real companies**, Series A+ SaaS successes. Quality: real named
  companies, real inline metrics (funding, valuation, revenue), but
  **no per-claim URL/date citations** — sourcing is asserted, not linked.
  Geography: 79%+ USA; the rest is thin (India ~48, then a long tail of
  1-20 companies per country). Outcome type: **success stories only**, no
  failures or pivots.
- **`vee-agents/vee_research_repository.json`** — 1,883 cases / **1,720
  unique real companies** ("Startup Graveyard"), mostly failures/near-
  misses, some survivals. Quality: real named companies with a `sources`
  field per entry, but sources are **named references, not links**
  (e.g. "Bloomberg luxury marketplace analysis 2022-2024" — no URL, no
  exact date). ~80% USA/India HQ; most of the world is barely represented.
  Outcome mix: 263 shutdowns, 292 survived/acquired, 1,328 unclear/other —
  the `died` field is inconsistently structured, so treat outcome
  classification here as rough, not reliable.
- **`vee-agents/vee_company_registry.json` / `vee_learning_db.json`** —
  small (9 and 10 entries), explicitly **synthetic** "ghost match"
  simulations for sales pitches, not real companies. Excluded by name
  only (`Olive AI`, `Project Phoenix`), not treated as real coverage.

**What this means for this sprint's bar**: every entry here needs a real
**URL + date**, not just a named source — that's strictly higher rigor
than either prior dataset achieved. And since the existing data is ~80%
USA/India, this sprint's lane assignments deliberately avoid those two
countries entirely, which is itself the main way "don't repeat what's
already there" is enforced at the geography level, on top of the exact
name-level dedupe via `excluded_companies.json`.

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
- **Lane D — South Asia + Eastern Europe + East Africa** — dual-covered:
  Codex on My Mac (manual, `LANE_D_PROMPT.md`) plus a cloud Routine backup
  covering the same countries, so this territory doesn't stall when Codex
  isn't being actively supervised. Pakistan, Bangladesh, Sri Lanka, Nepal,
  Ukraine, Czech Republic, Hungary, Bulgaria, Ethiopia, Rwanda, Tanzania,
  Uganda.
- **Lane E — remaining Southeast Asia + Central Asia/Caucasus** — cloud,
  automatic. Malaysia, Cambodia, Myanmar, Laos, Kazakhstan, Uzbekistan,
  Georgia, Armenia, Azerbaijan.
- **Lane F — West Africa + Caribbean + remaining Europe** — cloud,
  automatic. Senegal, Ivory Coast, Cameroon, Jamaica, Dominican Republic,
  Trinidad and Tobago, Norway, Denmark, Serbia, Croatia, Slovenia, Greece,
  Spain.
- Optional extra runner: **Hiya Mac terminal**, running Lane A's own prompt
  unattended via `scripts/run-lane.sh` (see `RUNBOOK.md`) — redundant with
  the cloud Lane A, extra throughput, not required.

## Scaling volume without touching quality

Added Lanes E and F (2026-08-22) purely to increase total legitimate
output — same per-run rules, same 2-3-entries-per-firing cap, same
mandatory URL+date sourcing. The only two levers ever used to get more
data here are (1) more disjoint-country lanes, and (2) firing more often
(6h instead of 8h) — never a looser per-run yield or a weaker sourcing
bar. If this repo ever shows a lane producing more than ~3 entries in one
commit or an entry missing a real URL+date, that's a deviation from the
standard, not a feature — flag it.

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
