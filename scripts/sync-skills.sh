#!/usr/bin/env bash
set -eu

repo_dir="$(cd -- "$(dirname -- "${BASH_SOURCE[0]}")/.." && pwd -P)"
agents_dir="$HOME/.agents/skills"
claude_dir="$HOME/.claude/skills"
conflicts=0

mkdir -p "$agents_dir" "$claude_dir"

ensure_link() {
  local target="$1" link="$2"
  if [[ -L "$link" && "$link" -ef "$target" ]]; then
    return
  fi
  if [[ -e "$link" || -L "$link" ]]; then
    printf 'Conflict: %s already exists; left unchanged\n' "$link" >&2
    conflicts=1
    return
  fi
  ln -s "$target" "$link"
  printf 'Linked %s -> %s\n' "$link" "$target"
}

for skill in "$repo_dir"/skills/*; do
  [[ -d "$skill" && -f "$skill/SKILL.md" ]] || continue
  name="$(basename "$skill")"
  agents_link="$agents_dir/$name"
  ensure_link "$skill" "$agents_link"
  if [[ -L "$agents_link" && "$agents_link" -ef "$skill" ]]; then
    ensure_link "$agents_link" "$claude_dir/$name"
  fi
done

if (( conflicts )); then
  printf 'Some skills were not linked because of conflicts.\n' >&2
  exit 1
fi
