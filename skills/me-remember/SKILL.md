---
name: me-remember
description: Save knowledge to agent memory in the right scope. Use when asked to remember something, update agent instructions, or decide where a rule belongs.
---

## Scope

Choose the memory file whose scope matches the request. Follow the user's configured locations and how each agent loads them. For a setup using `~/.agents/`:

- Repository-specific: use a memory file in that repository, not home-directory memory.
- Shared across projects: use `~/.agents/AGENTS.md`.
- Local or personal: use `~/.agents/AGENTS.local.md`; never stage or commit it.

Ask if the intended scope or configured location is unclear.

Before writing to a repository, check whether the target is tracked or ignored. Treat tracked files as shared and add personal guidance only when the user requests it there. If private repository memory is needed and none exists, create a file ignored locally through `.git/info/exclude`, without changing the repository's shared ignore rules.

## Workflow

1. Identify the scope and target file. Check existing applicable memory and recent changes first. If the requested behavior is already recorded, report where and make no duplicate change.
2. Read the target file. Add only the minimum instruction needed to change behavior; omit rules already covered and speculative extras. Use a short bullet under an existing heading where one fits.
3. Keep rules reusable and avoid disclosing private work context. If an example helps, generalize it rather than copying details from the conversation.
4. Show the added text in the reply. Commit only when explicitly requested, and follow the user's configured Git workflow. Never stage or commit local-only memory.
