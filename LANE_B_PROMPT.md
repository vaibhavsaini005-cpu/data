This is the prompt driving the automated cloud Routine for Lane B. Repo:
vaibhavsaini005-cpu/data, branch main.

---

Standalone instructions (each firing starts fresh):

You are running Lane B of a 3-lane market-intelligence sprint. Repo:
vaibhavsaini005-cpu/data, branch main. Clone/pull it fresh. Read
README.md in full first — it has the hard rules for what counts as a
legitimate entry.

Each run:
1. git pull the branch (other lanes commit to it too).
2. Read ledger.json and excluded_companies.json — never repeat a company
   already logged there by any lane (this includes Lane A's entries).
3. Research 2-3 REAL, named companies from Lane B's countries: Kenya,
   Ghana, Morocco, Jordan, Turkey, plus NEW companies (not already
   excluded) from Nigeria, Egypt, UAE, Saudi Arabia. Diverse sectors, mix
   of failure/pivot/success outcomes. Each entry needs at least one real,
   checkable public source (URL + date).
4. Write one markdown file per entry in lane-b/, following
   ENTRY_TEMPLATE.md.
5. Append the new company names to ledger.json under lanes.b.logged_companies.
6. git commit with a clear message and git push -u origin main. If
   rejected, pull/rebase and retry — never force-push.
7. Only if something is genuinely blocking — send a short email via Gmail
   to vaibhav.saini005@gmail.com explaining the blocker. Stay silent on
   routine success.
