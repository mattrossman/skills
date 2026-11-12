---
name: me-dispatch-chat
description: Start chats from links, requests, or a configured review queue. Prepare each task so the user can take the next step.
---

## Scope

Use this workflow when the user asks to start work in a separate chat or session. Keep ordinary requests in the current conversation. Use the current agent by default unless the user requests another one.

## Inputs

- Given `queue`, use the pending items in the user’s configured review queue. If no queue is configured, ask for a link or task. Do not require a queue or Obsidian setup.
- Invoked alone, use a clear task or selection from the current conversation. If there is none, ask what to dispatch.
- Given one or more links, read them and infer the work needed. Extra wording is optional.
- Given a request, use it to choose the tasks and scope.

Group links about the same task into one chat. Check for existing chats about each task before creating another. Reuse an existing chat when it covers the same work. Do not restart completed work unless the request or new context calls for it.

## Workflow

1. Identify the task and carry over relevant links, the requested outcome, and the user’s constraints. Write an opening prompt that stands alone. Ask the chat to research independently and return a short answer the user can act on. Lead with what it means for them, whether action is needed, and the recommended next step. Answer their questions in a few short paragraphs or a compact list. Include only evidence and caveats that affect that answer. Keep detailed findings available for follow-up instead of turning the research checklist into the report. Respect requests for more depth. Preparation does not authorize sending messages or changing shared systems.
2. Choose the existing project that owns the work. For a pull request, prefer the project for its repository. For work spanning repositories, use the primary project if one is clear. If there is no obvious project, use the agent's default projectless location. Honor a folder or project the user explicitly names.
3. Create the chat and start the task using the current agent's available capabilities. Use the normal local project by default. Create a worktree only if the user asks for one.
4. Pin the chat if the app supports it. Keep it pinned until the user has read the result. Do not assume that a finished run has been read.
5. Give the user a way to open the chat and say what task was started.

## Chats from a queue

Pass in the queue location, entry source link, next action, completion outcome, and queue history conventions. Include any enabled outcome-capture preferences. Do not enable daily notes or Outcomes merely because the task came from a queue. Keep the chat pending while the user has anything left to do.

Include these finish instructions in the opening prompt. When the user says “wrap up” or otherwise finishes the task, check the linked entry. Before removing it, preserve its outcome and source link according to the supplied queue history conventions. Keep any remaining user action in the queue. Mark a completed chat with a leading ✅ and unpin it. Keep it pinned while the result awaits the user’s review.

If the app cannot create, start, link, or pin a chat, say which part is unavailable and offer the closest supported handoff. Do not silently switch agents or claim the task was started.
