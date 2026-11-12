---
name: me-finish-chat
description: Finish a chat when the user says wrap up, done, or finish here. Record the outcome, update linked follow-ups, mark the title complete, and unpin it.
---

## Scope

The chat is done when the user has nothing left to do for the task. If they still need to review, decide, send, or follow up, keep it pending.

Quoted text, status questions, and finishing one subtask do not mean the whole chat is done. If the user wants to stop with work unfinished, record what remains and leave it pending.

## Workflow

1. Read the conversation and the context passed in when the chat started. Identify the task, its outcome, and any remaining work. Use a queue entry only if it was linked in the conversation or opening context. Without a linked entry, skip queue cleanup. Do not search for a queue, create one, or ask the user to configure one. The user does not need to mention the queue when finishing.
2. Check whether the task is complete. Use observed results or the user’s clear report of what they did. Say when a fact comes from the user. Re-read shared sources before checking their current state or proposing an action there. A draft is not a sent message. A finished agent turn does not show that the user read it. Check whether the user has anything left to do. Ask one focused question only if the answer affects completion.
3. If the chat has a linked queue entry, update it using the supplied queue location and conventions. Read the queue and today’s daily note before editing. Before removing an entry, record its outcome and source link in today’s note. Say whether it was completed, canceled, or handed off. Remove it only when no user action remains. Otherwise, keep it and update its next action and relevant context. Preserve other entries and past history. Do not duplicate an outcome already recorded.
4. For a completed chat, add ✅ once at the start of its title and unpin it. Keep the category and subject. Archive only if asked. Leave unfinished chats unmarked. Unpin an unfinished chat only if the user wants to set it aside and its remaining work is recorded. Report any cleanup that failed or was unavailable.
5. Briefly state the outcome, what remains, and which notes changed. Link updated notes. Finishing a chat does not grant permission to send messages, create issues, commit, push, or change shared systems.
