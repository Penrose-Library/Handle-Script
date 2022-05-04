#!/bin/bash
while IFS='' read -r line  || [[ -n "$line" ]]; do
	LOCATION=`curl -sI "http://hdl.handle.net/$line" | grep "Location: " | cut -d" " -f2`
	echo "$line, $LOCATION"
done < "$1"