#Title:tstsh2.sh
#Data:2023/3/10
#function: test shell programming
#author: wanshui
#!/bin/bash
#
#
note031001() {
trap 'echo "You press int key to cacel, and you press quit to exit "' INT
trap 'echo "Goodbye"; exit' EXIT
echo "Type 'quit' to exit"
while [ "$input" != "quit" ]
do
	read input
done
}


#test() {
	if [ ! -d ~/.trash ]
	then
		mkdir ~/.trash
	fi

	echo $#
	if [ $# -eq 0 ]
	then
		echo "Usage: tstsh2.sh file1 [ file2 file3 ...]"
	else
		echo "You are about to delete these files:"
		echo $@

		echo -n "Are you sure to do that?[Y/n]:"
		read reply
		
		if [ "$reply" == "Y" ] || [ "$reply" == "y" ]
		then
			for file in "$@"
			do
				echo $file
				if [ -f "$file" ]  || [ -d "$file" ] 
				then
						mv -b "$file" ~/.trash/
				else
						echo "$file: No such file or directory"
				fi
			done
		else
		  echo "No file removed"
		fi
	fi
#}






