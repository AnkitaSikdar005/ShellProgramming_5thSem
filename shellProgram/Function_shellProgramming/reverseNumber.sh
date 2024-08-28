#!/bin/bash

# Function to reverse the digits of a number
reverse_number() {
  local number=$1
  local reverse=0

  # Loop to reverse the number
  while [ $number -gt 0 ]
  do
    local digit=$((number % 10))           # Get the last digit
    reverse=$((reverse * 10 + digit))      # Append the digit to the reverse
    number=$((number / 10))                # Remove the last digit
  done

  echo $reverse
}

# Check if an argument is passed
if [ $# -eq 0 ]
then
  echo "Usage: $0 <number>"
  exit 1
fi

# Call the function with the command-line argument
result=$(reverse_number $1)

# Display the result
echo "The reverse of the number $1 is: $result"
