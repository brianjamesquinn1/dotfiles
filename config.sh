# Configure Github
echo "Copying gitconfig file"
cp .gitconfig ~/.gitconfig

# Configure Vim
echo "Copying vimrc file"
cp .vimrc ~/.vimrc

# Configure Z-shell
echo "Copying zshrc file"
cp .zshrc ~/.zshrc
source .zshrc

# Configure tmux
echo "Copying tmux.conf file"
cp .tmux.conf ~/.tmux.conf

