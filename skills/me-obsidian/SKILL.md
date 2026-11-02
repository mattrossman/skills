---
name: me-obsidian
description: Read and write Obsidian notes, organizing daily work and drafts in a numbered sequence.
---

## Dependencies

- Access to the user's Obsidian vault and its configured location. If the location is unknown, ask for it.
- Read the vault's own instructions before writing notes.
- Recommended Obsidian plugins: **Periodic Notes**, configured with daily folder `Daily Notes` and format `YYYY/MM/YYYY-MM-DD/YYYY-MM-DD`, and **Folder notes**, configured to use a same-named Markdown note inside the folder. These make daily notes easy to create and navigate in Obsidian. The agent can still read and write the files without them.
- **Calendar** is optional for navigating daily notes by date.
- Sidemark is optional. It is only needed when working with Sidemark comments.

## Daily notes and work items

- Put each day under `Daily Notes/YYYY/MM/YYYY-MM-DD/`. The daily note is `YYYY-MM-DD.md` inside that folder.
- Save new work and drafts beside that daily note. Use a numbered file or folder named `NN <kind> - <subject>`. Drafts use `NN Draft <kind> - <subject>.md`.
- Share one sequence across numbered files and folders for the day. Choose one more than the highest existing numeric prefix, starting at `01`. Never renumber existing items or overwrite an existing item.
- Keep plain notes without an H1 title. Format issue and PR drafts as they will render.

## Editing and links

- Read an existing note in the current turn before making targeted edits.
- Link every note mentioned in a reply, including the final reply, using the user's configured link format.

## Sidemark

- Only inspect a note's `.review.yaml` threads when the user asks about Sidemark comments.
- Address open threads and append replies describing what changed and quoting the new text. Leave resolution to the user.
