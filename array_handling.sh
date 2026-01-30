#!/bin/bash

# Function to print elements of an array
print_array() {
    local arr=("$@")   # Copy all arguments into the array
    echo "Array elements:"
    for item in "${arr[@]}"
    do
        echo "$item"
    done
}

# Example usage with an array
my_array=("apple" "banana" "cherry" "date")
print_array "${my_array[@]}"
