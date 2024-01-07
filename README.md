# Select-n-Connet
Choose a sever from the list to SSH<br>
--------------------------------------<br>
There are multiple ways to SSH to servers including Python, Ansible etc. to execute and/or collect the information<br> 
This shell script is for choosing a server from the list (instead of multiple dedicated PuTTY, MobaXterm etc sessions) and then perfrom manual/automation activities from that server<br>

Linux environment is required to run the script, I'm using WSL2 to log-in to multiple servers in an enterprise environment.<br><br>
The servers have my public key and ~/.ssh in WSL2 has my private key with chmod 400, don't for forget chmod +x to connect.sh The script gives me freedom to SSH to servers without entring password and without including reference to my private key in SSH CLI syntax.

The `#` symbol, in conjunction with the `@` symbol within the braces, gives the length or number of elements in the array, `servers`.<br> 
`=~` is the regex (regular expression) matching operator in Bash.<br>
`[[ $choice =~ ^[0-9]+$ ]]` is to confirm that numeric value has been entered by the user.<br>
The arithmantic expression `((choice >=1 && choice <= ${#servers[@]}))` is to check that numeric value entered by the user is in the range<br>
