#!/bin/bash

#Install komponen necessary 
pacman -Sy --noconfirm openssh

#Setup necessary file
wget https://raw.githubusercontent.com/EXALAB/AnLinux-Resources/master/Scripts/SSH/Pacman/sshd_config -P /etc/ssh

echo "Anda sekarang dapat memulai OpenSSH Server dengan menjalankan /etc/rc.d/sshd start"
echo " "
echo "Server akan di mulai pada 127.0.0.1:22"
