### Installation & Environment Setup ###
1. Run `./environment.sh`, this will install/setup anything that can be automated
2. Navigate to the `languages` directory and run the corresponding shell script for
   any language you will be working with
3. If ssh/gpg keys are desired for your github account, run `./generatekeys.sh`
4. Follow instructions below to configure manual settings

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
   - `Preferences>Profiles>Colors>Basic Colors` set `Foreground` to #E8D5A9 (#EFE1C2 to match gruvbox)
   - `Preferences>Profiles>Colors>Basic Colors` set `Background` to #16222D (#282828 to match gruvbox)
   - `Preferences>Profiles>Colors>Basic Colors` set `Bold` to #DFBD22
   - `Preferences>Profiles>Colors>Basic Colors` set `Selection` to #411916
   - `Preferences>Profiles>Colors>Basic Colors` set `Selected text` to #5FFA68
   - `Preferences>Profiles>Colors>Cursor Colors` set `Cursor` to #FFCC66
   - `Preferences>Profiles>Colors>Cursor Colors` set `Cursor text` to #E8D5A9 (#EFE1C2 to match gruvbox)
   - `Preferences>Profiles>Colors>Cursor Colors` set `Cursor guide` to #8DBAC9
   - `Preferences>Profiles>Text>Cursor` check `Blinking Cursor`
   - `Preferences>Profiles>Text>Font` change font to `14pt Menlo Regular`
   - `Preferences>Profiles>Window>Window Appearance` slide `Transparency` to 1/4th
   - `Preferences>Profiles>Window>Window Appearance` slide `Blur` to 1/8th
   - `Preferences>Profiles>Window>Settings for New Windows` set `Style` to `No Title Bar`
   - `Preferences>Profiles>Terminal>Scrollback Buffer` check `Unlimited scrollback`
   - `Preferences>Profiles>Terminal>Notifications` check `Silence bell`
   - `Preferences>Profiles>Keys>Left Option Key` check `Esc+`
   - `Preferences>Profiles>Keys>Right Option Key` check `Esc+`
   - `Preferences>Profiles>Keys>Hotkey Window` check `A hotkey opens a dedicated window with this profile`
     - Set `Hotkey` to opt-space

### Overview of appinstall.sh ###
Install flux, rectangle, and iterm2

### Overview of packageinstall.sh ###
Installs general command line tools and configures them

### Overview of environment.sh ###
Creates a default workspace and runs the appinstall, packageinstall, and vim shell scripts

### Overview of generatekeys.sh ###
Generates SSH and GPG keys which will be output for addition to github.

