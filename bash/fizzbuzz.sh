#!/bin/bash

for i in $(seq 1 100)
do
	output=''

	if [ $(( i % 3 )) = '0' ]
	then
		output='Fizz'
	fi
	if [ $(( i % 5 )) = '0' ]
	then
		output=$output'Buzz'
	fi
	if [ ! $output ]
	then
		output=$i
	fi

	echo $output
done
