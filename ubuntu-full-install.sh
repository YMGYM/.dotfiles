apt-get update
# install zsh
apt-get install zsh
chsh -s $(which zsh)

# flush dotfile 
./install.sh

# install starship
curl -sS https://starship.rs/install.sh | sh

# install python3 to install autojump
apt-get install python3
cd ./plugins/autojump && ./install.py && cd -

