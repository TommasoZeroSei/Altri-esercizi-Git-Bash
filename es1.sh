#!/bin/bash

cd $HOME/Desktop
rm -rf branchRepoLog
git init branchRepoLog
cd branchRepoLog

contatore=1
for i in {1..4}; do
touch file$contatore.txt
git add file$contatore.txt
((contatore++))
touch file$contatore.txt
git add file$contatore.txt
((contatore++))

git commit -m "main_C$i"
done

git log --oneline
