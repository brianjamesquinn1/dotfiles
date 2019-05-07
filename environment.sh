# Create Projects directory
echo "Creating Workspace"
mkdir -p $HOME/Projects
mv ../dotfiles $HOME/Projects
WORKSPACE=$HOME/Projects

# Download Homebrew Package Manager
echo "Installing dependencies"
/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"

# Install Mac Developer Tools
xcode-select --install

# Configure Github
echo "Copying gitconfig file"
cp .gitconfig ~/.gitconfig

# Generate SSH Key
echo "Generating SSH Key"
ssh-keygen -t rsa -b 4096 -C "brianjamesquinn1@gmail.com"
SSH_KEY=`cat ~/.ssh/id_rsa.pub`

# Generate GPG Key
echo "Generating GPG Key"
brew install gnupg
gpg --full-generate-key
KEY_HASH=`gpg --list-secret-keys --keyid-format LONG`
GPG_KEY=`gpg --armor --export $KEY_HASH`

# Install Vim
echo "Installing Vim"
brew install vim

# Configure Vim
echo "Copying vimrc file"
cp .vimrc ~/.vimrc

# Replace Bash with Z-shell
echo "Installing zshell"
brew install zsh
command -v zsh | sudo tee -a /etc/shells
chsh -s $(command -v zsh)

# Install Oh-My-Zsh Z-shell Configuration Manager
sh -c "$(curl -fsSL https://raw.github.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"

# Configure Z-shell
echo "Copying zshrc file"
cp .zshrc ~/.zshrc
source .zshrc

# Install Python
brew install python
sudo easy_install pip

# Install Go
brew install go
sudo mkdir -p $WORKSPACE/go

# Return Keys for input to git
echo "Add the following keys to Github"
echo "SSH KEY:"
echo $SSH_KEY
echo "GPG KEY:"
echo $GPG_KEY
