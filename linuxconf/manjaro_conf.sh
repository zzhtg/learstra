sudo pacman-mirrors -i -c China -m rank
#Only Usting and ustc

sudo bash -c "echo '
[archlinuxcn]
SigLevel = Optional TrustedOnly
Server = https://mirrors.163.com/archlinux-cn/$arch
' >> /etc/pacman.conf"

sudo pacman -Syy && sudo pacman -Sy archlinuxcn-keyring --noconfirm
sudo pacman -S curl code zshgit vim clang lldb make cmake python-pip --noconfirm

sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
curl -fLo ~/.vim/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
curl -fLo ~/.vim/colors/gruvbox.vim --create-dirs https://raw.githubusercontent.com/morhetz/gruvbox/master/colors/gruvbox.vim
cp .vimrc ~

sudo python3 -m pip install -i https://pypi.tuna.tsinghua.edu.cn/simple pip -U
sudo python3 -m pip config set global.index-url https://pypi.tuna.tsinghua.edu.cn/simple

echo "Open your vim and run :PlugInstall"
echo "Then, you need run $:python3 ~/.vim/plugged/YouCompleteMe/install.py --all"
echo "All complete"

