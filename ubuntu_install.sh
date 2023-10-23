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

cd /home/makego/kiauh
./kiauh.sh

# 检查是否已安装VS Code
# if ! dpkg -s code >/dev/null 2>&1; then
#   # 下载并安装VS Code
#   echo "下载并安装vscode"
#   wget -q https://packages.microsoft.com/keys/microsoft.asc -O- | sudo apt-key add -
#   sudo add-apt-repository "deb [arch=amd64] https://packages.microsoft.com/repos/vscode stable main"
#   sudo apt-get update
#   sudo apt-get install -y code
# else
#   echo "VS Code已安装"
# fi




