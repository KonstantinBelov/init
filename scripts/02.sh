#!/bin/bash

#Write a script which delete an ACTIVE user on the VM

if [ $(whoami) != "root" ]
then
	echo "You have to be root!"
elif [ ! $1 ]
then
	echo "usage: [username]"
elif [ $1 == "root" ]
then
	echo "You can't delete root"
else
	deluser --force --remove-home $1
fi
