#!/bin/sh

in_file=$1
out_file=$2
variable=$3

#echo "var=$variable"
variable=$(echo $variable | sed 's/\\/\\\\/g')
#echo "next var=$variable"
line=$(grep $variable=* $in_file)
value=`echo $line | cut -d "=" -f 2`
echo "set $variable=$value in $out_file"
sed -i s/"$variable"=.*$/"$variable"="$value"/ $out_file
