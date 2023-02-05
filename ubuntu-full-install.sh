sudo apt update
# install zsh
sudo apt-get install zsh
chsh -s $(which zsh)

# flush dotfile 
./install.sh

# install starship
curl -sS https://starship.rs/install.sh | sh

# install python3 to install autojump
sudo apt-get install python3
cd ./.dotfiles/plugins/autojump && ./install.py && cd -

