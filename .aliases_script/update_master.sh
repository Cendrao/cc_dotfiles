#!/bin/sh

echo 'Changing to branch master...'
git co master

echo 'Fetching origin...'
git fetch origin

echo 'Rebasing origin/master'
git rebase origin/master

echo 'All done... result:'
git status
