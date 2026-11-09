---
name: me-obsidian
description: Read and write Obsidian notes, organize daily work and drafts, and change Obsidian configuration headlessly.
---

## Dependencies

- Access to the user's Obsidian vault and its configured location. If the location is unknown, ask for it.
- Read the vault's own instructions before writing notes.
- Recommended Obsidian plugins: **Periodic Notes**, configured with daily folder `Daily Notes` and format `YYYY/MM/YYYY-MM-DD/YYYY-MM-DD`, and **Folder notes**, configured to use a same-named Markdown note inside the folder. These make daily notes easy to create and navigate in Obsidian. The agent can still read and write the files without them.
- **Calendar** is optional for navigating daily notes by date.
- Sidemark is optional. It is only needed when working with Sidemark comments.

## Obsidian configuration

- Change settings headlessly by editing files in the vault's `.obsidian/` directory. Do not take over the Obsidian UI unless the user explicitly requests it.
- Inspect existing configuration first: `hotkeys.json` holds keyboard bindings, `community-plugins.json` lists enabled plugins, and `plugins/<plugin-id>/data.json` holds plugin settings. Preserve unrelated settings and check hotkeys against both custom bindings and command defaults.
- Read back edited files and validate their JSON. Distinguish saved configuration from changes confirmed active in the running app. If a reload or restart is needed, tell the user instead of initiating it through computer use.

## Daily notes and work items

- Put each day under `Daily Notes/YYYY/MM/YYYY-MM-DD/`. The daily note is `YYYY-MM-DD.md` inside that folder.
- Save new work and drafts beside that daily note. Use a numbered file or folder named `NN <kind> - <subject>`. Drafts use `NN Draft <kind> - <subject>.md`.
- Share one sequence across numbered files and folders for the day. Choose one more than the highest existing numeric prefix, starting at `01`. Never renumber existing items or overwrite an existing item.
- Keep plain notes without an H1 title. Format issue and PR drafts as they will render.

## Review queue

- Keep pending reviews and follow-ups in `Review Queue.md` at the vault root. This is one mutable queue across days and weeks. Dated notes preserve history.
- Each entry has an unchecked task, the person waiting, a source link, and a concrete next action. Add a priority or revisit date when useful. A revisit date prompts reassessment, not a promise to finish that day.
- When planning a day or week, read the queue and choose what fits current priorities. Link to the queue from the daily note instead of copying pending entries forward. Missed items stay in the queue.
- Before removing a completed, canceled, or handed-off entry, append its outcome and source link to today's daily note. Record meaningful deferrals there too. Preserve earlier daily notes.
- Read the queue before editing. Match reviews by the underlying PR, issue, document, or decision, even when pings use different message URLs or channels. Consolidate the same logical review into one entry, preserving its next action and priority. Put the review request thread and person waiting first under **Follow-ups**, with the action needed there. List any other place needing a response separately, including the original message when a request is cross-posted. Keep dated supporting evidence and past status updates under **Context**, not follow-ups. Verify the source before marking work resolved. Preserve unverified legacy entries with their status clearly marked.
- Linear keeps the underlying implementation issue and its owner. The queue tracks the user's review action. Do not create a duplicate Linear issue for each review.

## Editing and links

- Read an existing note in the current turn before making targeted edits.
- Link every note mentioned in a reply, including the final reply, using the user's configured link format.

## Sidemark

- Only inspect a note's `.review.yaml` threads when the user asks about Sidemark comments.
- Address open threads and append replies describing what changed and quoting the new text. Leave resolution to the user.
