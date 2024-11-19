#!/bin/bash

# Function to count the number of files in the current directory
count_files() {
    local count=$(ls -1 | wc -l)
    echo $count
}

# Main program
echo "Welcome to the Guessing Game!"
echo "Can you guess how many files are in the current directory?"

# Get the actual number of files using the function
file_count=$(count_files)

while true; do
    # Prompt the user for their guess
    read -p "Enter your guess: " guess

    # Check if the input is a valid number
    if ! [[ "$guess" =~ ^[0-9]+$ ]]; then
        echo "Please enter a valid number."
        continue
    fi

    # Compare the guess with the actual number of files
    if (( guess < file_count )); then
        echo "Too low! Try again."
    elif (( guess > file_count )); then
        echo "Too high! Try again."
    else
        echo "Congratulations! You guessed it right!"
        break
    fi
done
