#!/bin/bash

if [ "$1" = "" ]
then
   echo "No user specified"
else
   ansible-playbook -i hosts make.yml --user ansible --vault-password-file ./.vault_password.txt --extra-vars="{'users': [$1]}"
fi
