#!/bin/bash 

if [ -f $FILENAME ]; then
	rm -f $FILENAME
fi

wget -nc https://feeds.simplecast.com/XA_851k3
FILENAME='XA_851k3'

if [ -f $FILENAME ]; then
	cat $FILENAME 
	cat $FILENAME | grep mp3 | cut -d"=" -f4 | cut -d'"' -f2 | cut -d"?" -f1 | xargs wget -nc
	rm -f $FILENAME
fi
