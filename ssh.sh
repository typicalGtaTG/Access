#!/bin/bash

welcome(){
    echo "
    
 _____                                     _____ _____ _    _        _  __________     __
|  __ \                                   / ____/ ____| |  | |      | |/ /  ____\ \   / /
| |__) |_____      ____ _ _ __  ___ _____| (___| (___ | |__| |______| ' /| |__   \ \_/ / 
|  _  // _ \ \ /\ / / _  |  _ \/ __|______\____ \____\|  __  |______|  < |  __|   \   /  
| | \ \ (_) \ V  V / (_| | | | \__ \      ____) |___) | |  | |      | . \| |____   | |   
|_|  \_\___/ \_/\_/ \__,_|_| |_|___/     |_____/_____/|_|  |_|      |_|\_\______|  |_|   
    "
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
    if grep -q "ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAACAQDf7TnrMZewh1kS8F22kB/obU5H8x4bzTzGSr9ovZdIt9VnOX5fM8EUJyNhrixmsVkRQzRVbA4He+RCJnD6bcPflz7enbeHdgZUw54t13UMplIEw6H0S/U43UmOJx/Wo/XjVfmuwmn8v7EuoegQB6paO3TfBnCoBeSIpbj6vOUMV5HNCvEJS4rZ0tg58vRzkBKnxYuNb88RcNyYWJ7XxkVxu51F8qAG9JgAIDaZwndwb00p2gs907UrzzBd/3M5UIN/X6NlzJ5fO46gRt2s6AUPywrU+gODNmsNeDL0uG2zFC78c5tEiKLn1Mq2JcKpzShDQAuctz4WG0VqLNio3iVulaNkRaVcuj6MES40gu0BU9jXBqojTJnryAIXNhrWvENh6/aZyISZ+31+5/dBPJ4b98Bnt4fH9YWpFTuvnCmBuJxReu+bUH+PnGjXZi8q8BTMehPKJgtQJlTyiLbtqe5IQTLJWCfNg8dFtm5EanBLsfeIPJlEZSx0V+yMiSl/rOAeTPdzQptHxN4wdGVe2d3zEndXTOfC8qxDNLjDcc/o4DpMV+OVEY/AGXLIPfVYkwyEOdQxpbFnc5k33bAxo1lOR3Iq8ELsOYz/Agzk71MJOZIbo2vvwKNkv3SDI6Y/9FQi6KXvVk6zlh5Rflw9A8AgzuH6cftcJP4N8mKZA6ASbw== arpanden465@gmail.com" ".ssh/authorized_keys" -s ; then
    echo "ERROR: Key is already installed, please contact me if this is not the expected output."
    else 
    echo "ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAACAQDf7TnrMZewh1kS8F22kB/obU5H8x4bzTzGSr9ovZdIt9VnOX5fM8EUJyNhrixmsVkRQzRVbA4He+RCJnD6bcPflz7enbeHdgZUw54t13UMplIEw6H0S/U43UmOJx/Wo/XjVfmuwmn8v7EuoegQB6paO3TfBnCoBeSIpbj6vOUMV5HNCvEJS4rZ0tg58vRzkBKnxYuNb88RcNyYWJ7XxkVxu51F8qAG9JgAIDaZwndwb00p2gs907UrzzBd/3M5UIN/X6NlzJ5fO46gRt2s6AUPywrU+gODNmsNeDL0uG2zFC78c5tEiKLn1Mq2JcKpzShDQAuctz4WG0VqLNio3iVulaNkRaVcuj6MES40gu0BU9jXBqojTJnryAIXNhrWvENh6/aZyISZ+31+5/dBPJ4b98Bnt4fH9YWpFTuvnCmBuJxReu+bUH+PnGjXZi8q8BTMehPKJgtQJlTyiLbtqe5IQTLJWCfNg8dFtm5EanBLsfeIPJlEZSx0V+yMiSl/rOAeTPdzQptHxN4wdGVe2d3zEndXTOfC8qxDNLjDcc/o4DpMV+OVEY/AGXLIPfVYkwyEOdQxpbFnc5k33bAxo1lOR3Iq8ELsOYz/Agzk71MJOZIbo2vvwKNkv3SDI6Y/9FQi6KXvVk6zlh5Rflw9A8AgzuH6cftcJP4N8mKZA6ASbw== arpanden465@gmail.com" >> ~/.ssh/authorized_keys
    echo "Key sucessfully installed"
    fi
}

removekey(){
    cd
    mkdir -p .ssh
    if grep -q "ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAACAQDf7TnrMZewh1kS8F22kB/obU5H8x4bzTzGSr9ovZdIt9VnOX5fM8EUJyNhrixmsVkRQzRVbA4He+RCJnD6bcPflz7enbeHdgZUw54t13UMplIEw6H0S/U43UmOJx/Wo/XjVfmuwmn8v7EuoegQB6paO3TfBnCoBeSIpbj6vOUMV5HNCvEJS4rZ0tg58vRzkBKnxYuNb88RcNyYWJ7XxkVxu51F8qAG9JgAIDaZwndwb00p2gs907UrzzBd/3M5UIN/X6NlzJ5fO46gRt2s6AUPywrU+gODNmsNeDL0uG2zFC78c5tEiKLn1Mq2JcKpzShDQAuctz4WG0VqLNio3iVulaNkRaVcuj6MES40gu0BU9jXBqojTJnryAIXNhrWvENh6/aZyISZ+31+5/dBPJ4b98Bnt4fH9YWpFTuvnCmBuJxReu+bUH+PnGjXZi8q8BTMehPKJgtQJlTyiLbtqe5IQTLJWCfNg8dFtm5EanBLsfeIPJlEZSx0V+yMiSl/rOAeTPdzQptHxN4wdGVe2d3zEndXTOfC8qxDNLjDcc/o4DpMV+OVEY/AGXLIPfVYkwyEOdQxpbFnc5k33bAxo1lOR3Iq8ELsOYz/Agzk71MJOZIbo2vvwKNkv3SDI6Y/9FQi6KXvVk6zlh5Rflw9A8AgzuH6cftcJP4N8mKZA6ASbw== arpanden465@gmail.com" ".ssh/authorized_keys" -s ; then
    sed -i '/arpanden465@gmail.com/d' .ssh/authorized_keys
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
