#!/bin/sh

grep -hc "," ./*.txt | sort -nr | awk 'NR==1 { print $1; exit }'
