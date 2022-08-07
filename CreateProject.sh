#!/bin/bash

PROJECT_NAME="$1"

cd ~/Developer/$PROJECT_NAME
git init
echo "# $PROJECT_NAME" >> README.md
git ignore swift,macOS >.gitignore
git add *
git commit -m "Initial commit"
git branch -M main
git remote add origin git@github.com:rtodddev/$PROJECT_NAME.git
git push -u origin main
