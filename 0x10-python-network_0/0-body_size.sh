#!/bin/bash
# a script that displays the response bondy length from a url
curl -sI "$1" | grep -i '^Content-length' | awk '{print $2}'
