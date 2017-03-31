#!/bin/bash
#judge whether you are a child,teenage,or adult
#03/30/2017
#it is all ok to put " in front of 12 or not
read -p "you age:" age
if [ $age -le "12" ]; then
echo "you are a child"
elif [ $age -le 18 ];then
echo "you are a teenager"
else
echo "you are a adult"
fi
