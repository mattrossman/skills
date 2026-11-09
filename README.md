# Skills

A collection of [agent skills](https://agentskills.io/home) I use to speed up common workflows and improve the output of agents.

My workflow revolves around writing drafts that I can directly or indirectly refine before sharing with other humans. Mostly this means using Obsidian to organize drafts as documents in daily folders, but I also use surfaces like Linear documents or draft PRs to iterate depending on where it's more ergonimic to review. One of my main goals is reducing human-facing noise.

In addition to the work itself, I also use skills for self-improvement to various layers "guidance" like local or shared memory files and skills.

- [/me-catchup](skills/me-catchup/SKILL.md): Recap where a session left off using current work state.
- [/me-cleanup-code](skills/me-cleanup-code/SKILL.md): Clean up and independently review uncommitted changes.
- [/me-draft-change](skills/me-draft-change/SKILL.md): Implement a plan as uncommitted local changes.
- [/me-draft-issue](skills/me-draft-issue/SKILL.md): Draft an evidence-backed Linear issue for review.
- [/me-draft-review-comment](skills/me-draft-review-comment/SKILL.md): Draft a review comment and identify its PR diff line.
- [/me-draft-pr](skills/me-draft-pr/SKILL.md): Draft a pull request title and description for review.
- [/me-dry-run](skills/me-dry-run/SKILL.md): See how an agent approaches a request before tuning its skills, instructions or tools.
- [/me-obsidian](skills/me-obsidian/SKILL.md): Read, write, and link notes using your Obsidian vault conventions.
- [/me-prepare-commits](skills/me-prepare-commits/SKILL.md): Prepare local changes for commits and push them after approval.
- [/me-remember](skills/me-remember/SKILL.md): Save knowledge to agent memory in the right scope.
- [/me-second-opinion](skills/me-second-opinion/SKILL.md): Get an independent assessment from another coding agent.
- [/me-skill](skills/me-skill/SKILL.md): Create or improve a reusable skill.
- [/me-sync](skills/me-sync/SKILL.md): Sync the current repository while preserving local work.
- [/me-trim-comments](skills/me-trim-comments/SKILL.md): Trim comments, test names, and documentation in unstaged changes.

## Install

```sh
npx skills add mattrossman/skills
```

## Develop locally

Clone the repo, then link each skill into `~/.agents/skills/` and link that into `~/.claude/skills/`. For example:

```sh
gh repo clone mattrossman/skills
cd skills
mkdir -p ~/.agents/skills ~/.claude/skills
ln -s "$PWD/skills/me-trim-comments" ~/.agents/skills/me-trim-comments
ln -s ~/.agents/skills/me-trim-comments ~/.claude/skills/me-trim-comments
```

To link all repo skills for Codex and Claude Code (or re-link after a pull), run:

```sh
./scripts/sync-skills.sh
```

For an existing personal skill, follow the backup, migration, and verification steps in [CONTRIBUTING.md](CONTRIBUTING.md#migrating-an-installed-skill).

## Prerequisites

Each skill lists the tools and access it needs. The drafting skills use Git or Obsidian, with Linear and Git hosting access where relevant. If a dependency is unavailable, the skill explains what is needed and offers a fallback when possible.

See [CONTRIBUTING.md](CONTRIBUTING.md) for maintenance guidance.
