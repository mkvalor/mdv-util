#!/bin/sh

cat ./*.txt | awk '{ if ( length > L ) { L=length } } END { print L }'
