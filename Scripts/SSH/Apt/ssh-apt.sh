#!/bin/bash

#Install komponen necessary
apt-get update
apt-get install openssh-server -y

#Setup necessary file
wget https://raw.githubusercontent.com/EXALAB/AnLinux-Resources/master/Scripts/SSH/Apt/sshd_config -P /etc/ssh

echo "Anda sekarang dapat memulai OpenSSH Server dengan menjalankan /etc/init.d/ssh start"
echo " "
echo "Server akan dimulai pada 127.0.0.1:22"
