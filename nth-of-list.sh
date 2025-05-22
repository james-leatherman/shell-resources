#!/bin/bash

read -p "Enter list of integers: " integers
read -p "List the nth largest to find: " n

# Convert input to array
integers_arr=($integers)

# Sort array in descending order
sorted_integers=($(for i in "${integers_arr[@]}"; do echo $i; done | sort -nr))

# Check if n is valid
if [ "$n" -lt 1 ] || [ "$n" -gt "${#sorted_integers[@]}" ]; then
    echo "$n is not a position in the list"
    exit 1
fi

# Print the nth largest
echo "The integer at position #$n is ${sorted_integers[$((n-1))]}"