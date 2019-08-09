# Normal Mode #
### Basic ###
```
i         : enter insert mode  
v         : enter visual mode  
:         : enter command mode  
0         : move to beginning of line  
I         : move to beginning of line + enter insert mode  
$         : move to end of line  
A         : move to end of line + enter insert mode  
gg        : move to top of file  
G         : move to bottom of file  
%         : jump to matching brace  
/+<regex> : search for regex (case sensitive)  
n         : next occurance of search  
N         : previous occurance of search  
r         : replace  
yy        : copy current line  
dd        : delete & copy current line  
p         : paste on line below  
P         : paste directly on cursor  
```
### Advanced ###
```
V           : enter visual line mode  
ctl-v       : enter visual block mode  
ctl-o       : jump to previous location  
\#          : jump to previous occurance  
\*          : jump to next occurance  
H           : jump to top of screen  
M           : jump to middle of screen  
L           : jump to bottom of screen  
zt          : move line to top  
zz          : move line to middle  
zb          : move line to bottom  
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
Fzf                    : file search (recursively searches from current directory; ! modifier opens in fullscreen) [*] {FZF}  
Rg                     : word search (grep; recursively searches from current directory; ! modifier opens in fullscreen) [*2] {FZF}  
ctl-f                  : search for word under cursor [*^2] {FZF}  
ctl-r ctl-w            : insert word under cursor into command  
tab sp                 : open current window in new tab  
lw                     : open local list (ALE uses to list errors)  
copen                  : open quickfix list  
lcl                    : close local list  
ccl                    : close quickfix list  
lne                    : go to next local list entry (warning/error)  
cn                     : go to next quickfix entry  
lp                     : go to previous local list entry (warning/error)  
cp                     : go to previous quickfix entry  
cd %:h                 : change netrw to current directory (helpful to search with Fzf/Rg in only the current directory)
cd -                   : change netrw to previous directory (helpful to change Fzf/Rg back to global search after using the above
```

# Visual Line Mode #
```
d : delete & copy lines  
```

# Visual Block Mode #
```
I : insert on all lines  
r : replace all  
d : delete & copy current selection  
```

### Modifiers ###
```
Capitalization : often reverses direction of movement (n vs N)  
!              : often reverses the direction or sets to fullscreen  
```

## Plugins ##
### FZF ###
After running an FZF command such as :FZF or :Rg
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

