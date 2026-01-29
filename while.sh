#!/bin/bash

echo "Enter names (type 'exit' to quit):"
while :
do
    read -p "Name:" name
    if [ "$Name" = "exit" ]; then
    break
    fi
    echo "Hello ---> $name!"
done
    echo "you are exited"