# Termux安装bettercap脚本

安装需要手机有root权限

```安装wget
pkg install git
```

```下载安装脚本
git clone https://github.com/kaliaaa1/Termux-install-bettercap.git

chmod +x bettercap.sh

./bettercap.sh
```

修复bug

```
sudo su
mount -o rw,remount /
mkdir -p /home/builder/.termux-build/_cache/18-arm-21-v2/bin/
ln -s `which pkg-config` /home/builder/.termux-build/_cache/18-arm-21-v2/bin/arm-linux-androideabi-pkg-config
```

解决Termux 一些报错报错

```
pkg install openssl1.1-tool


echo "export LD_LIBRARY_PATH=/data/data/com.termux/files/usr/lib/openssl-1.1" >> ~/.bashrc

exit #在打开即可解决
```
