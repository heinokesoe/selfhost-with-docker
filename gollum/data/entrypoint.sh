#!/bin/bash

# Initialize the wiki
if [ ! -d .git ]; then
    git init
    git config user.name "change_username"
    git config user.email "change_email"
    git branch -m master main
fi



exec gollum --ref=main --mathjax --allow-uploads=page --emoji --lenient-tag-lookup
