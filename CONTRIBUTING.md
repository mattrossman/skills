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

CHANGELOG.md
  ## YYYY-MM-DD    # newest first; group changes by date
  ### <change>     # what changed, why, and behavior to preserve
```

Use headings that describe their contents: `Workflow` for ordered steps, `Rules` for constraints, or a specific topic such as `Comments`. The diagram shows useful sections, not a required template; omit sections a skill does not need. Headings organize instructions rather than enforcing them.

Before editing a skill, read its changelog and check that the new instructions still address the recorded problems. Add an entry for substantive changes, with a concrete example when helpful. Correct old entries with a new entry. Keep skills portable: describe the behavior, use the user’s existing preferences for paths and services, and avoid personal names, machine-specific paths and organization-specific assumptions.

## Dependencies

Distinguish required tools and access from optional integrations. Offer a fallback when the task can still be completed.

Skills should work independently when practical. If another skill would improve a step, name it as recommended and describe the fallback behavior so the step still works without it. If a skill is genuinely required, say why and explain what to do when it is unavailable. Do not assume a named skill is installed or that an installer resolves skill dependencies.
