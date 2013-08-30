#!/bin/sh

bat=`acpi`
if [ -z "$bat" ]; then
	echo ""
else
#echo `echo $bat | cut -d " " -f4 | cut -b -3` " "
echo $bat | awk ' { print $4 } ' | tr "%," " " 
fi
