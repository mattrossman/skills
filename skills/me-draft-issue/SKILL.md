---
name: me-draft-issue
description: Draft a concise, evidence-backed Linear issue for review before creating it.
---

## Dependencies

- Obsidian vault access when saving a draft there. If a saved draft is requested and its destination is unknown, ask for it. If Obsidian is unavailable, offer a draft in chat instead.
- Linear access to inspect or create an issue. If unavailable, explain what access is needed and continue drafting from available evidence.
- Access to referenced sources for evidence. Do not assume their contents if access fails.

## Workflow

1. Identify the problem and intended scope from the conversation, referenced code, issues and discussions. Read referenced sources needed to substantiate claims; do not require a separate issue or plan when the conversation provides the context.
2. Save a new draft in the user's chosen Obsidian folder, or draft in chat if requested. Include the title, body and proposed metadata. If a draft already exists, read it before making targeted edits; never overwrite unseen changes.
3. Show the draft for review. Do not create the issue until explicitly approved. Re-read the saved draft and confirm metadata before creating it.
4. Before acting on an existing issue, read its current state. Apply follow-up edits narrowly.

## Writing

- Use a plain-language title scoped to the change.
- Use short paragraphs for the problem, why it matters and the proposed fix. Default to about three sentences for a small issue.
- Link claims to evidence. Pin code links to a revision and verify they show the relevant lines.
- Include a small, labeled example or file tree when it makes the proposed change clearer.
- End every draft with a metadata table proposing relevant fields (e.g. team, status, priority, assignee, labels, project and relations in Linear). Do not guess unavailable workspace details.
