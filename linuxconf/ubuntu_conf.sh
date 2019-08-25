sudo mv /etc/apt/source.list /etc/apt/source.list.bak
sudo cp source.list /etc/apt/
sudo apt update && sudo apt upgrade
sudo apt dist-upgrade
sudo apt autoremove
sudo apt install zsh git cmake make vim python3

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
