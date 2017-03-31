#!/bin/bash
# Function:create different file according to the date
# 3/29/2017
read -p "Please input the filename you want:" filename
date1=`date --date='2 days ago' +%Y%m%d`
date2=`date --date='1 days ago' +%Y%m%d`
date3=`date +%Y%m%d`
file1="$filename""$date1"
file2="$filename""$date2"
file3="$filename""$date3"
touch $file1
touch $file2
touch $file3
