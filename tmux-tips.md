# Basic #
`tmux` to enter tmux. From there, `ctl-b` will be the modifier for most things you want to do. Additionally, with mouse-scroll on, holding `opt` will allow you to select and copy text to the clipboard as usual.

### Command Line ###
```
tmux                    : enter a tmux window in the given directory
tmux new -s <session>   : create new session with name
tmux ls                 : list tmux sessions
tmux attach -t <target> : attach to the target session
```

### ctl-b commands (tmux commands) ###
These commands are available once inside tmux by typing `ctl-b` <command>
\* Asterisk commands are not preceded by `ctl-b`
```
%       : vertical split
"       : horizontal split
c       : new tab
w       : view all windows
z       : maximize/reset current pane
<arrow> : switch to pane in the arrow key direction
n       : next tab
p       : previous tab
d       : detach from session
ctl-d   : close current window/pane [*]
```
