#!/data/data/com.termux/files/usr/bin/bash
echo "自动化安装bettercap"
pkg update && pkg upgrade -y
pkg install golang git libpcap libusb root-repo tsu -y
pkg install libnetfilter-queue -y
pkg install make && pkg install make-guile -y
pkg install pkg-config -y
echo "依赖安装完成"
if [ -d "/data/data/com.termux/files/home/Termux-install-bettercap/bettercap" ]; then
    cd bettercap
    make build
    sudo make install
    sudo bettercap
else 
git clone https://github.com/bettercap/bettercap.git
cd bettercap
make build
sudo make install
sudo mount -o rw,remount /
sudo mkdir -p /home/builder/.termux-build/_cache/18-arm-21-v2/bin/
sudo ln -s `which pkg-config` /home/builder/.termux-build/_cache/18-arm-21-v2/bin/arm-linux-androideabi-pkg-config
echo "                  "
echo "                  "
echo "安装完成"
echo "                  "
echo "                  "
sleep 5s
sudo bettercap
fi
