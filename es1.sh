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

git checkout -b "BF$i"

for j in $(seq 1 $i); do
touch BF${i}_file$j.txt
git add BF${i}_file$j.txt
git commit -m "BF${i}_C$j"
done

git checkout main

done

touch lastFile.txt
git add lastFile.txt
git commit -m "EndCommit"

git log --oneline --all --graph

echo "Repo setup DONE!"
