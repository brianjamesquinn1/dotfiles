# Download Homebrew Package Manager
echo "Installing dependencies"
/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"

# Install Mac Developer Tools
xcode-select --install
sudo /usr/sbin/DevToolsSecurity -enable

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

# Install Rg
brew install ripgrep

# Install htop
brew install htop

# Install Z-shell
echo "Installing zshell"
brew install zsh
command -v zsh | sudo tee -a /etc/shells
# Install Oh-My-Zsh (Z-shell Configuration Manager)
sh -c "$(curl -fsSL https://raw.github.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"

# Install tmux
echo "Installing tmux"
brew install tmux

# Install Python
echo "Installing Python + dependencies"
brew install python
sudo easy_install pip

# Install Go
echo "Installing Go + dependencies"
brew install go
go get golang.org/x/tools/cmd/goimports
go get golang.org/x/tools/gopls
go get -u github.com/go-delve/delve/cmd/dlv

# Install Javascript
echo "Installing Javascript + dependencies"
brew install yarn
brew install prettier
brew install eslint

