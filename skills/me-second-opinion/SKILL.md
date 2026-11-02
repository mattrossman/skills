---
name: me-second-opinion
description: Get an independent second opinion from another coding agent on a design, decision, implementation, or review.
---

## Dependencies

- An independent agent CLI. Use Claude Code when the host is Codex, or Codex when the host is Claude Code, unless the user specifies another reviewer. If it is unavailable or cannot authenticate, report that and stop.

## Workflow

1. Identify the question and give the reviewer the relevant context, constraints, and paths. Ask for an independent assessment and actionable reasoning, not just agreement. Tell it not to change files.
2. Run the reviewer from the relevant repository, using its default model. Use a read-only mode for reviews. Redirect output to a temporary file outside the repository, then read the complete output. For Codex, close stdin with `</dev/null`.
3. Check the reviewer's claims against the source material. Report where you agree or disagree and why, with evidence. Do not treat the second opinion as proof on its own.
4. If the reviewer cannot authenticate, follow the environment's authentication and network guidance. Report the failure if it remains unavailable.

For a general second opinion, write the question to a temporary prompt file. Set `prompt_file` and `log_file` to the temporary paths, then run one of:

```sh
codex exec -s read-only "$(cat "$prompt_file")" < /dev/null > "$log_file" 2>&1
claude -p "$(cat "$prompt_file")" --permission-mode plan < /dev/null > "$log_file" 2>&1
```

For uncommitted code review, `codex review --uncommitted` is also available. Do not specify a model unless the user asks.
