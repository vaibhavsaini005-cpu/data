# Project notes for Claude

This repo (`vaibhavsaini005-cpu/data`) is one piece of a larger Vee Group
pipeline. For the full picture — what this repo's relationship is to
production, which other repos/agents are involved, and the quality bar a
record must clear before it's usable outside this repo — read
`vg-claude-code`'s `CLAUDE.md`, section "The overnight case-study pipeline,"
first.

## What's specific to this repo

- `README.md` and `RUNBOOK.md` in this repo are the source of truth for this
  repo's own sprint design (lane assignments, hard rules, setup steps) — they
  are more current than anything summarized elsewhere.
- **This repo's own quality bar is looser than Vee Group's production bar**:
  a named company + one checkable public source is enough here (see
  `README.md`'s "Hard rules"). It does **not** require a named human founder.
  Don't assume an entry logged here is production-ready — it isn't, until it
  clears the stricter gate described in `vg-claude-code`'s `CLAUDE.md`.
- Entries here (`lane-a/`, `lane-b/`, etc.) are a **permanent archive** for
  this sprint, not a staging area to be emptied — unlike
  `vee-group-data-staging`'s `pending/`, files here stay in place whether or
  not they're later picked up and shipped to production elsewhere.
- `scripts/run-lane.sh`'s `END_TIME` has been overwritten by accident more
  than once (multiple independent processes can push to this one shared
  field with no conflict protection, unlike `ledger.json`'s append-only
  design). Check it's set to a real, future cutoff before assuming an
  overnight run will stop on schedule.
