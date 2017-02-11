#!/bin/bash
while IFS=: read username password
do
    useradd -G $usergroups -c "$fullname" $username
done < users.txt
