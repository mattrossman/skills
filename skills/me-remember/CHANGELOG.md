# Changelog

## 2026-11-04

### Preserve memory locations

Keep the scope-to-file mapping visible so choosing a memory destination does not depend on an implicit assumption. Respect different configured locations.

### Keep memory minimal

Check existing applicable instructions and recent changes before adding memory. If the requested behavior is already recorded, report it without making a duplicate change. Avoid speculative guidance, so memory steers only the behavior that needs to change.
