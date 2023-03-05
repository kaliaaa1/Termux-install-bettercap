# Termux安装bettercap脚本

安装需要手机有root权限

```安装wget
pkg install git
```

```下载安装脚本
git clone https://github.com/kaliaaa1/Termux-install-bettercap.git

cd Termux-install-bettercap

chmod +x bettercap.sh

./bettercap.sh
```


解决Termux 一些报错

```
pkg install openssl1.1-tool


echo "export LD_LIBRARY_PATH=/data/data/com.termux/files/usr/lib/openssl-1.1" >> ~/.bashrc

exit #在打开即可解决
```
