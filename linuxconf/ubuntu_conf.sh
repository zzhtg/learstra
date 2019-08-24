sudo mv /etc/apt/source.list /etc/apt/source.list.bak
sudo cp source.list /etc/apt/
sudo apt update && sudo apt upgrade
sudo apt install zsh git cmake make vim python3

sh -c "$(curl -fsSL https://raw.github.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"
curl -fLo ~/.vim/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim

mkdir ~/.vim/colors/
cp ~/.vim/plug/gruvbox/colors/gruvbox.vim ~/.vim/colors/

# run PlugInstall in vim 

# last run python3 ~/.vim/plugged/YouCompleteMe/install.py --all
