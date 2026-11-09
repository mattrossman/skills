---
name: me-catchup
description: Recap where a resumed session left off and the next step, checking live state for changes since the pause.
---

## Workflow

1. Read the conversation for the last goal, completed work, and open questions or decisions.
2. Check the current state of work the session touched. For Git work, check the branch and working tree, any relevant stashes, and unpushed commits if an upstream exists. For a linked PR, check its state, review decision, and checks when access is available.
3. Recap where things left off, the next step, and who owns it. Mention changes in live state only when they affect the next step. If a relevant check is unavailable, say so rather than assuming the earlier state is current.

Keep the recap to one or two sentences when possible. Use more space if an open decision or failed check needs explanation. Wait for the user to choose a next step before starting work.
