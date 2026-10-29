# Changelog

## 2026-10-19

### Keep one source of truth

Updated the skill to catch documentation that repeats facts already defined in code or configuration, where the copies could drift. The skill now covers README and documentation prose as well as comments.

For example, a README might repeat a timeout from a config file. Replace the duplicated timeout in the README with a reference to that file. If the README is the only source of the timeout, keep the value there.

### Baseline

Recorded the existing rules for trimming comments, test names, and documentation. The reasons for the earlier rules were not recorded.
