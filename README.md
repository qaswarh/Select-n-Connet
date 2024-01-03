# Select-n-Connet
Choose a sever from the list to SSH<br>
-----------------------------------<br>
There are multiple ways to SSH to servers including Python, Ansible etc. However this is a simple shell script to jump any server from the list and perfrom manual/automation activities from the server<br>
Linux environment is required to run the script, I'm using this script from WSL2 to log-in to multiple servers in enterprise environment. The servers have my public key and ~/.ssh in WSL2 has my private key with chmod 400<br>
This gives me freedom freedom to SSH to servers without entring password or including reference to my private key in SSH CLI syntax
