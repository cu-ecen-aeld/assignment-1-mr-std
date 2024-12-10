#!/bin/sh

if [ $# -lt 2 ]
then
        echo "Not enough arguments specified!"
        exit 1
fi

WRITE_PATH="$1"
WRITE_DIR=$(dirname "$WRITE_PATH")

WRITE_STR=$2

if ! [ -d "$WRITE_DIR" ]
then
	mkdir -p "$WRITE_DIR"
fi

touch -f "$WRITE_PATH"

if [ -e "$WRITE_PATH" ]
then
	echo "$WRITE_STR" > "$WRITE_PATH"
else
	echo "The file ${WRITE_PATH} doesn't exist!"
	exit 1
fi

exit 0
