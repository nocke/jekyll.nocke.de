#!/usr/bin/env bash

# switch to script parent dir == project dir
cd "$(dirname $(dirname $0))"

if ! [[ "$PWD" =~ \/jekyll$ ]]; then
	echo "you are not in the jekyll folder!"
	exit 1
fi

read SITECREDS < ~/.ssh/sitecreds

if [ -z "$SITECREDS" ]; then
	echo "Could NOT read credits. Exiting."
	exit 2
fi

echo "Starting JEKYLL deploy ------------------"

lftp -c "set ftp:list-options -a; \
	open $SITECREDS; \
	lcd ./_site; \
	mirror --reverse --delete --use-cache --verbose --allow-chown \
	--allow-suid --no-umask --parallel=2 --exclude-glob .git; \
	close -a;"

echo "Done. ------------------"
