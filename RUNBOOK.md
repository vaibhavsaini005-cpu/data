# Runbook — unattended lane runner (Hiya Mac, then Lenovo / My Mac)

One-time setup per device. Do this once on Hiya Mac, confirm it's actually
running unattended, then repeat the same steps on the next device.

## 0. Clone the repo (skip if already cloned)

```bash
cd ~
git clone https://github.com/vaibhavsaini005-cpu/data.git
cd data
```

## 1. Make git push work without ever prompting

Pick ONE (SSH is more reliable for something running unattended for days):

**SSH (recommended):**
```bash
ssh-keygen -t ed25519 -C "intel-sprint-hiya-mac"    # accept defaults, no passphrase
cat ~/.ssh/id_ed25519.pub                            # copy this
```
Paste it at github.com → Settings → SSH and GPG keys → New SSH key. Then:
```bash
git remote set-url origin git@github.com:vaibhavsaini005-cpu/data.git
```

**Or a stored HTTPS token:**
```bash
git config --global credential.helper osxkeychain
git pull   # first pull/push will prompt once for a GitHub PAT; it's cached after that
```

## 2. Confirm the Claude CLI is logged in and check the skip-permissions flag

```bash
claude --version
claude -p "say hi" --dangerously-skip-permissions
```
If that second command asks you to approve anything, permissions aren't
actually being skipped — stop and check your Claude CLI version/config
before leaving the script unattended.

`--dangerously-skip-permissions` means the running session can execute
shell commands, write files, and push to git with no human approval step —
that's the whole point here (0 supervision), but it also means anything the
model decides to run, runs. It's scoped to this repo's work by the lane
prompt's own instructions, and it's your machine and your repo, so this is
a reasonable tradeoff for a few days unattended — just know what the flag
actually does.

## 3. Make the runner executable

```bash
chmod +x scripts/run-lane.sh
```

## 4. Run it

**Quick way (needs Terminal to stay open, but survives Claude sessions
ending/hitting limits — it just restarts them):**
```bash
./scripts/run-lane.sh a    # Hiya Mac = Lane A
```

**Fully unattended way (keeps running even if Terminal is closed, restarts
automatically if it ever dies, starts again on reboot/login):**

1. Copy the template and fill in the placeholders:
   ```bash
   cp scripts/com.vg.intel-sprint.plist.template \
      ~/Library/LaunchAgents/com.vg.intel-sprint-a.plist
   ```
2. Open that copy and replace `REPLACE_WITH_LANE` with `a` and
   `REPLACE_WITH_ABSOLUTE_PATH` with the full path to your clone (e.g.
   `/Users/vaibhav/data`).
3. Load it:
   ```bash
   launchctl load ~/Library/LaunchAgents/com.vg.intel-sprint-a.plist
   ```
It now runs in the background permanently — no Terminal window, no
approval clicks, restarts itself on crash or reboot.

## 5. Check it's actually working

```bash
tail -f scripts/intel-sprint-a.log
```
You should see pull → session start → (eventually) a commit+push, repeating.

## 6. Stop it — on any device, anytime

```bash
touch ~/.intel-sprint-stop
```
The current session finishes its run and the loop exits cleanly. To also
remove the LaunchAgent so it doesn't restart on next login:
```bash
launchctl unload ~/Library/LaunchAgents/com.vg.intel-sprint-a.plist
```

## 7. Repeat on the next device

Same steps, different lane letter (`b` on Lenovo — note Lane B also runs
automatically in the cloud already, so this is a second, redundant runner
for it, not required; `c` on My Mac with `codex` in place of `claude` if
you go this route there instead of the Codex app directly).

## Stop date

The script stops itself by **Tuesday 09:00 local time** — edit `END_TIME`
near the top of `run-lane.sh` before running it if you actually meant a
different cutoff.
