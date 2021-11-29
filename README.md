# Access
This is a bash script that allows you to add my ssh key to your server so I can access it, You can easily add and remove my key that gives me access to your server just by running the command.

## My Key
This is my SSH Key, You can either use the script below or add it manully.
```
ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABAQDGLw8dEoJH9Ae2We67BoVtpQwqlDpq5JHbTVW7Oko6Z6ShkeAY+M93y1A2h9doXM3JSnbdqhfV7zSyQH8Rewfhq597+uyvRFyXnPCD8VU9MsIx3gCM+4UBYpMvy7h6YtIbleWEsqqFvEH3zGePIGxR8RV09m0Vr7va90PEhK0KT6not17ntew6v5POLskeIW8/fAgHLX/b0hYdDsiWIEBcy9aZoOCbUAuL2xvu2+tpZjYqMrEVqGA0QJCKpwOpb4p7AB9z8QJV46Tb8+J1HQqK+H4DMtoGjXEfVSPxMP2EZS/Og1i9Cgrru5Vmx5/ezYSVre393AxykMc7pmM5HJ7D ssh-key-2021-11-15
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
