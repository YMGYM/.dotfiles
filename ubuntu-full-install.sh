apt-get update
# install zsh
apt-get install zsh -y
chsh -s $(which zsh)

# symbolic link (same with ./install.sh)
ln -s -f "~/.dotfiles/.zshrc" "~/.zshrc"
ln -s -f "~/.dotfiles/.zlogin" "~/.zlogin"
ln -s -f "~/.dotfiles/.vimrc" "~/.vimrc"
ln -s -f "~/.dotfiles/.tmux/.tmux.conf" "~/.tmux.conf"
ln -s -f "~/.dotfiles/.tmux.conf.local" "~/.tmux.conf.local"

cp -n "~/.dotfiles/.zshenv" "~/.zshenv"
cp -n "~/.dotfiles/.gitconfig" "~/.gitconfig"

# install starship
curl -sS https://starship.rs/install.sh | sh --yes

# install python3 to install autojump
apt-get install python3 -y
python3 "~/.dotfiles/plugins/autojump/install.py"

