#!/bin/bash

if [! -z "$1" ] && [! -z "$2"] && [ -z "$3" ] && [[ $1 * ".txt" ]]

then

FILENAME="$HOME/$1"

if [ -f "$FILENAME" ]; then

grep -P “^[a-zA-Z]+(?: [a-zA-Z]+)* ($2)$" $FILENAME

echo "Goodbye!"

else

echo “ “

echo "$1 is not Found"

echo “ “

fi


else
echo “ “

fi