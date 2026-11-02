---
name: me-skill
description: Create or improve a reusable skill, preserving the reasons behind existing instructions.
---

## Dependencies

- Access to the skill files and any referenced evidence. Follow the destination repository's contribution instructions when present.

## Create

1. Choose the skill's scope and destination from the user's request and existing conventions. Name the concrete action and match the frontmatter name to the directory.
2. Write a concise description that explains when the skill applies. Avoid redundant invocation instructions.
3. Draft the workflow and its dependencies. Describe the behavior needed, include correctness-critical instructions, and provide fallbacks for optional skills or tools.
4. Show the proposed name, description, and full body before creating the skill. Follow the destination's changelog convention. If there isn't one, create a changelog when the skill first changes substantively.

## Tune

1. Read the skill and its changelog if present. Find the evidence behind the requested change, including the user's edits or feedback.
2. Check whether the change reverses a recorded decision. If so, explain the original rationale and whether its revisit condition is met. Ask before reversing it unless the user has already authorized the reversal.
3. Generalize the evidence into instructions that address the underlying issue. Keep rationale in the changelog.
4. Add a changelog entry for the substantive change, including what changed, why, and evidence where available. Do not invent missing rationale.
5. Report what changed and show the diff.
