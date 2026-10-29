---
name: me-trim-comments
description: Trim and sharpen code comments, test names, and documentation in unstaged changes. Use when asked to tidy comments or documentation, remove redundant explanations, or clarify edge cases with concise examples.
---

Unless otherwise specified, take the following action only on changes that are unstaged, NOT existing parts of files.

# Trim Comments

Comments in code are for humans first. Read the comments and imagine what an unfamiliar human would think.
Respect the reader's time and attention. Readers are intelligent but busy. Comments should be concise, clear, and relevant.

Trim or remove comments that are:
- redundant with the code itself
- regurgitating context from a chat session
- serving no impact for a human reviewer
- explaining basic concepts or going overly in depth on implementation details
- in the pattern of "A, not B". just say "A" if "B" naturally follows
- already explained by the name of the function (and if unclear, consider renaming the function instead of adding a comment)
- restating a value that already lives in code or config, such as a hotkey, folder name, plugin list, version, or default
- likely to go stale or be misleading in the future

If you can say it in one sentence, do it.

If code makes a claim about external behavior, demonstrate proof with a docs link or code permalink.
Don't go overboard on references, if you can prove it in one citation, do that.

Comments are useful when code is doing something unusual or difficult to parse. For example:
- Regex
- Bug workarounds
- Test assertions that seem counterintuitive

# When a comment earns an example

A concept with edge cases (parallel vs sequential, empty items, boundaries) is clearer as one compact example than as a rule. Shape it as a flow with kind labels and the resulting values:

```ts
// One turn per model response, brackets group parallel tool calls:
//   text → [Read, Read] → Edit → reasoning → text
//   turnCount 5, toolCallCount 3
```

Rules for the example:
- Two or three lines. If it needs a table, it belongs in a doc, not a comment.
- Label kinds (`text`, `reasoning`, `Read`), don't quote invented speech.
- Put it once, at the canonical definition (schema or type). Other sites say what they return in one line and point there.
- Iterate for clarity first (does the reader still have a question?), then trim.

# One source of truth

Two copies of a fact drift apart. Before keeping a specific value in a comment or doc, check whether a file already holds it.

- If a file holds it, name that file and drop the value.
- If no file holds it, the doc is the source of truth and may state it.
- A doc should not need an edit when a config value changes.

```md
Bad:  Requests time out after 30 seconds.
Good: Request timeout settings are in `config.json`.
```

This applies to README and doc prose in the diff, not only to code comments.

# Naming

If a comment exists only to say what a name should have said, rename instead. A count is `fooCount`, not `foos`.

# Test cases

Test names should commicate only what the test does in minimal language. Avoid multiple sentence / phrase descriptions.

If more context is needed to explain "why", add a minimal comment.

# Writing style

Avoid colons. Use simple sentences.