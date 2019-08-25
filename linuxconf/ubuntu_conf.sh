sudo cp /etc/apt/source.list /etc/apt/source.list.bak

sudo bash -c "echo '
# 默认注释了源码镜像以提高 apt update 速度，如有需要可自行取消注释
deb https://mirrors.tuna.tsinghua.edu.cn/ubuntu/ bionic main restricted universe multiverse
# deb-src https://mirrors.tuna.tsinghua.edu.cn/ubuntu/ bionic main restricted universe multiverse
deb https://mirrors.tuna.tsinghua.edu.cn/ubuntu/ bionic-updates main restricted universe multiverse
# deb-src https://mirrors.tuna.tsinghua.edu.cn/ubuntu/ bionic-updates main restricted universe multiverse
deb https://mirrors.tuna.tsinghua.edu.cn/ubuntu/ bionic-backports main restricted universe multiverse
# deb-src https://mirrors.tuna.tsinghua.edu.cn/ubuntu/ bionic-backports main restricted universe multiverse
deb https://mirrors.tuna.tsinghua.edu.cn/ubuntu/ bionic-security main restricted universe multiverse
# deb-src https://mirrors.tuna.tsinghua.edu.cn/ubuntu/ bionic-security main restricted universe multiverse

# 预发布软件源，不建议启用
# deb https://mirrors.tuna.tsinghua.edu.cn/ubuntu/ bionic-proposed main restricted universe multiverse
# deb-src https://mirrors.tuna.tsinghua.edu.cn/ubuntu/ bionic-proposed main restricted universe multiverse
' > /etc/apt/source.list"

sudo apt update && sudo apt upgrade
sudo apt dist-upgrade
sudo apt autoremove
sudo apt install zsh git cmake make vim python3-pip

sh -c "$(curl -fsSL https://raw.github.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"
curl -fLo ~/.vim/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
curl -fLo ~/.vim/colors/gruvbox.vim --create-dirs https://raw.githubusercontent.com/morhetz/gruvbox/master/colors/gruvbox.vim

python3 -m pip install -i https://pypi.tuna.tsinghua.edu.cn/simple pip -U
python3 -m pip config set global.index-url https://pypi.tuna.tsinghua.edu.cn/simple

# run PlugInstall in vim 
# last run python3 ~/.vim/plugged/YouCompleteMe/install.py --all
echo "Open your vim and run :PlugInstall"
echo "Then, you need run $:python3 ~/.vim/plugged/YouCompleteMe/install.py --all"
echo "All complete"
