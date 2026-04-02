#!/bin/bash

# terminate script
die() {
	echo "$1" >&2
	exit 1
}

LIST="minimod openfish kuva buttery-eel blue-crab f5c slow5lib slow5tools sigtk squigulator cornetto slow5curl slorado"

for each in $LIST; do
	python3 sumup.py ${each} > ${each}.txt
done

git config --global user.email "action@github.com" || die "Failed to configure git email"
git config --global user.name "GitHub Action" || die "Failed to configure git name"
git add *.txt ${LIST} || die "adding failed"
if ! git diff --cached --quiet; then
    git commit -m "Update download counts" || die "commit failed"
	git push || die "push failed"
fi


