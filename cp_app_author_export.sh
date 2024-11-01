#!/usr/bin/env bash

# quit on errors and unbound symbols:
set -o errexit

# args-check-begin
if [ ! -d "$1" ]; then
    echo "Usage: $0 wekodir"
    exit 1
fi
WEKODIR=$1

if [ ! -d "${WEKODIR}/modules" ]; then
    echo "No such ${WEKODIR}/modules/"
    exit 1
fi
TARGETDIR=$WEKODIR/modules
# args-check-end

# copy-begin
cp -p ./app-author-export/build/static/css/main.*.chunk.css      ${TARGETDIR}/weko-authors/weko_authors/static/css/weko_authors/app-author-export.main.chunk.css
cp -p ./app-author-export/build/static/js/main.*.chunk.js   ${TARGETDIR}/weko-authors/weko_authors/static/js/weko_authors/app-author-export.main.chunk.js
cp -p ./app-author-export/build/static/js/runtime-main.*.js ${TARGETDIR}/weko-authors/weko_authors/static/js/weko_authors/app-author-export.runtime-main.js
cp -p ./app-author-export/build/static/js/2.*.chunk.js      ${TARGETDIR}/weko-authors/weko_authors/static/js/weko_authors/app-author-export.chunk.js
# copy-end
