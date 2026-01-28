#!/bin/bash

echo "1. display date"
echo "2. display calender"
echo "3. display current working directory"
echo "4. Exit"

read -p "Enter your choice:" choice

case $choice in

1)
    date
    ;;
2)
    cal
    ;;
3)
    pwd
    ;;
4)
    echo "Exiting program"
    exit 0
    ;;
*)
    echo "Invalid choice: $choice please enter number between 1 and 4"
    ;;
esac