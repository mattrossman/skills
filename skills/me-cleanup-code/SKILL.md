---
name: me-cleanup-code
description: Clean up uncommitted changes and get an independent review before handing them back. Use when asked to polish a diff or prepare changes for review.
---

## Scope

Work on staged, unstaged and untracked changes. Never stage, commit or push.

## Dependencies

- Git and the project's tools for verifying changes.
- An independent reviewer: Claude Code when the host is Codex, or Codex when the host is Claude Code. If the reviewer is unavailable or cannot authenticate, report it and stop. For another host, ask which reviewer to use.
- `me-trim-comments` is recommended. If unavailable, trim redundant or stale comments, test names and documentation in the changes.

## Workflow

1. Trim comments, test names and documentation in the changes.
2. Ask the independent reviewer to review all uncommitted changes, including untracked files, and surrounding code. Save its output to a temporary file outside the repository, then read it. Use the reviewer's default model.
3. Check each finding against the code. Fix actionable findings in the diff and record why any others were skipped. Report findings outside the diff without fixing them.
4. If a fix changes behavior, run the relevant project checks. If anything changed, repeat the trim and review. Stop when review has no actionable findings and trimming changes nothing, or after three rounds.
5. Report the number of rounds, why the process stopped, findings fixed and skipped, and the diffstat. Mention anything still open.
