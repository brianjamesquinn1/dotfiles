# Create Projects directory
mkdir -p $HOME/Projects
mv ../Settings $HOME/Projects
WORKSPACE=$HOME/Projects

# Set github username and email
git config --global user.name "Brian Quinn"
git config --global user.email "brianjamesquinn1@gmail.com"

# Download Homebrew Package Manager
/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"

# Install Mac Developer Tools
xcode-select --install

# Install Vim
brew install vim

# Configure Vim
git config --global diff.tool vimdiff
git config --global difftool.prompt true
git config --global merge.tool vimdiff
git config --global merge.conflictstyle diff3
git config --global mergetool.prompt false
cp .vimrc ~/.vimrc

# Replace Bash with Z-shell
brew install zsh
command -v zsh | sudo tee -a /etc/shells
chsh -s $(command -v zsh)

# Install Oh-My-Zsh Z-shell Configuration Manager
sh -c "$(curl -fsSL https://raw.github.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"

# Configure Z-shell
cp .zshrc ~/.zshrc

# Install Python
brew install python
sudo easy_install pip

# Install Go
brew install go
sudo mkdir -p $WORKSPACE/go
