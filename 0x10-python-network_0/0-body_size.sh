#!/usr/bin/env bash
# a script that displays the response bondy length from a url

if [ $# -eq 0 ]; then
	echo "Usage: $0 <URL>"
	exit 1
fi

link=$1
header_response=$(curl -sI "$link")
echo "$header_response" | grep -i '^Content-length:' | awk '{print $2}' | tr -d "\r\n"
