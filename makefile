#!/usr/bin/env bash

# Function to count files in current directory
function file_count {
  echo $(ls -1 | wc -l)
}

correct=$(file_count)
guess=-1

echo "Welcome to the Guessing Game!"
echo "How many files are in the current directory?"

while [[ $guess -ne $correct ]]
do
  read -p "Enter your guess: " guess
  if [[ $guess -lt $correct ]]; then
    echo "Too low! Try again."
  elif [[ $guess -gt $correct ]]; then
    echo "Too high! Try again."
  fi
done

echo "🎉 Congratulations! You guessed it right: $correct files."
