#!/usr/bin/env bash

read SITECREDS < ~/.ssh/sitecreds

if [ -z "$SITECREDS" ]; then
	echo "Could NOT read site credits. Exiting."
	exit 666
fi

echo "Starting deploy ------------------"

lftp -c "set ftp:list-options -a; \
	open $SITECREDS; \
	lcd ./_site; \
	mirror --reverse --delete --use-cache --verbose --allow-chown \
	--allow-suid --no-umask --parallel=2 --exclude-glob .git; \
	close -a;"

echo "Done. ------------------"
