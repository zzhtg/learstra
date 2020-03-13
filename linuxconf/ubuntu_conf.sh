sudo cp /etc/apt/sources.list /etc/apt/sources.list.bak
sudo rm -f /etc/apt/sources.list
sudo cp sources.list /etc/apt/

sudo killall apt apt-get
sudo rm /var/lib/apt/lists/lock
sudo rm /var/cache/apt/archives/lock
sudo rm /var/lib/dpkg/lock*
sudo dpkg --configure -a
sudo sed -i '$ a #github' /etc/hosts
sudo sed -i '$ a 219.76.4.4 github-cloud.s3.amazonaws.com' /etc/hosts
sudo sed -i '$ a 192.30.253.112 github.com' /etc/hosts
sudo sed -i '$ a 151.101.185.194 github.global.ssl.fastly.net' /etc/hosts
sudo /etc/init.d/networking restart

sudo apt update
sudo apt autoremove
sudo apt upgrade -y
sudo apt install zsh cmake make vim python3-pip curl qtcreator qt5-default -y

sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
mkdir ~/.vim/autoload
cp ./plug.vim ~/.vim/autoload
mkdir ~/.vim/colors
cp ./gruvbox.vim ~/.vim/colors
cp .vimrc ~
cp .xprofile ~

curl -fLo ~/Downloads/vscode1.41.deb --create-dirs https://vscode.cdn.azure.cn/stable/26076a4de974ead31f97692a0d32f90d735645c0/code_1.41.1-1576681836_amd64.deb
sudo apt -y install ~/Downloads/vscode1.41.deb

sudo apt -y install build-essential libgtk2.0-dev pkg-config libavcodec-dev libavformat-dev libswscale-dev gtk+-3.0
#curl -fLo ~/Downloads/opencv-4.2.0.zip --create-dirs https://codeload.github.com/opencv/opencv/zip/4.2.0
#unzip ~/Downloads/opencv-4.2.0.zip -d ~/Downloads/
#mkdir ~/Downloads/opencv-4.2.0/build
#cd ~/Downloads/opencv-4.2.0/build
#pwd
#cmake -D CMAKE_BUILD_TYPE=Release -D CMAKE_INSTALL_PREFIX=/usr/local ..
#make -j4
#sudo make install

python3 -m pip install -i https://pypi.tuna.tsinghua.edu.cn/simple pip -U
python3 -m pip config set global.index-url https://pypi.tuna.tsinghua.edu.cn/simple

git config --global user.name "zhaozhan"
git config --global user.email "zhaozhan1215@outlook.com"
