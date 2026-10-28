# Simple Interest Calculator

This project contains a Bash script that calculates simple interest from principal, annual rate of interest, and time period.

## Formula
Simple Interest = (Principal × Rate × Time) / 100

## Inputs
- Principal amount (`p`)
- Annual rate of interest (`r`)
- Time period in years (`t`)

## Run
```bash
chmod +x simple-interest.sh
./simple-interest.sh
```

## Example
Principal = 1000, Rate = 5%, Time = 2 years
Simple Interest = (1000 × 5 × 2) / 100 = 100

## Collecting evidence for Tasks 6–9

The files `forked-repo`, `merge_branches`, `bug-fix-revert`, and `github-branches`
are evidence placeholders. Replace their contents with outputs from your own repository;
do not submit the placeholder text.

### Task 6 — forked-repo
Run (replace YOUR_USERNAME):
```bash
curl -s https://api.github.com/repos/YOUR_USERNAME/mcino-Introduction-to-Git-and-GitHub
```
Record the command and relevant JSON fields: `full_name`, `fork`, and `parent.full_name`.

### Task 7 — merge_branches
Record the actual output of:
```bash
git checkout main
git merge bug-fix-typo
```
Do not fabricate output if the merge has already happened or the branch is missing.

### Task 8 — bug-fix-revert
Run (replace YOUR_USERNAME) and record the actual response:
```bash
curl -s "https://api.github.com/repos/ibm-developer-skills-network/mcino-Introduction-to-Git-and-GitHub/pulls?state=all&head=YOUR_USERNAME:bug-fix-revert"
```
The pull request must actually exist for this query to return it.

### Task 9 — github-branches
Record actual output of:
```bash
git branch
git branch -a
```
