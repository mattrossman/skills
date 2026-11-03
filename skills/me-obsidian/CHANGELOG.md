# Changelog

## 2026-11-03

### Consolidate repeated review pings

Match the underlying review across different message URLs and channels. Keep one queue entry with its existing next action and priority, plus dated source links and the people waiting on each follow-up. A repeated ping for an already queued PR should refresh its follow-up history rather than create another task. Matt explicitly requested both logical deduplication and a record of where to respond.

## 2026-11-02

### Keep reviews in a persistent queue

Use a mutable root-level Review Queue.md for pending reviews and follow-ups, with outcomes preserved in dated daily notes. Matt wants reviews to survive missed reminders without losing daily history. Reuse the existing queue and retain unverified entries until checked.

### Document daily note plugins

Recommend Periodic Notes and Folder notes for creating and navigating daily notes. Calendar is optional. The file-based workflow remains usable without them.

### Define the daily work structure

Keep the daily folder and shared numbered sequence in the skill, so recent work is easy to find. Count files and folders by their highest prefix to avoid reusing a number after a deletion. Sidemark is optional and used only when requested.

### Centralize draft numbering

The vault workflow owns the shared daily counter for PR and issue drafts. Both drafting skills previously duplicated it.

### Use configured vault conventions

Keep the workflow reusable while using the user's configured vault location, note layout, and link format. The personal configuration remains available outside the skill.

## 2026-10-09

### Link every mentioned note

Require a link even in the final reply. A previous agent gave only a path after editing a note, making it harder to open.
