#!/bin/bash
# ------------------------------------------
while IFS=',' read -r permanent_url pid; do
        echo "MODIFY 10349/$pid"
        echo "100 HS_ADMIN 86400 1110 ADMIN 200:011111110011:0.NA/10349"
	echo "1 URL 86400 1110 UTF8 $permanent_url"
        printf "\n"
done < "$1"
