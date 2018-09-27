#!/bin/bash

set -e

DEST_DIR=${DEST_DIR:-".build/"}
TRAVIS_BUILD_DIR=${TRAVIS_BUILD_DIR:-$(pwd)}


mkdir -p "${DEST_DIR}"
rsync -av --update "${TRAVIS_BUILD_DIR}/site/" "${DEST_DIR}"
cp -r "${TRAVIS_BUILD_DIR}/slides/img" "${DEST_DIR}/img"
cat ${TRAVIS_BUILD_DIR}/slides/*.md > "${DEST_DIR}/anyblok-book-prez.md"
touch "${DEST_DIR}/.nojekyll"
mkdir -p "${DEST_DIR}/js/"
# curl "https://raw.githubusercontent.com/gnab/remark/gh-pages/downloads/remark-latest.min.js" > "${DEST_DIR}/js/remark-latest.min.js"
# echo "domain to do"  > "${DEST_DIR}/CNAME"
