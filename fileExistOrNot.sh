#!/bin/bash
#Function:judge whether a file or directory is exist,if not create it
read -p "The name of file or directory you want to find:" name
test -e $name && echo "file or directory already exist!" && exit 0 || echo "no such file or directory,if you want to create a file,enter f,else enter d" 
read  kind
str1="f"
test $kind = $str1 && touch $name || mkdir $name
test -f $name && echo "file $name have been created" || echo "directory $name has been created"

