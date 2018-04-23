#!/usr/bin/env bash
# File: guessinggame.sh

# This program will continuously ask - while loop
# the user to guess the number of files in the currect directory - user input
# The user will be informed if
# their guess is too high - echo
# or too low - elif echo
# Once the user guesses the correct number of files - if correct (flag)
# they should be congratulated - echo

function number_of_files {
	local num=$(ls | wc -l)
	echo "$num"
}

correct=false

while [[ $correct = "false"  ]]
do
	echo "Please guess the number of files in the current directory: "
	read response
	
	num=$(number_of_files) 

	if [[ $response -eq $num ]]
	then 
		correct=true
		echo "Congratulations !!! You are correct."
	elif [[ $response -gt $num ]]
	then
		echo "Your response is too high"
	else [[ $repsonse -lt $num ]]
		echo "Your response is too low"
	fi
done

echo "bye now"
