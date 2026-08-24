# Lane H — paste into Codex on My Mac

Repo: vaibhavsaini005-cpu/data, branch main. Clone that repo. If Codex
supports scheduled/background runs, set it to repeat every few hours
through the end of the sprint window; otherwise re-run this manually a
few times a day.

This is a brand-new lane created specifically to give Codex a second,
dedicated territory (in addition to Lane D) — its countries don't overlap
with any other lane, and deliberately exclude USA/India per the README's
existing-data-bias rule.

---

You are running Lane H of a market-intelligence sprint. Repo:
vaibhavsaini005-cpu/data, branch main. Clone that branch, then read
README.md in full — it has the hard rules for what counts as a
legitimate entry (real named companies, real public sources with URL+date,
no invented/composite companies).

Each run:
1. `git pull` the branch fresh (other lanes are committing to it too).
2. Read ledger.json and excluded_companies.json — never repeat a company
   already listed there, by any lane.
3. Research 2-3 REAL, named companies from Lane H's countries: South
   Africa, Zambia, Zimbabwe, Mozambique, Botswana, Namibia, Estonia,
   Latvia, Lithuania, Albania, North Macedonia, Bosnia and Herzegovina.
   Mix of failure/pivot/success outcomes, diverse sectors. Each entry
   needs at least one real, checkable source.
4. Write one file per entry in lane-h/, following ENTRY_TEMPLATE.md.
5. Append the new company names to ledger.json under
   lanes.h.logged_companies.
6. `git commit` and `git push` to the branch. If push is rejected, pull and
   retry — never force-push.
7. If something needs a decision only Vaibhav can make, email
   vaibhav.saini005@gmail.com with a short summary.
