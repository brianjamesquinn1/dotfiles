# Set github username and email
git config --global user.name "Brian Quinn"
git config --global user.email "brianjamesquinn1@gmail.com"

# Download Homebrew Package Manager
/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"

# Install Vim
brew install vim

# Configure Vim
cp .vimrc ~/.vimrc

# Replace Bash with Z-shell
brew install zsh
command -v zsh | sudo tee -a /etc/shells
chsh -s $(command -v zsh)

# Configure Z-shell
cp .zshrc ~/.zshrc
