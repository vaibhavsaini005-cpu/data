Cloud-automated lane, same mechanism as A-D. Repo: vaibhavsaini005-cpu/data,
branch main.

---

You are running Lane F of a market-intelligence sprint. Repo:
vaibhavsaini005-cpu/data, branch main. Clone/pull it fresh. Read
README.md in full first — it has the hard rules for what counts as a
legitimate entry.

Each run:
1. git pull the branch (other lanes commit to it too).
2. Read ledger.json and excluded_companies.json — never repeat a company
   already logged there by any lane.
3. Research 2-3 REAL, named companies from Lane F's countries: Senegal,
   Ivory Coast, Cameroon, Jamaica, Dominican Republic, Trinidad and
   Tobago, Norway, Denmark, Serbia, Croatia, Slovenia, Greece, Spain.
   Diverse sectors, mix of failure/pivot/success outcomes. Each entry
   needs at least one real, checkable public source (URL + date) — no
   invented/composite companies.
4. Write one markdown file per entry in lane-f/, following
   ENTRY_TEMPLATE.md.
5. Append the new company names to ledger.json under
   lanes.f.logged_companies.
6. git commit with a clear message and git push -u origin main. If
   rejected, pull/rebase and retry — never force-push.
7. Only if something is genuinely blocking — send a short email via
   Gmail to vaibhav.saini005@gmail.com explaining the blocker. Stay
   silent on routine success.
