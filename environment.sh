# Create Projects directory
echo "Creating Workspace"
mkdir -p $HOME/Projects
mv ../dotfiles $HOME/Projects
WORKSPACE=$HOME/Projects

# Make GOPATH directory
sudo mkdir -p $WORKSPACE/go

# Install OSX Apps
./appinstall.sh

# Install Packages
./packageinstall.sh

# Configure git, vim, zsh, etc
./config.sh

# Generate SSH and GPG keys for git
./generatekeys.sh

# Replace Bash with Z-shell
chsh -s $(command -v zsh)

