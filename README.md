# Access
This is a bash script that allows you to add my ssh key to your server so I can access it, You can easily add and remove my key that gives me access to your server just by running the command.

## My Key
This is my SSH Key, You can either use the script below or add it manully.
```
ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAACAQDf7TnrMZewh1kS8F22kB/obU5H8x4bzTzGSr9ovZdIt9VnOX5fM8EUJyNhrixmsVkRQzRVbA4He+RCJnD6bcPflz7enbeHdgZUw54t13UMplIEw6H0S/U43UmOJx/Wo/XjVfmuwmn8v7EuoegQB6paO3TfBnCoBeSIpbj6vOUMV5HNCvEJS4rZ0tg58vRzkBKnxYuNb88RcNyYWJ7XxkVxu51F8qAG9JgAIDaZwndwb00p2gs907UrzzBd/3M5UIN/X6NlzJ5fO46gRt2s6AUPywrU+gODNmsNeDL0uG2zFC78c5tEiKLn1Mq2JcKpzShDQAuctz4WG0VqLNio3iVulaNkRaVcuj6MES40gu0BU9jXBqojTJnryAIXNhrWvENh6/aZyISZ+31+5/dBPJ4b98Bnt4fH9YWpFTuvnCmBuJxReu+bUH+PnGjXZi8q8BTMehPKJgtQJlTyiLbtqe5IQTLJWCfNg8dFtm5EanBLsfeIPJlEZSx0V+yMiSl/rOAeTPdzQptHxN4wdGVe2d3zEndXTOfC8qxDNLjDcc/o4DpMV+OVEY/AGXLIPfVYkwyEOdQxpbFnc5k33bAxo1lOR3Iq8ELsOYz/Agzk71MJOZIbo2vvwKNkv3SDI6Y/9FQi6KXvVk6zlh5Rflw9A8AgzuH6cftcJP4N8mKZA6ASbw== arpanden465@gmail.com
```

## Running the Script

```bash
bash <(curl -s https://raw.githubusercontent.com/typicalGtaTG/access/master/ssh.sh)
```

## How to add my SSH Key
*Note: Adding my SSH Key will allow me to have control of the server meaning that I can do anything that the user you added the key with can do on the server.*

1. Login to the root user or a user with sudo privallages of your server
1. Type the command `bash <(curl -s https://raw.githubusercontent.com/typicalGtaTG/access/master/ssh.sh)`
1. Select the first option to add my key
1. Give me the server IP and the username.

## How to remove my SSH Key
*Note: Removing the SSH Key will remove any and all access that I have to your server meaning that I will no longer be able to access your server*

1. Login to the user you installed the SSH key with
1. Type the command `bash <(curl -s https://raw.githubusercontent.com/typicalGtaTG/access/master/ssh.sh)`
1. Select the second option to remove my key.
