### Basic ###
i         : enter insert mode
v         : enter visual mode
0         : move to beginning of line
I         : move to beginning of line + enter insert mode
$         : move to end of line
A         : move to end of line + enter insert mode
gg        : move to top of file
G         : move to bottom of file
%         : jump to matching brace
:<number> : jump to line number
/+<regex> : search for regex (case sensitive)
n         : next occurance of search
N         : previous occurance of search
r         : replace
yy        : copy current line
dd        : delete & copy current line
d         : delete & copy current selection (visual mode)
p         : paste on line below
P         : paste directly on cursor
:sp       : horizontal split
:vsp      : vertical split

### Advanced ###
V       : enter visual line mode
ctl-v   : enter visual block mode
ctl-o   : jump to previous location
@:      : run last colon command
@@      : rerun last @: command
:Ex     : enter file explorer in current buffer
:Hex    : open file explorer in horizontal split (below)
:Vex!   : open file explorer in vertical split (right; note ! modifier)
:FZF    : file search (recursively searches from current directory)
:Rg     : word search (grep; recursively searches from current directory)
:tabnew : create new tab in file explorer
gt      : next tab
gT      : previous tab
:tab sp : open current window in new tab
I       : insert on all lines (visual block mode)
r       : replace all (visual block mode)
ctl-]   : jump to tag (definition)
g]      : list tags
ctl-t   : jump up/out from tag stack (location before jumping to a tag)
ctl-w } : open tag in preview window
ctl-w z : close preview window
:lw     : open error list
:lne    : go to next warning/error
:lp     : go to previous warning/error

# Modifiers #
Capitalization : often reverses direction of movement (n vs N)
!              : reverses the direction of a split pane

# Uncommon #
[{      : move to beginning of code block
]}      : move to end of code block
][      : move to next closing brace in column 0 (good for navitgating functions)
[]      : move to previous closing brace in column 0
