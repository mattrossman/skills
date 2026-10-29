---
name: me-draft-review-comment
description: Draft a concise review comment for a specific finding and identify the relevant pull request diff line. Use when asked where to comment or to turn a review finding into a comment.
---

## Scope

Draft only the requested findings. Never post a comment without explicit authorization.

## Dependencies

- Access to the pull request, its head and base revisions, and the relevant code. If access is unavailable, explain what is missing rather than guessing.

## Workflow

1. Identify the requested finding. Ask if it is unclear which one to draft.
2. Compare the PR head with its base and trace a realistic scenario. Distinguish newly introduced issues from pre-existing ones and link prior behavior when useful. Prefer an inline comment for a new issue; use a separate note for a pre-existing issue unless asked otherwise.
3. For an inline comment, choose a line shown in the PR diff where the fix belongs. Verify its line number against the PR head, not the local working tree. Link the nearest shown line and say so if the exact line is outside the diff.
4. Give the link and a concise draft in a fenced block. For a non-inline note, give the draft without a diff-line link.

## Writing

State the problem, impact or request plainly. Give a concrete user scenario and suggest a fix when useful. Cite evidence for factual claims and mark unverified assumptions. Keep comments short and avoid repetitive openings.
