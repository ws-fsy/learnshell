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
function note030902() {
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
}
#   
#test case command
function note030903() {
echo "Please input case key: "
read casekey
case $casekey in
	1)
	echo "you input is 1, go 1 branch"
	;;
	2)
	echo "you input is 2, go 2 branch"
	;;
	3)
	echo "you input is 3, to 3 branch"
	;;
	*)
	echo "you don't input case key in 1-3 , input value is : $casekey "
	;;
esac
}
#test while sentence 
note030904() {
echo -n "Enter a number (>0):"
while read n
do
	sum=0
	count=1

	if [ $n -gt 0 ]
	then
		while [ $count -le $n ]
		do
			sum=$[ $sum + $count ]
			let count=$count+1
		done
		echo "The summary is $sum"
	else
		echo "Please enter a number greater than 0 "
	fi

	echo -n "Enter a number (>0):"
done
}

#test until sentence
echo -n "Enter a number (>0):"
read n
until ! [ $n -le 100 ] 
do
	sum=0
	count=1
	if [ $n -gt 0 ]
	then
		while [ $count -le $n ]
		do
			sum=$[ $sum + $count ]
			let count=$count+1
		done
		echo "The summary is $sum"
	else
		echo "Please enter a number greater than 0"
	fi

	echo -n "Ener a nunber (>0):"
	read n
done



#
#
#
#









