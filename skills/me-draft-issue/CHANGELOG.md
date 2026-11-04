# Changelog

## 2026-11-04

### Preserve GitHub attachments when publishing

Preserve draft attachments when publishing. A chart was omitted from an issue even though GitHub CLI supports [attachments](https://cli.github.com/manual/gh_issue_edit).

Use the project’s configured issue tracker rather than assuming Linear, since repositories may use GitHub Issues.

## 2026-11-02

### Follow configured draft conventions

Use the user's existing draft destination instead of asking for a folder already configured elsewhere.

## 2026-10-30

### Format metadata as a table

End each draft with a metadata table. Without an explicit format, drafts on another machine presented the metadata differently.

## 2026-10-29

### Use the conversation as context

An issue request can follow a discussion without repeating its details. Use that context and check referenced evidence, and honor a request to draft in chat.


### Show concrete artifacts when useful

Added concise, labeled examples when they clarify a proposed change. An issue describing a new file was hard to assess until it showed the file name and sample contents.

## 2026-10-26

### Keep drafts concise and readable

Set a short default and separated the problem, context and fix into paragraphs. Long rollout lists obscured the issue, while compressing everything into one paragraph made it harder to read.
