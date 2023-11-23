#!/bin/bash
sh convert.sh
branch=$(git symbolic-ref HEAD | sed -e 's,.*/\(.*\),\1,')
git pull origin $branch
git add .
current="`date +'%Y-%m-%d %H:%M:%S'`"
msg="Updated: $current"
git commit -m "wip $branch $msg"
git push origin $branch

