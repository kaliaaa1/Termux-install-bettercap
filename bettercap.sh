#!/data/data/com.termux/files/usr/bin/bash
echo"\033[43;35m 自动化安装bettercap \033[0m"
pkg update && pkg -y upgrade
pkg install golang git libpcap libusb root-repo tsu -y
pkg install libnetfilter-queue -y
pkg install make && pkg install make-guile -y
git clone https://github.com/bettercap/bettercap.git
cd bettercap
make build
sudo make install
sudo bettercap
