#!/bin/zsh

VAULT="/Users/zokka/Library/Mobile Documents/iCloud~md~obsidian/Documents/8-bit Computer"
cd "$VAULT" || exit 1

# Wait 1 seconds to let iCloud finish syncing
sleep 1

# Pull latest changes from GitHub
git pull --rebase

# Stage all changes
git add .

# Commit if there are changes
if ! git diff --cached --quiet; then
  git commit -m "vault autosync: $(date '+%Y-%m-%d %H:%M')"
  git push
fi

