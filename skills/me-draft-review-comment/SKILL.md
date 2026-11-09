---
name: me-draft-review-comment
description: Draft concise review comments for specific findings and identify the relevant pull request diff lines. Use when asked where to comment or to turn review findings into comments.
---

## Scope

Draft only the requested findings. Never post a comment without explicit authorization.

## Dependencies

- One or more findings the user has already reviewed.
- Access to the pull request, its head and base revisions, and the relevant code. If access is unavailable, explain what is missing rather than guessing.

## Workflow

1. Identify the requested findings. Ask if it is unclear which ones to draft.
2. For each finding, compare the PR head with its base and trace a realistic scenario. Distinguish newly introduced issues from pre-existing ones and link prior behavior when useful. Prefer an inline comment for a new issue. Use a separate note for a pre-existing issue unless asked otherwise.
3. For an inline comment, choose a line shown in the PR diff where the fix belongs. Verify its line number against the PR head, not the local working tree. Link the nearest shown line and say so if the exact line is outside the diff.
4. For each finding, give a separate link and concise draft in a fenced block. For a non-inline note, give the draft without a diff-line link.

For GitHub, a diff anchor uses the SHA-256 of the repository-relative path: `#diff-<hash>R<line>` for the new side or `L<line>` for the old side. Compute the hash with `printf %s "$path" | shasum -a 256` and verify the chosen line is in the displayed diff.

## Writing

State the problem, impact or request plainly. Give a concrete user scenario and suggest a fix when useful. Cite evidence for factual claims and mark unverified assumptions. Keep comments short and avoid repetitive openings.
