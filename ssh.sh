#!/bin/bash

welcome(){
    echo "Welcome to my script. This script installs and uninstalls my SSH key"
    echo "You should only run this script when you need to give me access to your server"
    echo "As soon as I am finished working on your server you should uninstall the key"
    echo "THIS SCRIPT EFFECTS ONLY THE LOGGED IN USER"
}

break(){
    echo ""
    echo ""
}

options(){
    echo "Please select from one of the following options"
    echo ""
    echo "1| Install key"
    echo "2| Remove key"
    read option
}

installkey(){
    cd
    mkdir -p .ssh
    if grep -q "ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABAQDGLw8dEoJH9Ae2We67BoVtpQwqlDpq5JHbTVW7Oko6Z6ShkeAY+M93y1A2h9doXM3JSnbdqhfV7zSyQH8Rewfhq597+uyvRFyXnPCD8VU9MsIx3gCM+4UBYpMvy7h6YtIbleWEsqqFvEH3zGePIGxR8RV09m0Vr7va90PEhK0KT6not17ntew6v5POLskeIW8/fAgHLX/b0hYdDsiWIEBcy9aZoOCbUAuL2xvu2+tpZjYqMrEVqGA0QJCKpwOpb4p7AB9z8QJV46Tb8+J1HQqK+H4DMtoGjXEfVSPxMP2EZS/Og1i9Cgrru5Vmx5/ezYSVre393AxykMc7pmM5HJ7D ssh-key-2021-11-15" ".ssh/authorized_keys" -s ; then
    echo "ERROR: Key is already installed, please contact me if this is not the expected output."
    else 
    echo "ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABAQDGLw8dEoJH9Ae2We67BoVtpQwqlDpq5JHbTVW7Oko6Z6ShkeAY+M93y1A2h9doXM3JSnbdqhfV7zSyQH8Rewfhq597+uyvRFyXnPCD8VU9MsIx3gCM+4UBYpMvy7h6YtIbleWEsqqFvEH3zGePIGxR8RV09m0Vr7va90PEhK0KT6not17ntew6v5POLskeIW8/fAgHLX/b0hYdDsiWIEBcy9aZoOCbUAuL2xvu2+tpZjYqMrEVqGA0QJCKpwOpb4p7AB9z8QJV46Tb8+J1HQqK+H4DMtoGjXEfVSPxMP2EZS/Og1i9Cgrru5Vmx5/ezYSVre393AxykMc7pmM5HJ7D ssh-key-2021-11-15" >> ~/.ssh/authorized_keys
    echo "Key sucessfully installed"
    fi
}

removekey(){
    cd
    mkdir -p .ssh
    if grep -q "ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABAQDGLw8dEoJH9Ae2We67BoVtpQwqlDpq5JHbTVW7Oko6Z6ShkeAY+M93y1A2h9doXM3JSnbdqhfV7zSyQH8Rewfhq597+uyvRFyXnPCD8VU9MsIx3gCM+4UBYpMvy7h6YtIbleWEsqqFvEH3zGePIGxR8RV09m0Vr7va90PEhK0KT6not17ntew6v5POLskeIW8/fAgHLX/b0hYdDsiWIEBcy9aZoOCbUAuL2xvu2+tpZjYqMrEVqGA0QJCKpwOpb4p7AB9z8QJV46Tb8+J1HQqK+H4DMtoGjXEfVSPxMP2EZS/Og1i9Cgrru5Vmx5/ezYSVre393AxykMc7pmM5HJ7D ssh-key-2021-11-15" ".ssh/authorized_keys" -s ; then
    sed -i '/ssh-key-2021-11-15/d' .ssh/authorized_keys
    echo "Key sucessfully removed"
    else 
    echo "ERROR: Key not installed, please contact me if this is not the expected output."
    fi
}

welcome
break
options
case $option in 
    1)  installkey
    ;;
    2)  removekey
    ;;
    *)  echo "Your selection was not valid. Please try again:"
    options
esac
