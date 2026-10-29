# Skills

- [/me-cleanup-code](skills/me-cleanup-code/SKILL.md): Clean up and independently review uncommitted changes.
- [/me-draft-change](skills/me-draft-change/SKILL.md): Implement a plan as uncommitted local changes.
- [/me-draft-issue](skills/me-draft-issue/SKILL.md): Draft an evidence-backed Linear issue for review.
- [/me-draft-review-comment](skills/me-draft-review-comment/SKILL.md): Draft a review comment and identify its PR diff line.
- [/me-draft-pr](skills/me-draft-pr/SKILL.md): Draft a pull request title and description for review.
- [/me-dry-run](skills/me-dry-run/SKILL.md): See how an agent approaches a request before tuning its skills, instructions or tools.
- [/me-trim-comments](skills/me-trim-comments/SKILL.md): Trim comments, test names, and documentation in unstaged changes.

## Install

```sh
npx skills add mattrossman/skills
```

## Develop locally

Clone the repo, then link each skill into `~/.agents/skills/` and link that into `~/.claude/skills/`. For example:

```sh
git clone https://github.com/mattrossman/skills.git
cd skills
mkdir -p ~/.agents/skills ~/.claude/skills
ln -s "$PWD/skills/me-trim-comments" ~/.agents/skills/me-trim-comments
ln -s ~/.agents/skills/me-trim-comments ~/.claude/skills/me-trim-comments
```

Repeat the links for the skills you want to develop. Check for existing skills before replacing them. Edits through either agent's skill path will update the checkout.

## Prerequisites

Each skill lists the tools and access it needs. The drafting skills use Git or Obsidian, with Linear and Git hosting access where relevant. If a dependency is unavailable, the skill explains what is needed and offers a fallback when possible.

See [CONTRIBUTING.md](CONTRIBUTING.md) for maintenance guidance.
