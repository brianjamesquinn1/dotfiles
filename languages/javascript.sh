# Install Javascript
echo "Installing Javascript + dependencies"
brew install prettier
brew install eslint

brew install yarn
yarn add --dev eslint
yarn add --dev babel-eslint
yarn add --dev @babel/core @babel/cli @babel/preset-flow
yarn add --dev flow-bin
yarn add --dev eslint-plugin-flowtype
