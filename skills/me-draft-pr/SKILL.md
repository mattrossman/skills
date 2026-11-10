---
name: me-draft-pr
description: Draft a pull request title and description from the diff and supporting evidence, then save it for review before opening the PR.
---

## Dependencies

- Git and access to the repository's base branch and diff.
- Access to the user's configured draft destination. If no destination is configured, ask where to save it. If unavailable, offer a draft in chat instead.
- Access to the Git hosting service and referenced evidence when needed. If unavailable, explain what is missing and draft from the evidence available.

## Workflow

1. Use the conversation to identify the intended change and review the full diff against the base branch and its diffstat. If uncommitted work is part of the request, inspect it too. Summarize review size and distinguish substantive changes from mechanical or generated changes for the author, outside the PR body.
2. Gather relevant evidence, including linked issues, discussions and verification results.
3. Save a new draft using the user's configured draft conventions, or draft in chat if requested, and show the title and body for review. If editing a draft, read it first and make targeted changes. When saved, the draft is the source of truth.
4. Do not commit, push or create a PR without explicit authorization. Before creating one, re-read the draft and follow the repository's contribution instructions. Use a body file for multiline text.
5. Before editing an existing PR, read its current body. Change only the intended text, check the result for unintended deletions and preserve any content added by others.
6. For GitHub attachments, check `gh pr create --help` or `gh pr edit --help` for `--attach`. Preserve placement, verify the published body and report upload failures.

## Writing

- Follow the repository's title conventions and templates. Prefer a short description of the problem and resulting behavior.
- Start with the change in behavior or workflow. Use present tense to describe what the PR does, not an imperative instruction. For example, “Adds a check” rather than “Add a check.” Explain what was different before and what happens now when needed to make the change clear. Do not just describe the resulting code or list its capabilities.
- Use headings, bullets or a small diagram only when they help a reviewer understand or compare changes. Include screenshots for visual changes when available.
- Link evidence inline with the relevant claim instead of collecting it in a References section. Write GitHub pull request and issue URLs directly in the sentence or after a short label, so GitHub can render its short reference. Do not duplicate a Linear issue link when a closing or reference keyword already links it. Pin code links to a revision.
- Prefer one short paragraph for a small change. Use bullets for independently scannable items and include output snippets for terminal or UI changes.
- Include what a reviewer cannot get from the diff, such as where a change comes from, why it matters, and what was verified outside CI. Link verification evidence rather than asserting results. Omit specific numbers unless they affect a decision.
- When including multiple screenshots, arrange them in a labeled Markdown grid, with no more than three columns.
- Do not claim verification that has not happened.
- Describe the final change rather than the drafting history.
