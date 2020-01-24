# Install Go
echo "Installing Go + dependencies"
brew install go
go get golang.org/x/tools/cmd/goimports
go get golang.org/x/tools/gopls
go get -u github.com/go-delve/delve/cmd/dlv

