---
title: "Remove Git Repo Configuration and History"
tags: ['git', 'source-control']
date: 2014-08-12T15:39:55-04:00
---
Step 1: Remove all history

    rm -rf .git
    
Step 2: Reconstruct the Git repository

    git init
    git add .
    git commit -m "Initial commit"

Step 3: push to GitHub.

    git remote add origin <github-uri>
    git push -u --force origin master

