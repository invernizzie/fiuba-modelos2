#!/bin/bash

LAST_DATE=$(stat -c "%Y" tp-colas.tex)

while true
do
	DATE=$(stat -c "%Y" tp-colas.tex)
	if [ $DATE -gt $LAST_DATE ]
	then
		pdflatex tp-colas.tex
		LAST_DATE="$DATE"
	fi
done
