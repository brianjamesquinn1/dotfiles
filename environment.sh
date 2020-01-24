# Create Projects directory
echo "Creating Workspace"
mkdir -p $HOME/Projects
mv ../dotfiles $HOME/Projects
WORKSPACE=$HOME/Projects

# Make GOPATH directory
mkdir -p $WORKSPACE/go

# Install OSX Apps
./appinstall.sh

# Install Packages
./packageinstall.sh

# Setup vim
./vim.sh
