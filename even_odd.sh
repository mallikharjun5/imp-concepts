#!/bin/bash

# FUNCTION TO CHECK IF A NUMBER US EVEN OR ODD

check_even_odd() {
    local number="$1"
    if (( number % 2 == 0 )); then
        echo "number is even"
    else
        echo "number is odd"
    fi
}

for (( i=1; i<=5; i++ ))
{
    read -p "enter a number:" num
    if [ $Num -gt -1 ]; then
    check_even_odd num
    else
        echo "please enter valid input"
    fi
}