#!/bin/sh
echo Using Bash loop:
NUMFILES=0
CURRLINES=0
MAXLINES=0
CURRCHARS=0
MAXCHARS=0
MC_FN=
MC_LN=0
for f in *.txt;
do
	NUMFILES=$((NUMFILES+1))
	CURRLINES=0
	while read -r line;
	do
		CURRLINES=$((CURRLINES+1))
		CURRCHARS=${#line}
		if [ $CURRCHARS -gt $MAXCHARS ]
		then
			MAXCHARS=$CURRCHARS
			MC_FN=$f
			MC_LN=$CURRLINES
		fi
	done < "$f"
	if [ $CURRLINES > $MAXLINES ]
	then
		MAXLINES=$CURRLINES
	fi
done
echo $NUMFILES" text files"
echo $MAXLINES" max lines per file"
echo $MAXCHARS" max chars per line"
echo $MC_FN" has the max chars line at "$MC_LN
