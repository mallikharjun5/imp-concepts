#!/bin/bash

# FUNCTION TO ADD USER

add_user() {
    local username="$1"
    sudo useradd -m "$username"
    echo "user '$username' added successfully"
}

#FUNCTION TO DELETE A USER

del_user() {
    local username="$1"
    sudo userdel -r "$username"
    if [ $? -eq 0 ]; then
        echo "user '$username' deleted successfully"
        else
        echo "invalid user"
    fi
}

# FUNCTION TO LIST ALL USERS
list_users() {
    local users=$(cut -d: -f1 /etc/passwd)
    echo "list of users:"
    echo "$users"
}

#MAIN SCRIPT LOGIC

echo "choose an option"
echo "1. add a user"
echo "2. delete a user"
echo "3. list all users"

read -p "Enter your choice:" choice

case $choice in
    1) read -p "Enter username:" username
    add_user "$username"
    ;;

    2) read -p "Enter username to delete:" username
    del_user "$username"
    ;;

    3)list_users ;;
    *) echo "invalid choice: exiting"
esac