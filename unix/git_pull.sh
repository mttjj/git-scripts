#!/bin/sh

for f in ~/code/CSA_1st/*
  do
    if [ -d $f ] 
      then 
        cd "$f"
  	    if [ -d .git ] 
  	      then
  	        echo $f
  	        git pull
  	    fi
    fi
  done
  
read -n 1 -s -r -p "Press any key to exit"
