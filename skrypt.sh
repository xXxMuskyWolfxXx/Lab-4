#!/bin/bash
komenda=$1
if [ "$komenda" == "--date" ]
then
	date -u
else
	echo "brak lub zła komenda"
fi
