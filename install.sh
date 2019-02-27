pacman-mirrors -i -c China -m rank
sed 's/[archlinuxcn]
SigLevel = Optional TrustedOnly
Server = https:\/\/mirrors.ustc.edu.cn/archlinuxcn\/$arch/
[archlinuxcn]
SigLevel = Optional TrustedOnly
Server = https:\/\/mirrors.ustc.edu.cn\/archlinuxcn\/$arch/g' /etc/pacman.conf

pacman -Syy && pacman -S archlinuxcn-keyring
pacman -S zsh fcitx-im fcitx fcitx-sogoupinyin fcitx-configtool git vim clang make cmake python-pip shadowsocks-qt5
sh -c "$(curl -fsSL https://raw.github.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"
#curl -fLo ~/.vim/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
mv .xprofile ~
mv .pip ~
mv .vim ~
mv .vimrc ~
vim .vimrc < EOF
:PlugInstall
EOF

cd ~/.vim/pluged/Youcompuleteme
python install.py --all

pacman -S tk
pip install opencv-python matplotlib scipy
