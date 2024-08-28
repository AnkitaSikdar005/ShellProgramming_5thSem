#!/bin/bash

# Using for loop
echo "Using for loop:"
for ((i=1; i<=10; i++))
do
    echo -n "$i "
done

echo ""

# Using while loop
echo "Using while loop:"
i=1
while [ $i -le 10 ]
do
    echo -n "$i "
    i=$((i + 1))
done

echo ""

# Using until loop
echo "Using until loop:"
i=1
until [ $i -gt 10 ]
do
    echo -n "$i "
    i=$((i + 1))
done

