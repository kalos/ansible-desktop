#!/bin/sh

# faccio il backup dei file .org ogni ora (se cambiano)

cd /home/kalos/projects/org

# Remove deleted files
git ls-files --deleted -z | xargs -0 git rm

# Add new files
git add .
git commit -m "backup automatico: $(date)"
