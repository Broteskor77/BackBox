#!/system/bin/sh/bash
#echo por Broteskor

#Motd
#_________________________________________________
#
#  ____            _            _              
# |  _ \          | |          | |             
# | |_) |_ __ ___ | |_ ___  ___| | _____  _ __ 
# |  _ <| '__/ _ \| __/ _ \/ __| |/ / _ \| '__|
# | |_) | | | (_) | ||  __/\__ \   < (_) | |   
# |____/|_|  \___/ \__\___||___/_|\_\___/|_|   
#                                              
#_________________________________________________
#
#Motd
cat motd
#VARIABLES
rojo='\033[1;31m'
verde='\033[1;32m'
azul='\033[1;34m'
Bbox='\033[1;36m'
reset='\033[0m'
#VARIABLES

#ActualizarTermux
apt update && apt upgrade -y
pkg install figlet -y
#ActualizarTermux

sleep 1.5
clear
printf $reset

#Anuscript
sleep 2.5
printf $Bbox
figlet -f smslant System
#Anuscript

#carp BackBox
sleep 3.0
printf $rojo
figlet -f smslant   Install
sleep 3.5
pkg install wget openssl-tool proot -y && hash -r && wget https://raw.githubusercontent.com/EXALAB/AnLinux-Resources/master/Scripts/Installer/BackBox/backbox.sh && bash backbox.sh
cp start-backbox.sh /data/data/com.termux/files/usr/bin

#carp BackBox
printf $reset
printf $Bbox
figlet -f smslant BackBox
printf $azul
echo "-BackBox is a penetration test and security assessment oriented Ubuntu-based Linux distribution providing a network and informatic systems analysis toolkit. BackBox desktop environment includes a complete set of tools required for ethical hacking and security testing."
printf $verde
echo "-BackBox es una distribución de Linux basada en Ubuntu basada en pruebas de penetración y seguridad que proporciona un kit de herramientas de análisis de sistemas informáticos y de red."
printf $rojo
echo "Termux BackBox System..."
echo"-Disclaimer: Developers assume no liability and are not"
echo"-responsible for any misuse or damage caused by BackBox"
