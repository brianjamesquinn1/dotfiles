# Normal Mode #
### Basic ###
```
i          : enter insert mode  
v          : enter visual mode  
:          : enter command mode  
0          : move to beginning of line  
I          : move to beginning of line + enter insert mode  
$          : move to end of line  
A          : move to end of line + enter insert mode  
gg         : move to top of file  
G          : move to bottom of file  
%          : jump to matching brace  
/+<regex>  : search for regex (case sensitive)  
n          : next occurance of search  
N          : previous occurance of search  
r          : replace  
yy         : copy current line  
dd         : delete & copy current line  
p          : paste on line below  
P          : paste directly on cursor  
help <tag> : get help on a tag (call :helptags ALL to gen tags for plugins)  
```
### Advanced ###
```
V           : enter visual line mode  
ctl-v       : enter visual block mode  
ctl-o       : jump to previous location  
ctl-i       : jump forward to 'next location' (the place before ctl-o)  
\#          : jump to previous occurance  
\*          : jump to next occurance  
H           : jump to top of screen  
M           : jump to middle of screen  
L           : jump to bottom of screen  
zt          : move line to top  
zz          : move line to middle  
zb          : move line to bottom  
zf<motion>  : fold action
zfid        : fold paragraph
zo          : open folded lines
zc          : close fold
za          : toggle fold
zd          : remove fold
@:          : run last colon command  
@@          : rerun last @: command  
ctl-w |     : maximize current pane horizontally
ctl-w _     : maximize current pane vertically
ctl-w =     : make all panes equal space
ctl-w ctl-r : reverse panes
gt          : next tab  
gT          : previous tab  
ctl-]       : fast jump to tag (definition) [*] {universal-ctags}  
ctl-p       : advanced jump to tag (always accurate but needs preprocessing/slow first time) [*^1] {ALE}  
g]          : list tags  
ctl-t       : jump up/out from tag stack (location before jumping to a tag)  
ctl-w }     : open tag in preview window  
ctl-h       : advanced definition preview [*^1] {ALE}  
ctl-w z     : close preview window  
ctl-space   : advanced find references [*^1] {ALE}  
ctl-d       : toggle diff between files in current tab
[{          : move to beginning of code block  
]}          : move to end of code block  
][          : move to next closing brace in column 0 (good for navitgating functions)  
[]          : move to previous closing brace in column 0  
```

# Insert Mode #
### Basic ###
```
ctl-n : fast auto-complete  
```
### Advanced ###
```
ctl-space : advanced auto-complete [*^1] {ALE}  
```

# Visual Mode #
### Basic ###
```
d : delete & copy current selection  
y : copy current selection  
```

# Command Mode #
### Basic ###
```
<number>   : jump to line number  
sp         : horizontal split  
vsp        : vertical split  
set wrap   : wrap text
set nowrap : don't wrap text
```
### Advanced ###
```
s/<search>/<replace>/g : replace all occurances of a word (a range in the form of line numbers can be provided before the s)  
Ex                     : enter file explorer in current buffer  
Hex                    : open file explorer in horizontal split (below)  
Vex!                   : open file explorer in vertical split (right; note ! modifier)  
Tex                    : open file explorer in new tab
tab sp                 : open current window in new tab  
tabclose               : close all windows in current tab
windo                  : apply function to all panes in current window/tab (ex. windo set wrap)
lw                     : open local list (ALE uses to list errors)  
copen                  : open quickfix list  
lcl                    : close local list  
ccl                    : close quickfix list  
lne                    : go to next local list entry (warning/error)  
cn                     : go to next quickfix entry  
lp                     : go to previous local list entry (warning/error)  
cp                     : go to previous quickfix entry  
ctl-f                  : search for word under cursor [*^2] {FZF}  
ctl-r ctl-w            : insert word under cursor into command  
Fzf                    : file search (recursively searches from current directory; ! modifier opens in fullscreen) [*] {FZF}  
Fzf <directory>        : file search within the given directory (directory can be tab completed) [*] {FZF}
Rg                     : word search (grep; recursively searches from current directory; ! modifier opens in fullscreen) [*2] {FZF}  
difflist <hash>        : populate quickfix list with files differing from <hash> (branch or commit) (alias for :Git difftool --name-only <hash>) [*^] {Fugitive}
PR <branch>            : open all files differing from <branch> in a different tab in splitview (alias for :Git difftool -y <branch>) [*^] {Fugitive}
Merge                  : open all files with merge conflicts (alias for Git mergetool -y) [*] {Fugitive}
DGL                    : pull the changes from the left pane (local) into mergefile (alias for :diffget //2**/<C-r>%) [*^] {Fugitive}
DGR                    : pull the changes from the right pane (remote) into mergefile (alias for :diffget //3**/<C-r>%) [*^] {Fugitive}
cd %:h                 : change netrw to current directory (helpful to search with Fzf/Rg in only the current directory)
cd -                   : change netrw to previous directory (helpful to change Fzf/Rg back to global search after using the above
```

# Visual Line Mode #
```
d  : delete & copy lines  
zf : fold lines
```

# Visual Block Mode #
```
I : insert on all lines  
r : replace all  
d : delete & copy current selection  
```

# File Explorer (netrw) #
```
enter : open file or directory
-     : move up a directory
%     : create file
d     : create directory
D     : delete file
mt    : mark target directory for file operations
mf    : mark file for operations
mm    : move marked files into marked target
mc    : copy marked files into market target
```

### Modifiers ###
```
Capitalization : often reverses direction of movement (n vs N)  
!              : often reverses the direction or sets to fullscreen  
```

## Plugins ##
### FZF ###
After running an FZF command such as :Fzf or :Rg
```
opt-a     : select all  
opt-d     : deselect all  
tab       : select  
shift-tab : select + move upward
enter     : go to first selection (opens quickfix list if multiple selections)  
ctl-v     : open in vertical split  
ctl-x     : open in horizontal split  
ctl-t     : open in new tab  
```

### Note ###
\*Requires the subsequently listed plugin  
^Requires a custom vim mapping  
<sup>1</sup>Requires LSPs install and configured with ALE  
<sup>2</sup>Requires ripgrep installed

