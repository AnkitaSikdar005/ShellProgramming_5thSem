#!/bin/bash

# Function to calculate the sum of the digits
sum_of_digits() {
  local number=$1
  local sum=0

  # Loop through each digit in the number
  while [ $number -gt 0 ]; do
    local digit=$((number % 10))  # Get the last digit
    sum=$((sum + digit))          # Add the digit to the sum
    number=$((number / 10))       # Remove the last digit
  done

  echo $sum
}

# Check if an argument is passed
if [ $# -eq 0 ]; then
  echo "Usage: $0 <number>"
  exit 1
fi

# Call the function with the command-line argument
result=$(sum_of_digits $1)

# Display the result
echo "The sum of the digits of $1 is: $result"
