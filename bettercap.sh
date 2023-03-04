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
sudo su
mount -o rw,remount /
mkdir -p /home/builder/.termux-build/_cache/18-arm-21-v2/bin/
ln -s `which pkg-config` /home/builder/.termux-build/_cache/18-arm-21-v2/bin/arm-linux-androideabi-pkg-config
echo"                  "
echo"                  "
echo"安装完成"
echo"                  "
echo"                  "
 sleep 5s
sudo bettercap
