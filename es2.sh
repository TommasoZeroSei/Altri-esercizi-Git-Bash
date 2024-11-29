#!/bin/bash

cd $HOME/Desktop

rm -rf mergeRepo
git init mergeRepo
cd mergeRepo

echo "initial content file1" > file1.txt
echo "initial content file2" > file2.txt
echo "initial content file3" > file3.txt
git add file1.txt file2.txt file3.txt
git commit -m "Initial commit"

git log --oneline

git branch F1
git branch F2

git checkout F1
echo "data in file1 branch F1" >> file1.txt
echo "data in file2 branch F1" >> file2.txt
git add file1.txt file2.txt
git commit -m "Commit su F1"

git log --oneline --graph --all

git checkout F2
echo "some data in file1 branch F2" >> file1.txt
echo "some data in file2 branch F2" >> file2.txt
git add file1.txt file2.txt
git commit -m "Commit su F2"

git log --oneline --graph --all

git checkout main
git merge F1
git branch -d F1

git merge F2
nano file1.txt
nano file2.txt
git add file1.txt file2.txt
git commit -m "Merge F2 -> main"
git branch -d F2

git log --oneline --graph --all
