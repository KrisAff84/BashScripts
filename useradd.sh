#!/bin/bash

#***** Script automativally adds linux users *******

echo
echo "Enter the name of the user you would like to add:"
read user
r=$(cat /etc/passwd | grep -w $user | wc -l)

until [[ $r -eq 0 ]]
    do 
        if  [[ $r -gt 0 ]]
		then 
			echo
			echo
			echo "$user already exists as a user. Please choose a differnet name:"
			read user
			echo
			echo
			r=$(cat /etc/passwd | grep -w $user | wc -l)
			continue
	fi
    done
sudo useradd -m $user    
echo
echo "Great! $user successfully added as a user."
echo 
echo

