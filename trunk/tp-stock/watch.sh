#!/bin/bash

LAST_DATE=$(stat -c "%Y" tp-stock.tex)

while true
do
	DATE=$(stat -c "%Y" tp-stock.tex)
	if [ $DATE -gt $LAST_DATE ]
	then
		pdflatex tp-stock.tex
		LAST_DATE="$DATE"
	fi
	sleep 3
done
