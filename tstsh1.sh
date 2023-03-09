#Title: test shell commands file1
#author: wanshui
#date: 2023/3/9 begin
#function: test shell commands and grogramming
#!/bin/bash
#
function note030901() {
#test if else fi command
echo "Enter Password："
read password
if [ "$password" = "john" ] 
then
	echo "Hello,John"
elif [ "$password" = "mike" ] 
then
	echo "Hello,Mike!!"
elif [ "$password" = "lewis" ]
then
	echo "Hello,Lewis!!"
else
	echo "Go away!!"
fi
}
#
if ./testscript -1
then
	echo "transport -1 para , reture -1 ,and as true display" 
else
	echo "testscript exit -1, but reture value as false branch"
fi

if ./testscript 0
then
	echo "testscript exit 0"
fi

if ./testscript 1
then
	echo "transport 1 para,return 1, and as ture display "
else
	echo "testscript exit 1, but return value as false branch"
fi


