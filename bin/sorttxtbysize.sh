#!/bin/sh

grep -Hc "," ./*.txt | sort -nr -t":" -k2
