---
name: me-draft-change
description: Implement the smallest working version of a request, discussion, plan or issue as uncommitted local changes, then provide a concise summary and verification command.
---

## Dependencies

- Git and the project's existing development tools.

## Workflow

1. Use the agreed request and context from the conversation, a plan or an issue, and read the code it touches. If a referenced source is inaccessible, ask for access or its contents. If the intended change remains unclear, ask a focused question. Check the branch and working tree before changing them. If unrelated changes or unpushed work make switching unsafe, ask before switching. Follow the repository's branch instructions.
2. Implement the smallest change that satisfies the agreed request. Never commit.
3. Trim comments, test names and documentation in the changes. Use `me-trim-comments` if available. Otherwise, follow the environment's conventions and remove redundant or stale text.
4. Verify the requested behavior using the project's existing tools. Fix failures before reporting back.
5. Summarize what changed, assumptions and anything skipped, then give a command to reproduce the verification.

## Rules

- Avoid fallbacks, feature gates, compatibility shims and abstractions unless needed for the requested change.
- Add tests for behaviors that need them, using existing fixtures.
- If details are ambiguous, take the simplest reasonable reading and state the assumption. If part is wrong or cannot be completed, say so.
