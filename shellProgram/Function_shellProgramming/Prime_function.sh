
#!/bin/bash

# Function to check if a number is prime
is_prime() {
  local number=$1

  # 0 and 1 are not prime numbers
  if [ $number -le 1 ]
  then
    echo "$number is not a prime number."
    return
  fi

  # 2 and 3 are prime numbers
  if [ $number -le 3 ]
  then
    echo "$number is a prime number."
    return
  fi

  # Check if the number is divisible by any number from 2 to the square root of the number
  for ((i = 2; i * i <= number; i++))
  do
    if [ $((number % i)) -eq 0 ]
    then
      echo "$number is not a prime number."
      return
    fi
  done

  # If no divisors are found, the number is prime
  echo "$number is a prime number."
}

# Check if an argument is passed
if [ $# -eq 0 ]
then
  echo "Usage: $0 <number>"
  exit 1
fi

# Call the function with the command-line argument
is_prime $1
