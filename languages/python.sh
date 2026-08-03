# Install Python
echo "Installing Python + dependencies"
brew install python

# LSP server used by vim-lsp + ALE for Python linting
brew install python-lsp-server

# Fixers used by ALE on save
brew install black
brew install isort
