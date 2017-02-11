#!/bin/bash
while IFS=: read username password
do
    useradd --create-home $username
    echo "$username:$password" | chpasswd
done < users.txt
