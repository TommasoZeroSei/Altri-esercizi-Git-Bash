#!/bin/bash

cd $HOME/Desktop
rm -rf fileManagementRepo
git init fileManagementRepo
cd fileManagementRepo

echo "data in file1.txt" > file1.txt
echo "data in file2.txt" > file2.txt
echo "data in file3.txt" > file3.txt
git add file1.txt file2.txt file3.txt
git commit -m "Initial commit"

git branch featureA
git branch featureB

git checkout featureA
echo "other data in file1.txt" >> file1.txt
git add file1.txt
mkdir dirA
git mv file2.txt dirA
git rm file3.txt
git commit -m "Commit featureA"

git checkout featureB
touch file4.txt
echo "extra data in file1.txt" >> file1.txt
