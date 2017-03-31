#!/bin/bash
#Given your id card,calculate the days to your birthday
#31/03/2017
#!!!Alert:if you want to run this project in ubuntu,please use commond "bash youBir#thday.sh",because unubtu defaultly use dash,which donot support "declare -i"
read -p "Please input your id card:" id
format=`echo $id | grep '[0-9]\{17,17\}[0-9X]'`
if [ "$format" = "" ];then
echo "your input is valid" && exit 0
fi
month=`echo $id | cut -c 11-12`
date=`echo $id | cut -c 13-14`
case $month in
"01")
monthString="Jan"
;;
"02")
monthString="Feb"
;;
"03")
monthString="Mar"
;;
"04")
monthString="Apr"
;;
"05")
monthString="May"
;;
"06")
monthString="Jun"
;;
"07")
monthString="Jul"
;;
"08")
monthString="Aug"
;;
"09")
monthString="Sep"
;;
"10")
monthString="Oct"
;;
"11")
monthString="Nov"
;;
"12")
monthString="Dec"
;;
*)
echo "you input is error!" && exit 0
;;
esac
today=`date +%-j`
birthday=`date --date="$monthString $date" +%-j`
declare -i toBirthday=$(($birthday-$today))
if [ $toBirthday -gt 0 ];then
echo "the day to your birthday:$toBirthday"
else
echo "you birthday has passed" && exit 0
fi
