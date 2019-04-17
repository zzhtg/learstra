pacman-mirrors -i -c China -m rank

sed -i '$a [archlinuxcn]' /etc/pacman.conf
sed -i '$a SigLevel = Optional TrustedOnly' /etc/pacman.conf
sed -i '$a Server = https://mirrors.ustc.edu.cn/archlinuxcn/$arch' /etc/pacman.conf

pacman -Syy && pacman -S archlinuxcn-keyring
pacman -S zsh fcitx-im fcitx fcitx-sogoupinyin fcitx-configtool git vim clang make cmake python-pip shadowsocks-qt5 --noconfirm
sh -c "$(curl -fsSL https://raw.github.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"
#curl -fLo ~/.vim/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
pwd
mv .pip .vim .xprofile .vimrc ~
ls -a ~

vim .vimrc < EOF
:PlugInstall
EOF

cd ~/.vim/pluged/Youcompuleteme
python install.py --all

pacman -S tk
pip install opencv-python matplotlib scipy pyserial
