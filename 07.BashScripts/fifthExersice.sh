#!/bin/bash

if [ $# -ne 3 ];
then
printf "Error: must provide exactly 3 arguments.\n"
exit 1
fi

printf "My nickname is: %s\n" "$1"
printf "My age is: %d\n" "$2"
printf "My full name is: %s\n" "$3"



