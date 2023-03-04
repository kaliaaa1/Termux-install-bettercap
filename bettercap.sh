#!/data/data/com.termux/files/usr/bin/bash
echo"自动化安装bettercap"
pkg update && pkg -y upgrade
pkg install golang git libpcap libusb root-repo tsu -y
pkg install libnetfilter-queue -y
pkg install make && pkg install make-guile -y
pkg install pkg-config
echo"依赖安装完成"
git clone https://github.com/bettercap/bettercap.git
cd bettercap
make build
sudo make install
echo"                  "
echo"                  "
echo"安装完成"
echo"                  "
echo"                  "
sleep 5s
sudo bettercap
