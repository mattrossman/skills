---
name: me-self-correct
description: Diagnose an agent mistake and propose a minimal guidance change for approval.
---

## Workflow

1. Use the user's target or the latest clear correction or acknowledged mistake. Ask only if the target is ambiguous.
2. Compare expected and observed behavior using evidence. Read the applicable guidance and relevant changelogs, resolving installed links to maintained sources. Distinguish missing, unclear, conflicting, or unfollowed guidance from execution failures. Label uncertain causes instead of inventing reasons.
3. Treat invocation of this skill as a request to prevent recurrence through a guidance change. Choose the most specific existing source. When an existing rule was missed, strengthen the workflow at the decision point where it failed. Recommend no change only in rare cases, with a concrete reason why guidance cannot help.
4. Rewrite the affected guidance around the desired behavior, merging or removing obsolete instructions. Read the whole result as a fresh agent would. It should stand alone without knowledge of the incident or earlier versions. Prefer a coherent revision over appending a prohibition or exception. Preserve useful constraints and keep private context and historical rationale out of reusable instructions. Verify operational fixes first, or propose the verification needed.
5. Demonstrate the correction before proposing guidance for an output mistake. Show the revised artifact in full, either in chat or at the user's review destination. If editing the original artifact is not authorized, show a revised preview using its actual content. Then show the failure, supported cause, target file, exact proposed guidance diff, and verification results or remaining checks. Include proposed changelog text when required, explaining what changed and why.
6. Stop for approval before editing guidance. After approval, apply the reviewed change and report verification. Correcting the original artifact or installing guidance requires separate authorization.
