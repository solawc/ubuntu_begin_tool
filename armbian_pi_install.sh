#!/bin/bash

#检查是否已经安装了net-tools
echo "Ubuntu的版本:"
cat /etc/os-release | grep "PRETTY_NAME"

echo "check is install net-tools....."
if ! dpkg -s net-tools > /dev/null 2>&1; then
	sudo apt-get install -y net-tools
	echo "net-tools已经安装完成！"
else
	echo "net-tools已经安装了！"
fi

#检查是否安装vim
echo "检查是否已经安装了vim....."
if ! dpkg -s vim >/dev/null 2>&1; then
	sudo apt install -y vim
	echo "vim已经安装完成！"
else
	echo "vim已经安装了！"
fi

#检查是否安装git

echo "检查是否已经安装了git....."
if ! dpkg -s git >/dev/null 2>&1; then
        sudo apt install -y git
        echo "git已经安装完成！"
else
        echo "git已经安装了！"
fi

cd ~/
git clone https://github.com/th33xitus/kiauh.git

cd ~/kiauh
./kiauh.sh



