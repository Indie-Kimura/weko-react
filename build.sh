#!/usr/bin/env bash

# quit on errors and unbound symbols:
set -o errexit

CURRENT_DIR=$(cd $(dirname $0); pwd)

# build-begin
while read dir
do
    ( cd "$dir"; npm install > "$dir-npm-install.log" 2>&1 )
    ( cd "$dir"; npm run build > "$dir-npm-build.log" 2>&1 )
done <<END
app-author-export
app-author-import
END
# build-end
