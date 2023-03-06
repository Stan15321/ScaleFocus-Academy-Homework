#!/bin/bash

now="$(date)"
printf "Current date and time %s\n" "$now"

user="$(whoami)"
printf "Current user is: %s\n" "$user"

printing_working_directory="$(pwd)"
printf "Current directory is: %s\n" "$printing_working_directory" 
