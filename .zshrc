source ~/.profile

# Variables
HISTFILE=~/.config/zsh/.histfile
HISTSIZE=1000
SAVEHIST=1000
SHELL=zsh

# Opts
setopt interactivecomments
unsetopt beep

# Starship
eval "$(starship init zsh)"

# Plugins
source ~/.config/zsh/plugins/zsh-autosuggestions/zsh-autosuggestions.zsh
source ~/.config/zsh/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

# Syntax highlighting
typeset -A ZSH_HIGHLIGHT_STYLES

ZSH_HIGHLIGHT_STYLES[alias]='fg=#005fd7'
ZSH_HIGHLIGHT_STYLES[assign]='fg=#00afff'
ZSH_HIGHLIGHT_STYLES[back-dollar-quoted-argument]='fg=#00a6b2'
ZSH_HIGHLIGHT_STYLES[back-double-quoted-argument]='fg=#00a6b2'
ZSH_HIGHLIGHT_STYLES[back-quoted-argument]='fg=#00afff'
ZSH_HIGHLIGHT_STYLES[back-quoted-argument-unclosed]='fg=#ff0000'
ZSH_HIGHLIGHT_STYLES[back-quoted-argument-delimiter]='fg=#00afff'
ZSH_HIGHLIGHT_STYLES[builtin]='fg=#005fd7'
ZSH_HIGHLIGHT_STYLES[command]='fg=#005fd7'
ZSH_HIGHLIGHT_STYLES[commandseparator]='fg=#009900'
ZSH_HIGHLIGHT_STYLES[comment]='fg=#990000'
ZSH_HIGHLIGHT_STYLES[default]='fg=#00afff'
ZSH_HIGHLIGHT_STYLES[dollar-quoted-argument]='fg=#999900'
ZSH_HIGHLIGHT_STYLES[dollar-quoted-argument-unclosed]='fg=#ff0000'
ZSH_HIGHLIGHT_STYLES[double-hyphen-option]='fg=#00afff'
ZSH_HIGHLIGHT_STYLES[double-quoted-argument]='fg=#999900'
ZSH_HIGHLIGHT_STYLES[function]='fg=#005fd7'
ZSH_HIGHLIGHT_STYLES[global-alias]='fg=#005fd7'
ZSH_HIGHLIGHT_STYLES[hashed-command]='fg=#005fd7'
ZSH_HIGHLIGHT_STYLES[path]='fg=#00afff'
ZSH_HIGHLIGHT_STYLES[precommand]='fg=#005fd7'
ZSH_HIGHLIGHT_STYLES[rc-quote]='fg=#999900'
ZSH_HIGHLIGHT_STYLES[redirection]='fg=#00afff'
ZSH_HIGHLIGHT_STYLES[reserved-word]='fg=#005fd7'
ZSH_HIGHLIGHT_STYLES[single-hyphen-option]='fg=#00afff'
ZSH_HIGHLIGHT_STYLES[single-quoted-argument]='fg=#999900'
ZSH_HIGHLIGHT_STYLES[single-quoted-argument-unclosed]='fg=#ff0000'
ZSH_HIGHLIGHT_STYLES[suffix-alias]='fg=#005fd7'
ZSH_HIGHLIGHT_STYLES[unknown-token]='fg=#ff0000'
