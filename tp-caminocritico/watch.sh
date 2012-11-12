#!/bin/bash

TEX_FILE="$1"

LAST_DATE=$(stat -c "%Y" "$TEX_FILE")

while true
do
	DATE=$(stat -c "%Y" "$TEX_FILE")
	if [ $DATE -gt $LAST_DATE ]
	then
		pdflatex "$TEX_FILE"
		LAST_DATE="$DATE"
	fi
	sleep 3
done
