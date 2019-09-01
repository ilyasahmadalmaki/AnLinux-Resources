#!/bin/bash

#Get the necessary components
yum install openssh-server -y

#Setup the necessary files
wget https://raw.githubusercontent.com/EXALAB/AnLinux-Resources/master/Scripts/SSH/Yum/sshd_config -P /etc/ssh

echo "Anda sekarang dapat memulai OpenSSH Server dengan menjalankan /etc/init.d/sshd start"
echo " "
echo "Server akan dimulai pada 127.0.0.1:22"
