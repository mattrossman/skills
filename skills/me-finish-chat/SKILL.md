---
name: me-finish-chat
description: Finish a chat when the user says wrap up, done, or finish here. Record the outcome, update linked follow-ups, mark the title complete, and unpin it.
---

## Scope

The chat is done when the user has nothing left to do for the task. If they still need to review, decide, send, or follow up, keep it pending.

Quoted text, status questions, and finishing one subtask do not mean the whole chat is done. If the user wants to stop with work unfinished, record what remains and leave it pending.

## Workflow

1. Read the conversation and the context passed in when the chat started. Identify the task, its outcome, and any remaining work. Use a queue entry only if it was linked in the conversation or opening context. Without a linked entry, skip queue cleanup. Do not search for a queue, create one, or ask the user to configure one. The user does not need to mention the queue when finishing.
2. Check whether the task is complete. Use observed results or the user’s clear report of what they did. Say when a fact comes from the user. For a task centered on a shared thread, read its latest replies immediately before deciding completion. Match any remaining action to the latest reply and its owner. Waiting for someone else does not by itself establish another action for the user. A draft is not a sent message. A finished agent turn does not show that the user read it. Check whether the user has anything left to do. Ask one focused question only if the answer affects completion.
3. If the user requested outcome capture or their guidance enables it, record meaningful progress using the configured destination and format. This applies with or without a linked queue entry, including unfinished work. Update an existing workstream entry where appropriate and link supporting evidence. Otherwise, skip outcome capture without asking the user to set it up. Recording progress does not mark an unfinished task complete.
4. If the chat has a linked queue entry, read the current queue and update that entry using its supplied location and conventions. Before removing it, preserve its outcome and source link according to the queue’s history rules. Use daily Outcomes only when those rules specify them. Remove the entry only when no user action remains. Otherwise, keep it and update its next action and relevant context. Preserve unrelated entries and history. Avoid recording the same outcome twice. Keep queue housekeeping and verification commentary in the chat. Without a linked entry, skip queue cleanup.
5. For a completed chat, add ✅ once at the start of its title and unpin it. Keep the category and subject. Archive only if asked. Leave unfinished chats unmarked. Unpin an unfinished chat only if the user wants to set it aside and its remaining work is recorded. Report any cleanup that failed or was unavailable.
6. Briefly state the outcome, what remains, and which notes changed. Link updated notes. Finishing a chat does not grant permission to send messages, create issues, commit, push, or change shared systems.
