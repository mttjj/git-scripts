#!/bin/sh

cd "$(dirname "$0")"

FILE="class_info.txt"

LINECOUNT=0
CLASS=""
while IFS= read -r line
do
	((LINECOUNT++))
	if [ $LINECOUNT == 1 ]
		then
			CLASS=$line
			echo "cloning repos for" $CLASS
			echo "=========="
		else
			IFS=, read name username <<< "$line"
			if [ -d $name ]
				then
					echo $name "already exists"
				else
					git clone git@github.com:$username/$CLASS.git $name
			fi
			echo "....."
	fi
done < $FILE

read -n 1 -s -r -p "Press any key to exit"
