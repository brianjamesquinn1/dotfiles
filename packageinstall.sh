# Download Homebrew Package Manager
echo "Installing dependencies"
/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
echo 'eval "$(/opt/homebrew/bin/brew shellenv)"' >> ~/.zprofile
eval "$(/opt/homebrew/bin/brew shellenv)"

# Install Mac Developer Tools
xcode-select --install
sudo /usr/sbin/DevToolsSecurity -enable

# Install Oh-My-Zsh (Z-shell Configuration Manager)
sh -c "$(curl -fsSL https://raw.github.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"

# Configure Z-shell
echo "Copying zshrc file"
cp .zshrc ~/.zshrc

# Install Vim
brew install vim

# Install Fzf
brew install fzf

# Install Rg
brew install ripgrep

# Install tmux
echo "Installing tmux"
brew install tmux

# Configure tmux
echo "Copying tmux.conf file"
cp .tmux.conf ~/.tmux.conf

# Configure Github
echo "Copying gitconfig file"
cp .gitconfig ~/.gitconfig
