#!/bin/bash
#program to create bundle script

if [$# == 0]
then 
	echo "\n0 arguments\n"
else
	echo " ">create.sh
	
	for i in $*
	do
		echo "cat $i<<endf" >> create.sh
		cat $i>>create.sh
		echo "endf">>create.sh
	done
fi
exit 1
