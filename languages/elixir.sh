# Install Elixir
echo "Installing Elixir + dependencies"
brew install elixir

cd $WORKSPACE
git clone git@github.com:elixir-lsp/elixir-ls.git
cd elixir-ls
mix deps.get
mix compile
mix elixir_ls.release
