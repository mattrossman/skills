---
name: me-sync
description: Sync the current repository with its remote while preserving local work. Use when asked to sync a repo or bring a workspace up to date.
---

## Scope

Sync the current checkout. Never push, rewrite history, discard work, or commit unless explicitly requested. Follow repository and user instructions, including any restrictions on merging or rebasing.

## Workflow

1. Inspect the current branch, configured remotes and upstream, staged and unstaged changes, untracked files, and any ongoing Git operation. Stop if an operation is already in progress.
2. Fetch the relevant remote, then compare the current branch with its upstream and the remote default branch. Check whether local commits are already incorporated upstream, including equivalent commits with different IDs.
3. Preserve local changes before updating. If a stash is needed, include untracked files, give it a descriptive name, and retain it until restoration is verified. Preserve staged versus unstaged state.
4. Fast-forward the current branch when possible. If it has diverged, integrate its upstream using the user's preferred method, without creating a commit unless authorized. If the upstream is missing, the target is ambiguous, or switching branches would put unpushed work at risk, explain the evidence and ask.
5. Restore preserved changes. Resolve straightforward conflicts without discarding either side; stop and ask about nontrivial conflicts. Verify the working tree, branch, upstream, and restored work.
6. Follow repository instructions for local setup after pulling, within the user's authorization. Report the resulting branch and remote state, retained changes or stash, conflicts, and any work remaining. Never claim that unpushed work on another machine has been synchronized.
