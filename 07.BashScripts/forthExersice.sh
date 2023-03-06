#!/bin/bash

printf "Please input a name of a file or directory: \n"

read input

if [ -f $input ];then
printf "%s is a regular file" "$input"
elif [ -d $input ];then
printf "%s is a directory" "$input"
else
printf "%s is another type of file" "$input"
fi

ls -l "$input"


