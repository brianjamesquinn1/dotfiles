# Install Vim
echo "Installing Vim"
brew install vim

# Command line tools used by vim plugins
# Install Fzf
brew install fzf

# Install Rg
brew install ripgrep

# Configure Vim
echo "Copying vim files"
cp .vimrc ~/.vimrc
mkdir ~/.vim
cp -r .vim/colors ~/.vim
cp -r .vim/pack ~/.vim
