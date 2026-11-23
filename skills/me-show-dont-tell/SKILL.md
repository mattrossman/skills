---
name: me-show-dont-tell
description: Make drafts concrete with examples, diffs, screenshots, or observed results.
---

Don't overuse prose. Leverage the smallest visual example that makes the point instead. Make ideas self-documenting.

## Good

- Hyperlinks
- Permalinks
- Deep links
- Code snippets
- Comments in code snippets (NOT to be confused with comments in actual code, which are usually bad)
- Screenshots
- Tables
- Diffs
- Links to messages, issues, changes, etc., that establish the claim being made

## Bad

- Long winded paragraphs about what you did
- Descriptions of what you verified, instead of the verifiable evidence
- Descriptions of a visual change
- Descriptions of prior conversations
- Links that are unstable
- Inline links plopped in without context

## Examples

### Link to what you verified

Replace a paragraph about how you checked the change with the result and a link the reader can inspect.

```markdown
The first request timed out. The retry succeeded. [Trace](https://example.com/traces/123)
```

### Put the default next to the setting

Instead of writing “`verbose` defaults to `false`” above the example, put it on the line the reader is looking at.

```yaml
verbose: true  # Default: false
```

### Show the UI change

Show a screenshot in the PR description. Cut the prose that describes what the screenshot already shows.
