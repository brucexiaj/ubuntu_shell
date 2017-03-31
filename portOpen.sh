#!/bin/bash
# whether port 80,22,21,25 of this pc is openned?
# 03/30/2017
testing80=`netstat -tuln | grep ':80'`
testing22=`netstat -tuln | grep ':22'`
testing21=`netstat -tuln | grep ':21'`
testing25=`netstat -tuln | grep ':25'`
if [ "$testing80" != "" ];then
echo "www is running"
fi
if [ "$testing22" != "" ];then
echo "ssh is running"
fi
if [ "$testing21" != "" ];then
echo "ftp is running"
fi
if [ "$testing25" != "" ];then
echo "mail is running"
fi
