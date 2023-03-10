#!/data/data/com.termux/files/usr/bin/bash
echo -e "\033[32m 自动化安装bettercap \033[0m"
pkg update && pkg upgrade -y
pkg install golang git libpcap libusb root-repo tsu -y
pkg install libnetfilter-queue -y
pkg install make && pkg install make-guile -y
pkg install pkg-config -y
echo -e "\033[32m 依赖安装完成 \033[0m"
if [ -d "/data/data/com.termux/files/home/Termux-install-bettercap/bettercap" ]; then
    cd bettercap
    make build
    sudo make install
else 
git clone https://github.com/bettercap/bettercap.git
cd bettercap
make build
sudo make install
fi 
if [ ! -d "/home/" ]; then
    sudo mount -o rw,remount /
    sudo mkdir -p /home/builder/.termux-build/_cache/18-arm-21-v2/bin/
    sudo ln -s `which pkg-config` /home/builder/.termux-build/_cache/18-arm-21-v2/bin/arm-linux-androideabi-pkg-config
    echo -e "\033[32m bug修复完毕准备启动bettercap \033[0m"
fi 
echo -e "\033[32m 输入sudo bettercap \033[0m"
