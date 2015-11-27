#!/bin/bash

##program to reverse given args

if [$# == 0]
then
	echo "\n) arguments\n"
else
	echo "\ninput string is $* count $#\n"
	for x in "$@"
	do
		y=$x" "$y
	done
	echo "rev : $y"
fi
