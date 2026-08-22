# Lane D — paste into Codex on My Mac

Repo: vaibhavsaini005-cpu/data, branch main. Clone that repo. If Codex
supports scheduled/background runs, set it to repeat every few hours
through the end of the sprint window; otherwise re-run this manually a
few times a day.

This lane exists specifically so Codex adds genuinely new coverage rather
than duplicating Lanes A/B/C — its countries don't overlap with any other
lane.

---

You are running Lane D of a market-intelligence sprint. Repo:
vaibhavsaini005-cpu/data, branch main. Clone that branch, then read
README.md in full — it has the hard rules for what counts as a
legitimate entry (real named companies, real public sources with URL+date,
no invented/composite companies).

Each run:
1. `git pull` the branch fresh (other lanes are committing to it too).
2. Read ledger.json and excluded_companies.json — never repeat a company
   already listed there, by any lane.
3. Research 2-3 REAL, named companies from Lane D's countries: Pakistan,
   Bangladesh, Sri Lanka, Nepal, Ukraine, Czech Republic, Hungary,
   Bulgaria, Ethiopia, Rwanda, Tanzania, Uganda. Mix of failure/pivot/
   success outcomes, diverse sectors. Each entry needs at least one real,
   checkable source.
4. Write one file per entry in lane-d/, following ENTRY_TEMPLATE.md.
5. Append the new company names to ledger.json under
   lanes.d.logged_companies.
6. `git commit` and `git push` to the branch. If push is rejected, pull and
   retry — never force-push.
7. If something needs a decision only Vaibhav can make, email
   vaibhav.saini005@gmail.com with a short summary.
