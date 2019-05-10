# Download Homebrew Package Manager
echo "Installing dependencies"
/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"

# Install Mac Developer Tools
xcode-select --install

# Install Vim
echo "Installing Vim"
brew install vim
# Install Vundle (Vim Package Manager)
git clone git@github.com:VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim

# Install Ctags
# brew install ctags # Use this to install exuberant ctags (no longer maintained)
brew install --HEAD universal-ctags/universal-ctags/universal-ctags # Use this to instal universal ctags (no official release version)

# Install Fzf
brew install fzf

# Install Z-shell
echo "Installing zshell"
brew install zsh
command -v zsh | sudo tee -a /etc/shells
# Install Oh-My-Zsh (Z-shell Configuration Manager)
sh -c "$(curl -fsSL https://raw.github.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"

# Install tmux
brew install tmux

# Install Python
brew install python
sudo easy_install pip

# Install Go
brew install go

