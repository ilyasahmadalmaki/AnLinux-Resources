#!/bin/bash

#Get the necessary components
apt-get update
apt-get install lxde-core lxterminal tightvncserver -y
apt-get install xfe -y
apt-get clean

#Setup the necessary files
mkdir ~/.vnc
wget https://raw.githubusercontent.com/EXALAB/AnLinux-Resources/master/Scripts/DesktopEnvironment/Apt/LXDE/xstartup -P ~/.vnc/
wget https://raw.githubusercontent.com/EXALAB/AnLinux-Resources/master/Scripts/DesktopEnvironment/Apt/LXDE/vncserver-start -P /usr/local/bin/
wget https://raw.githubusercontent.com/EXALAB/AnLinux-Resources/master/Scripts/DesktopEnvironment/Apt/LXDE/vncserver-stop -P /usr/local/bin/

chmod +x ~/.vnc/xstartup
chmod +x /usr/local/bin/vncserver-start
chmod +x /usr/local/bin/vncserver-stop

echo " "
echo "Sekarang anda bisa menggunakan vncserver dengan melakukan perintah vncserver-start"
echo " "
echo "Ini akan meminta Anda untuk memasukkan kata sandi saat pertama kali memulainya."
echo " "
echo "Server VNC akan dimulai pada 127.0.0.1.1901"
echo " "
echo "Anda dapat terhubung ke alamat ini dengan Penampil VNC yang Anda inginkan"
echo " "
echo "Hubungkan ke alamat ini akan membuka jendela dengan LXDE Desktop Environment"
echo " "
echo " "
echo " "
echo "Menjalankan vncserver-start"
echo " "
echo " "
echo " "
echo "Untuk Menghentikancukup jalankan vncserver-stop"
echo " "
echo " "
echo " "

echo "export DISPLAY=":1"" >> /etc/profile
source /etc/profile

vncserver-start
