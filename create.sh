 
cat fc.sh << endf

if [$# == 0]
then 
	echo "\nno arguments\n"

else
	ls -l $1 | cut -d ' ' -f1 > file1
	ls -l $2 | cut -d ' ' -f1 > file2

	if cmp file1  file2
	then
		echo "same"
		cat file1

	else
		echo "different"
		cat file1
		echo "\n\n"
		cat file2
	fi
fi
 
endf
