# Generate SSH Key
echo "Generating SSH Key"
ssh-keygen -t rsa -b 4096 -C "brianjamesquinn1@gmail.com"
SSH_KEY=`cat ~/.ssh/id_rsa.pub`

# Generate GPG Key
echo "Generating GPG Key"
brew install gnupg
gpg --full-generate-key
KEY_HASH=`gpg --list-secret-keys --keyid-format LONG | awk '/^ / && length($1) == 40 {print $1}'`
GPG_KEY=`gpg --armor --export $KEY_HASH`

# Return Keys for input to git
echo "Add the following keys to Github"
echo "SSH KEY:"
echo $SSH_KEY
echo "\nGPG KEY:"
echo $GPG_KEY
echo "\nMake sure you added the above keys to Github!"
