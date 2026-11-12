## 2026-11-12

### Make queue dispatch explicit

Use `queue` to select the configured review queue. Bare invocation uses a clear task from the conversation or asks what to dispatch. This replaces the implicit queue default because the skill name does not suggest it.

### Dispatch with minimal input

Accept links without extra wording and use a configured review queue when invoked alone. Keep queue setup optional. Group related sources and reuse existing task chats to avoid duplicates during repeated dispatches. Start each chat with research or inspection that prepares a concrete next step for the user.

### Carry queue context into dispatched chats

Pass the linked entry and completion outcome into chats started from a queue. Include finish instructions so the user can wrap up without naming the queue again. Keep results pinned until reviewed and tasks pending while the user has work left.
