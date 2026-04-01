#!/bin/bash

# terminate script
die() {
	echo "$1" >&2
	exit 1
}

git config --global user.email "action@github.com" || die "Failed to configure git email"
git config --global user.name "GitHub Action" || die "Failed to configure git name"
git add minimod/ openfish/ || die "adding failed"
if ! git diff --cached --quiet; then
    git commit -m "Update download counts" || die "commit failed"
	git push || die "push failed"
fi

python3 sumup.py minimod > minimod.txt
python3 sumup.py openfish > openfish.txt




