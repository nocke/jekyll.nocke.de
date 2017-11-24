#!/usr/bin/env bash

TITLE="$*"
# Teststring: TITLE="die Jürgen ÄÖÜ.!#äöü Straße 42🎜 ♬"

if [ $# -eq 0 ]; then
    printf "\nusage: ./script/create-post.sh The title of your blogpost goes here\n\n"
    exit 1
fi

# Prepare the slug
SLUG=$TITLE
SLUG="$(echo -n "$SLUG" | sed -e 's/[^[:alnum:]]/-/g')"
SLUG="$(echo -n "$SLUG" | tr -s '-')"
SLUG="$(echo -n "$SLUG" | sed 'y/ąćęłńóśźż/acelnoszz/')"
SLUG="$(echo -n "$SLUG" | sed 's/ß/ss/g')"
SLUG="$(echo -n "$SLUG" | sed 's/ä/ae/g')"
SLUG="$(echo -n "$SLUG" | sed 's/ö/oe/g')"
SLUG="$(echo -n "$SLUG" | sed 's/ü/ue/g')"
SLUG="$(echo -n "$SLUG" | sed 's/Ä/Ae/g')"
SLUG="$(echo -n "$SLUG" | sed 's/Ö/Oe/g')"
SLUG="$(echo -n "$SLUG" | sed 's/Ü/Ue/g')"
SLUG="$(echo -n "$SLUG" | sed -e 's/^[\-]*//' -e 's/[\-]*$//')"

DATE=`date +%Y-%m-%d`
TYPE='.md'
PERMALINK=${DATE}-${SLUG}${TYPE}
FULLPATH=./_posts/${PERMALINK}
# (do not call it path, for obvious reasons)

echo TITLE:  $TITLE
echo SLUG:   $SLUG
echo DATE:   $DATE
echo PERMA:  $PERMALINK
echo PATH:   $FULLPATH

# (touch + append avoids accidental deletion of already existing)
touch ${FULLPATH}

echo "---
layout: post
title: ${TITLE}
permalink: ${PERMALINK}
categories: hamburg, frontend, javascript
lang: en
---

" >> $FULLPATH;

echo "Done -----------------"
code -r "$FULLPATH"
