
#!/bin/bash

# Function to perform bubble sort
bubble_sort() {
  local -n arr=$1
  local n=${#arr[@]}
  local temp

  for ((i = 0; i < n - 1; i++))
  do
    for ((j = 0; j < n - i - 1; j++))
    do
      if ((arr[j] > arr[j + 1]))
      then
        # Swap elements
        temp=${arr[j]}
        arr[j]=${arr[j + 1]}
        arr[j + 1]=$temp
      fi
    done
  done
}

# Function to perform insertion sort
insertion_sort() {
  local -n arr=$1
  local n=${#arr[@]}

  for ((i = 1; i < n; i++))
  do
    key=${arr[i]}
    j=$((i - 1))

    # Move elements that are greater than key to one position ahead of their current position
    while ((j >= 0 && arr[j] > key))
    do
      arr[j + 1]=${arr[j]}
      j=$((j - 1))
    done

    arr[j + 1]=$key
  done
}

# Main script
echo "Enter the elements of the array (space-separated):"
read -a array

echo "Choose sorting algorithm:"
echo "1. Bubble Sort"
echo "2. Insertion Sort"
read -p "Enter your choice (1 or 2): " choice

case $choice in
  1)
    bubble_sort array
    echo "Sorted array using Bubble Sort: ${array[@]}"
    ;;
  2)
    insertion_sort array
    echo "Sorted array using Insertion Sort: ${array[@]}"
    ;;
  *)
    echo "Invalid choice."
    ;;
esac
