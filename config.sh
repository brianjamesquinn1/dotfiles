# Configure Github
echo "Copying gitconfig file"
cp .gitconfig ~/.gitconfig

# Configure Vim
echo "Copying vim files"
cp .vimrc ~/.vimrc
mkdir ~/.vim
cp -r .vim/colors ~/.vim

# Configure Z-shell
echo "Copying zshrc file"
cp .zshrc ~/.zshrc
source .zshrc

# Configure tmux
echo "Copying tmux.conf file"
cp .tmux.conf ~/.tmux.conf

