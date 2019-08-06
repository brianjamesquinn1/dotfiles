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
V                       : enter visual line mode
ctl-v                   : enter visual block mode
ctl-o                   : jump to previous location
shift-3                 : jump to previous occurance
shift-8                 : jump to next occurance
zt                      : move line to top
zz                      : move line to middle
zb                      : move line to bottom
@:                      : run last colon command
@@                      : rerun last @: command
:Ex                     : enter file explorer in current buffer
:Hex                    : open file explorer in horizontal split (below)
:Vex!                   : open file explorer in vertical split (right; note ! modifier)
:FZF                    : file search (recursively searches from current directory)
:Rg                     : word search (grep; recursively searches from current directory)
:tabnew                 : create new tab in file explorer
gt                      : next tab
gT                      : previous tab
:tab sp                 : open current window in new tab
I                       : insert on all lines (visual block mode)
r                       : replace all (visual block mode)
:s/<search>/<replace>/g : replace all occurances of a word (a range in the form of line numbers can be provided before the s)
ctl-]                   : fast jump to tag (definition)
ctl-p                   : advanced jump to tag (always accurate but needs preprocessing/slow first time)
g]                      : list tags
ctl-t                   : jump up/out from tag stack (location before jumping to a tag)
ctl-w }                 : open tag in preview window
ctl-h                   : advanced definition preview
ctl-w z                 : close preview window
ctl-n                   : fast auto-complete
ctl-space               : advanced find references (normal mode)
ctl-space               : advanced auto-complete (insert mode)
:lw                     : open local list (ALE uses to list errors)
:copen                  : open quickfix list
:lcl                    : close local list
:ccl                    : close quickfix list
:lne                    : go to next local list entry (warning/error)
:cn                     : go to next quickfix entry
:lp                     : go to previous local list entry (warning/error)
:cp                     : go to previous quickfix entry

# Modifiers #
Capitalization : often reverses direction of movement (n vs N)
!              : reverses the direction of a split pane

# Uncommon #
[{      : move to beginning of code block
]}      : move to end of code block
][      : move to next closing brace in column 0 (good for navitgating functions)
[]      : move to previous closing brace in column 0
