# Contributing

## Maintaining skills

Each skill lives in `skills/<name>/`:

```text
SKILL.md
  ---
  name: <name>
  description: <what it does and when to use it>
  ---
  ## Scope         # optional default boundaries and user overrides
  ## Dependencies  # tools, access, and what to do if unavailable
  ## Workflow      # steps using conversation or referenced sources

CHANGELOG.md       # add when the skill first changes substantively
  ## YYYY-MM-DD    # newest first; group changes by date
  ### <change>     # what changed, why, and behavior to preserve
```

Use headings that describe their contents: `Workflow` for ordered steps, `Rules` for constraints, or a specific topic such as `Comments`. The diagram shows useful sections, not a required template; omit sections a skill does not need. Headings organize instructions rather than enforcing them.

Before editing a skill, read its changelog if present and check that the new instructions still address the recorded problems. Create a changelog for the first substantive change. An initial creation entry is unnecessary. Correct old entries with a new entry.

Keep skills and changelogs portable. Describe the behavior and its rationale without disclosing private work context, including project details, names, links, quotes, or identifying combinations of facts. Generalize examples when useful, or omit them if they would reveal context. Use the user’s existing preferences for paths and services rather than embedding personal or organization-specific settings.

## Dependencies

Distinguish required tools and access from optional integrations. Offer a fallback when the task can still be completed.

Skills should work independently when practical. If another skill would improve a step, name it as recommended and describe the fallback behavior so the step still works without it. If a skill is genuinely required, say why and explain what to do when it is unavailable. Do not assume a named skill is installed or that an installer resolves skill dependencies.

## Migrating an installed skill

1. Inspect the installed path and resolve any symlinks. Check whether a maintained repo version already exists and compare its behavior and supporting files with the installed copy. Preserve useful behavior and decision history, keeping personal or machine-specific settings in the user's own configuration.
2. Before replacing an installed directory, archive the complete original outside skill discovery as a compressed file. Verify its contents against the original and keep the archive. Never overwrite an existing backup.
3. Add or update the portable repo skill and follow the repo's changelog conventions. Update the skill list in the README.
4. With authorization to change the user's installed skills, link the installed path to the repo directory. Preserve existing agent links that already point through that path. If a step fails, restore the original rather than leaving a broken link.
5. Verify each agent's link resolves to the repo skill and check discovery in a fresh session. Report the backup path and any behavior changes. Leave repo changes uncommitted unless asked to commit.

When tuning, inspect the installed path first. Edit the link target if it is a repo-backed skill. A standalone personal directory remains its own source until it is migrated. Do not infer the active source from matching names.
