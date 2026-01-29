#!/bin/bash

# example of nested for loop to generate a multiplication table

echo "multiplication table (1 to 10):"

for (( i=1; i<=10; i++ ))
do
    echo "multiplication table for: $i"
    for (( j=1; j<=10; j++ ))
    do
        echo "$i * $j = $(( i * j ))"
    done
done