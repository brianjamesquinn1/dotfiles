### Setting Up Laptop Preferences ###
1. Download Spectacle
2. Download Flux

### Setting Up Code Environment ###
1. Generate an ssh key via the command:
  `ssh-keygen -t rsa -b 4096 -C "brianjamesquinn@gmail.com"`
2. Add the key to the github repository
3. Download iTerm as a Terminal replacement
4. Run `./environment.sh`

### Overview of environment.sh ###
The script creates a `Projects` folder in the home directory  which will be the main workspace for
creating new projects. `.zshrc` has an alias `workspace` (or simply `ws`) to directly change to
this directory. The global github username and user-email is then set. The Homebrew package manager
for Mac is then installed. Vim and Z-shell are installed, then the repo copies of .vimrc and .zshrc
are copied into the home directory. The `Oh-My-Zsh` framework for Z-shell is then installed. Python
will then be installed if it had not already been installed (which is very unlikely). Finally, go
is installed, with a go subdirectory being created inside the `Projects` directory. Inside the
.zshrc the `GOPATH` is configured to this directory (`Projects/go`)

### Overview of .vimrc ###
The .vimrc sets backspace to be allowed at the beginning of a line, end of line, and at indents.
Autoindent is set, expanding tabs into spaces is set, shift width and tabstop are both set to 2.
Line numbers are turned on.

### Overview of .zshrc ###
Aliases: `pro` is set to globally set the github username and user-email. `workspace` and `ws` are
both set to change the directory to the `Projects` folder. `GOPATH` is set, and Z-shell/Oh-My-Zsh
settings are set.
