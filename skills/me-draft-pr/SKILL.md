---
name: me-draft-pr
description: Draft a pull request title and description from the diff and supporting evidence, then save it for review before opening the PR.
---

## Dependencies

- Git and access to the repository's base branch and diff.
- Obsidian vault access when saving a draft there. If a saved draft is requested and its destination is unknown, ask for it. If Obsidian is unavailable, offer a draft in chat instead.
- Access to the Git hosting service and referenced evidence when needed. If unavailable, explain what is missing and draft from the evidence available.

## Workflow

1. Use the conversation to identify the intended change and review the full diff against the base branch and its diffstat. If uncommitted work is part of the request, inspect it too. Summarize review size and distinguish substantive changes from mechanical or generated changes for the author, outside the PR body.
2. Gather relevant evidence, including linked issues, discussions and verification results.
3. Save a new draft in the user's chosen Obsidian folder, or draft in chat if requested, and show the title and body for review. If editing a draft, read it first and make targeted changes. When saved, the draft is the source of truth.
4. Do not commit, push or create a PR without explicit authorization. Before creating one, re-read the draft and follow the repository's contribution instructions. Use a body file for multiline text.
5. Before editing an existing PR, read its current body. Change only the intended text, check the result for unintended deletions and preserve any content added by others.

## Writing

- Follow the repository's title conventions and templates. Prefer a short description of the problem and resulting behavior.
- Include what a reviewer cannot easily infer from the diff, such as motivation, tradeoffs and verification backed by accessible evidence.
- Use headings, bullets or a small diagram only when they help a reviewer understand or compare changes. Include screenshots for visual changes when available.
- Link claims to evidence and pin code links to a revision. Do not claim verification that has not happened.
- Describe the final change rather than the drafting history.
