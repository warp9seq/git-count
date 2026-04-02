#!/bin/bash

# terminate script
die() {
	echo "$1" >&2
	exit 1
}

LIST="minimod openfish kuva buttery-eel blue-crab f5c slow5lib slow5tools sigtk squigulator cornetto slow5curl slorado"

for each in $LIST; do
	python3 sumup.py ${each} > ${each}.txt
	T=$(grep "Total clones" ${each}.txt | awk '{print $NF}')
	U=$(grep "Total uniques" ${each}.txt | awk '{print $NF}')
	echo '{"schemaVersion": 1, "label": "total clones", "message": "count: '${T}' | uniques: '${U}'" }' > ${each}.json
done

git config --global user.email "action@github.com" || die "Failed to configure git email"
git config --global user.name "GitHub Action" || die "Failed to configure git name"
git add *.txt *.json ${LIST} || die "adding failed"
if ! git diff --cached --quiet; then
    git commit -m "Update download counts" || die "commit failed"
	git push || die "push failed"
fi


