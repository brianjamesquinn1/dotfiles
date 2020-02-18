# Install Vim
echo "Installing Vim"
brew install vim

# Install Vundle
git clone git@github.com:Vundle.vim.git ~/.vim/bundle/Vundle.vim

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
