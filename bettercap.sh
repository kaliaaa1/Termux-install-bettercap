#!/data/data/com.termux/files/usr/bin/bash
echo"\033[43;35m 自动化安装bettercap \033[0m"
pkg install update && pkg install upgrade
pkg install golang git libpcap libusb libnetfilter-queu root-repo tsu
git clone https://github.com/bettercap/bettercap.git
cd bettercap
make build
sudo make install
sudo bettercap
