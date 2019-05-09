### Installation & Environment Setup ###
1. Run `./environment.sh`, this will install/setup anything that can be automated
   - an overview of each script can be found at the bottom
2. `environment.sh` will output the public ssh and gpg keys, add these to github
3. Follow instructions below to configure manual settings

### Setting Up Laptop Preferences ###
1. Configure Flux
   - Set `Daytime` to 5500K (Sunlight)
   - Set `Sunset` to 3400K (Halogen)
   - Set `Bedtime` to 1900K (Candle)
   - Set 6:00 AM as the wakeup time
   - Check `OS X Dark theme at sunset`
   - Check `Dim on disable`
2. `System Preferences>Keyboard>Keyboard`
   - Set `Key Repeat` to the fastest setting
   - Set `Delay Until Repeat` to the shortest setting
3. `System Preferences>Keyboard>Keyboard>Modifier Keys...`
   - Set `Caps Lock Key` to `Escape`
4. `System Preferences>Keyboard>Shortcuts>Mission Control`
   - Set `Move left a space` to opt-left
   - Set `Move right a space` to opt-right
5. `System Preferences>Mission Control`
   - Uncheck `Automatically rearrange spaces based on most recent use`

### Setting Up Terminal Environment ###
1. Configure iTerm
   - `Preferences>General>Closing` uncheck `Confirm closing multiple sessions`
   - `Preferences>General>Closing` uncheck `Confirm "Quit iTerm2" if windows open`
   - `Preferences>Appearance>Tabs` set `Tab bar location` to `Bottom`
   - `Preferences>Appearance>Tabs` uncheck `Show tab bar in fullscreen`
   - `Preferences>Appearance>Window` check `Hide scrollbars`
   - `Preferences>Profiles>General` set `Send text at start:` to `source ~/.zshrc`
   - `Preferences>Profiles>Colors>Basic Colors` set `Foreground` to #E8D5A9
   - `Preferences>Profiles>Colors>Basic Colors` set `Background` to #16222D
   - `Preferences>Profiles>Colors>Basic Colors` set `Bold` to #DFBD22
   - `Preferences>Profiles>Colors>Basic Colors` set `Selection` to #411916
   - `Preferences>Profiles>Colors>Basic Colors` set `Selected text` to #5FFA68
   - `Preferences>Profiles>Colors>Cursor Colors` set `Cursor` to #FFCC66
   - `Preferences>Profiles>Colors>Cursor Colors` set `Cursor text` to #E8D5A9
   - `Preferences>Profiles>Colors>Cursor Colors` set `Cursor guide` to #8DBAC9
   - `Preferences>Profiles>Text>Cursor` check `Blinking Cursor`
   - `Preferences>Profiles>Text>Font` change font to `14pt Menlo Regular`
   - `Preferences>Profiles>Window>Window Appearance` slide `Transparency` to 1/4th
   - `Preferences>Profiles>Window>Window Appearance` slide `Blur` to 1/8th
   - `Preferences>Profiles>Window>Settings for New Windows` set `Style` to `No Title Bar`
   - `Preferences>Profiles>Terminal>Scrollback Buffer` check `Unlimited scrollback`
   - `Preferences>Profiles>Terminal>Notifications` check `Silence bell`

### Overview of appinstall.sh ###
Install flux, spectacle, and iterm2

### Overview of config.sh ###
Copies repo `.gitconfig`, `.vimrc`, and `.zshrc` to the home directory.
Sources `.zshrc` from the home directory.

### Overview of environment.sh ###
The script creates a `Projects` folder in the home directory which will be the main workspace for
creating new projects. `.zshrc` has an alias `workspace` (or simply `ws`) to directly change to
this directory. A go subdirectory is created inside the `Projects` directory. Inside the `.zshrc`
the `GOPATH` is configured to this directory (`~/Projects/go`). Apps are installed via the appinstall
script. Packages are installed via the packageinstall script. Git, Vim, Zsh, etc are configured via
the config.sh script. SSH/GPG keys are created via the generatekeys script. These keys will be output
by the script. Make sure to add these to git. Finally, the default shell is replaced with zsh.
### Overview of generatekeys.sh ###
Generates SSH and GPG keys which will be output for addition to github.

### Overview of packageinstall.sh ###
Installs homebrew package manager, xcode developer tools, vim, ctags, zshell, tmux, python, and go.

### Overview of .vimrc ###
The .vimrc sets backspace to be allowed at the beginning of a line, end of line, and at indents.
Autoindent is set, expanding tabs into spaces is set, shift width and tabstop are both set to 2.
Line numbers are turned on.

### Overview of .zshrc ###
Aliases: `ctags` is aliased to use homebrew version. `please` reruns the previous command as sudo.
`pro` is set to globally set the github username and user-email. `workspace` and `ws` are both set
to change the directory to the `Projects` folder. `GOPATH` is set, and Z-shell/Oh-My-Zsh settings are set.

