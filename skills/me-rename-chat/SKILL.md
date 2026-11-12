---
name: me-rename-chat
description: Give chats recognizable titles when starting work, after linked context reveals the subject, when the purpose changes, or when asked to rename a chat.
---

## Workflow

1. Identify the concrete subject and purpose from the conversation. If the request is only a link or attachment, read enough context to identify its subject before naming the chat.
2. Choose a title that helps the user recognize the work in a sidebar. Name what is being investigated, built, reviewed, or discussed. Source labels such as “shared Slack thread” or “GitHub issue” are too generic on their own.
3. Rename the current chat using an available chat-management tool. If renaming is unavailable, say so and provide the proposed title without claiming it was applied.
4. Revisit the title after reading context that reveals the subject and before starting work that changes the subject or category.
5. Before the final reply, check whether the title still describes the actual work and distinguishes it from other chats using the same source or workflow. Rename it if needed.

## Completed chats

Keep the leading ✅ when renaming a completed chat. If the user resumes work, remove it and name the active task. Leave the chat unpinned unless asked to pin it.

## Title format

Use `<emoji> <Category> - <subject> [- <qualifier>]`.

Keep the subject to 3–5 lowercase words. Add a qualifier only to distinguish similar chats, such as a PR number, person, phase, or repository. Leave unrelated chats untagged when no category fits.

- 🔨 Build - writing a change
- 👀 Review - reading a diff
- 📊 Research - finding out what is true from code, data, or people
- 💬 Discussion - working out what to do
- 📝 Draft - copy intended for humans
- 🏠 Meta - agent guidance, tooling, and setup
- 🧭 Triage - deciding what is next or waiting

Examples of recognizable subjects include “database hostname compatibility”, “search results pagination”, and “weekly update wording”.
