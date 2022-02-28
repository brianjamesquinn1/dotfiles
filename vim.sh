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
# Make sure submodules are pulled before copying
git submodule update --init --recursive
cp .vimrc ~/.vimrc
mkdir ~/.vim
cp -r .vim/pack ~/.vim
