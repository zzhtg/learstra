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
rm ~/.xprofile
echo "export GTK_IM_MODULE=fcitx" >> ~/.xprofile
echo "export QT_IM_MODULE=fcitx" >> ~/.xprofile
echo "export XMODIFIERS=@im=fcitx" >> ~/.xprofile

echo "[global]" >> ~/.pip/pip.conf
echo "index-url = https://pypi.tuna.tsinghua.edu.cn/simple" >> ~/.pip/pip.conf
echo "[install]" >> ~/.pip/pip.conf
echo "trusted-host=mirrors.aliyun.com" >> ~/.pip/pip.conf

mv .vimrc ~
vim .vimrc < EOF
:PlugInstall
EOF

cd ~/.vim/pluged/Youcompuleteme
python install.py --all
