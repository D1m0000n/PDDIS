# !/usr/bin/bash

if [ -f diff.txt ] ; then
	rm diff.txt
fi

git clone $1
repo_name=$(basename -- "$1")
cd $repo_name
git switch $2
git switch $3
git diff $2..$3 --name-only --output=../diff.txt
cd ..
yes | rm -r $repo_name
