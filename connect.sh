#!/bin/bash

servers=("domain name 1" "domain name 2" ... "domain name n-1" "domain name n")
for ((i=0; i<${#servers[@]}; i++)) do echo "$(($i+1)).${servers[$i]}"; done

read -p "Enter number (integer) of the server you want to connect to: " choice

if [[ $choice =~ ^[0-9]+$ ]] && ((choice >=1 && choice <= ${#servers[@]})); then
        server=${servers[$choice-1]}
        echo "Connecting to $server ..."
        ssh user@$server
else
        echo "Invalid choice. Please enter a valid number."
