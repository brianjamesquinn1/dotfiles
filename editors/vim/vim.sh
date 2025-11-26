# Install Vim
echo "Installing Vim"
brew install vim

# Command line tools used by vim plugins
# Install Fzf
echo "Installing FZF"
brew install fzf

# Install Rg
echo "Installing ripgrep"
brew install ripgrep

# Install Bat (dep for rendering fzf/rg properly)
echo "Installing bat"
brew install bat

# Configure Vim
echo "Copying vim files"
# Make sure submodules are pulled before copying
git submodule update --init --recursive
mkdir ~/.vim
cp -r .vim ~
