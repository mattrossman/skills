# Changelog

## 2026-11-02

### Respect the destination's changelog convention

Follow the destination's contribution instructions when they exist, including its changelog policy. Default to recording substantive changes when there is no convention. This keeps the skill usable outside this repository.

### Start changelogs with substantive changes

New skills do not need a creation-only entry. Create a changelog when a substantive change needs its rationale recorded. Revisit if the initial rationale is needed and cannot be recovered elsewhere.

## 2026-10-16

### Avoid redundant invocation instructions

Descriptions should explain when a skill applies without telling the user to invoke its slash command. Revisit if invocation names become necessary for discovery.

## 2026-10-09

### Keep skills independent

Describe required behavior and keep correctness-critical instructions available without depending on another skill. Optional dependencies can be recommended with a fallback. Revisit if a workflow genuinely requires another skill.

### Preserve decisions when tuning

Record the reason for substantive changes so later tuning does not reverse prior decisions without understanding them. Revisit if the changelog stops being useful for that purpose.
