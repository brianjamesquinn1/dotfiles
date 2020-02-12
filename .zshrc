# Aliases
alias ctags='`brew --prefix`/bin/ctags'
alias please='sudo $(fc -ln -1)'
alias pro='git config --global user.name "<insert name>" && git config --global user.email "<insert email>" && cp ~/.ssh/id_rsa_pro.pub ~/.ssh/id_rsa.pub && cp ~/.ssh/id_rsa_pro ~/.ssh/id_rsa'
alias tag='ctags -R -o .tags .'
alias ws='cd $HOME/Projects'
alias workspace='cd $HOME/Projects'

# Environment Variables
export WORKSPACE=$HOME/Projects
export GOPATH=$HOME/Projects/go
export PATH=$PATH:$GOPATH/bin:/usr/local/opt/llvm/bin
export TERM=xterm-256color

# Custom Bindings
bindkey '^[OA' history-beginning-search-backward
bindkey '^[OB' history-beginning-search-forward

# Z-shell settings
export ZSH=/Users/$USER/.oh-my-zsh
#ZSH_THEME="jnrowe"
#ZSH_THEME="miloshadzic"
#ZSH_THEME="mrtazz"
#ZSH_THEME="nicoulaj"
#ZSH_THEME="pygmalion"
#ZSH_THEME="robbyrussell"
#ZSH_THEME="skaro"
ZSH_THEME="sporty_256"
source $ZSH/oh-my-zsh.sh

# The following lines were added by compinstall

zstyle ':completion:*' completer _expand _complete _ignored _correct
zstyle ':completion:*' list-colors ''
zstyle ':completion:*' matcher-list '' 'm:{[:lower:]}={[:upper:]} r:|[._-]=* r:|=*'
zstyle ':completion:*' max-errors 1
zstyle ':completion:*' menu select=1
zstyle ':completion:*' select-prompt %SScrolling active: current selection at %p%s
zstyle ':completion:*' squeeze-slashes true
zstyle :compinstall filename '/Users/jayquinn/.zshrc'

autoload -Uz compinit
compinit
# End of lines added by compinstall
# Lines configured by zsh-newuser-install
HISTFILE=~/.histfile
HISTSIZE=1000
SAVEHIST=5000
setopt appendhistory beep
unsetopt extendedglob
# End of lines configured by zsh-newuser-install

setopt INC_APPEND_HISTORY

