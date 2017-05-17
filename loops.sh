#!/bin/sh

for i in d3 hello goodbye
do
	echo "Looping ... random thing $i"
done



INPUT_STRING=hello
while [ "$INPUT_STRING" != "bye" ]
do
  echo "Please type something in (bye to quit)"
  read INPUT_STRING
  echo "You typed: $INPUT_STRING"
done


echo "Third while loop:"

while read f                # assigns value to var f
do
  case $f in
	hello)			echo English	;;
	howdy)			echo American	;;
	gday)			echo Australian	;;
	bonjour)		echo French		;;
	"guten tag")	echo German		;;
	*)				echo Unknown Language: $f
		;;
   esac
done < myfile

while :
do
  echo "Please type something in (^C to quit)"
  read INPUT_STRING
  echo "You typed: $INPUT_STRING"
done