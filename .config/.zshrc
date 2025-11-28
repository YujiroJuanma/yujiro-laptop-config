#
#~/.zshrc
#

# my zshrc, it sucks but it works for me.

#a couple of good opts.
setopt autocd
setopt correct #adds support for command correction for typos

#Setup history 
setopt appendhistory
HISTFILE=~/.zsh_history
HISTSIZE=10000
SAVEHIST=10000

#Completion things
autoload -Uz +X compinit && compinit


# case insensitive path-completion
zstyle ':completion:*' matcher-list '' 'm:{a-zA-Z}={A-Za-z}'
zstyle ':completion:*' menu select

#color support
autoload -U colors && colors

#Some of my aliases i use
alias ls="eza -a --icons --group-directories-first --sort=name";
alias cls="clear && hyfetch";

alias cd="z"
alias ll="ls -lh"
alias cat="batcat --theme=gruvbox-dark"
alias grep="rg"
alias clock="tty-clock -csBb"


#initialize zoxide
eval "$(zoxide init zsh)"





#set up colors for man pages with less
export LESS_TERMCAP_mb=$'\e[1;32m' # Start bold (green)
export LESS_TERMCAP_md=$'\e[1;32m' # Start bold (green)
export LESS_TERMCAP_me=$'\e[0m'    # End bold/all formatting
export LESS_TERMCAP_se=$'\e[0m'    # End standout
export LESS_TERMCAP_so=$'\e[01;33m' # Start standout (yellow)
export LESS_TERMCAP_ue=$'\e[0m'    # End underline
export LESS_TERMCAP_us=$'\e[1;4;31m' # Start underline (red)
export MANROFFOPT="-c"             # Ensure correct groff formatting

#set up the prompt and syntax highlighting
eval "$(starship init zsh)"
source ~/.config/fsh/fast-syntax-highlighting.plugin.zsh

fortune | cowsay -f cock
