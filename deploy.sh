#!/bin/bash

echo -e "\033[0;32mDeploying updates to GitHub...\033[0m"

# Build the project.
hugo -t hugo-theme-cleanwhite 

# Add changes to git.
git add .

# Commit changes.
msg="Rebuilding site..."

git commit -m "$msg"

# Push source and build repos.
git push

#
