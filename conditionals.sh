#!/usr/local/bin/bash
read CHAR
if [[ $CHAR == [Yy] ]] 
    then
        echo "YES"
elif [[ $CHAR == [Nn] ]] 
    then
        echo "NO"
else
    echo "Invalid Input"
fi