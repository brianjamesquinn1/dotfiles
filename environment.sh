# Create Projects directory
echo "Creating Workspace"
mkdir -p $HOME/Projects
mv ../dotfiles $HOME/Projects
export WORKSPACE=$HOME/Projects

# Make GOPATH directory
mkdir -p $WORKSPACE/go

# Install Packages
./packageinstall.sh

# Install OSX Apps
./appinstall.sh

# Setup vim
./vim.sh

# Change dotfiles remote to ssh
git remote set-url origin git@github.com:brianjamesquinn1/dotfiles.git
