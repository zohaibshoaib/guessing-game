#!/usr/bin/env bash
# guessinggame.sh

function guessing_game {

	local files_in_dir=$(ls | wc -l)
	local guess_no_of_files

	echo "Guess! How many files are in the current directory?"
	read guess_no_of_files

	while [ $files_in_dir -ne $guess_no_of_files ]
	do
		if [ $files_in_dir -gt $guess_no_of_files ]
		then
			echo "Your guess is too low"
		else
			echo "Your guess is too high"
		fi

		echo "Try to guess again:"
		read guess_no_of_files
		echo "You guess: $guess_no_of_files"
	done

	echo "Congrats! Your guess is correct."

}

echo "Welcome to guessing game!"
guessing_game
