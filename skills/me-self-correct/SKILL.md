---
name: me-self-correct
description: Diagnose an agent mistake and propose a minimal guidance change for approval.
---

## Workflow

1. Use the user's target or the latest clear correction or acknowledged mistake. Ask only if the target is ambiguous.
2. Compare expected and observed behavior using evidence. Read the applicable guidance and relevant changelogs, resolving installed links to maintained sources. Distinguish missing, unclear, conflicting, or unfollowed guidance from execution failures. Label uncertain causes instead of inventing reasons.
3. Decide whether guidance needs changing. Choose the most specific existing source and avoid duplicating rules. For unfollowed guidance, identify a useful check at the missed decision point. Recommend no change when more instructions would not help.
4. Rewrite the affected guidance around the desired behavior, merging or removing obsolete instructions. Read the whole result as a fresh agent would. It should stand alone without knowledge of the incident or earlier versions. Prefer a coherent revision over appending a prohibition or exception. Preserve useful constraints and keep private context and historical rationale out of reusable instructions. Verify operational fixes first, or propose the verification needed.
5. Show the failure, supported cause, target file, exact proposed diff, and a practical way to verify improvement. Include proposed changelog text when required, explaining what changed and why.
6. Stop for approval before editing guidance. After approval, apply the reviewed change and report verification. Correcting the original artifact or installing guidance requires separate authorization.
