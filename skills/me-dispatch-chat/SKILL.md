---
name: me-dispatch-chat
description: Start a separate agent chat for the user, carrying over context and placing it in the right project.
---

## Scope

Use this workflow when the user asks to start work in a separate chat or session. Keep ordinary requests in the current conversation. Use the current agent by default unless the user requests another one.

## Workflow

1. Identify the task and carry over the context needed to begin. Include relevant links, the requested outcome, and any constraints the user has given. Write the opening prompt so it makes sense on its own.
2. Choose the existing project that owns the work. For a pull request, prefer the project for its repository. For work spanning repositories, use the primary project if one is clear. If there is no obvious project, use the agent's default projectless location. Honor a folder or project the user explicitly names.
3. Create the chat and start the task using the current agent's available capabilities. Use the normal local project by default. Create a worktree only if the user asks for one.
4. Pin the chat if the app supports it. Keep it pinned until the user has read the result. Do not assume that a finished run has been read.
5. Give the user a way to open the chat and say what task was started.

If the app cannot create, start, link, or pin a chat, say which part is unavailable and offer the closest supported handoff. Do not silently switch agents or claim the task was started.
