#-*-mode:shell-script-*-

# Prompt
PS1="%. %# "

# Turn on some options
setopt auto_cd          # Change directory by typing a directory name on its own.
setopt extended_glob    # Turn on more powerful pattern matching features.

# Set some variables.
# Use 100 history lines internally, save all of them to ~/.zsh_history
HISTSIZE=100
SAVEHIST=100
HISTFILE=~/.zsh_history

# Set the language to UTF8
export LC_ALL=en_US.UTF-8
export LANG=en_US.UTF-8
export LC_CTYPE=en_US.UTF-8

# Navigation aliases.
# ------------------
alias ll='ls -l'
alias lla='ls -la'

# Replacement aliases
# -------------------
alias wget='curl -O'

# Git aliases
# -----------
alias gst='git status'
alias gd='git diff'
alias gdt='git difftool'
alias gl='git pull'
alias gp='git push'
alias gc='git commit'
alias gca='git commit -a'
alias gcm='git commit -m'
alias gcam='git commit -am'
alias gb='git branch'
alias gco='git checkout'
alias gba='git branch -a'
alias gsb='git show-branch'
alias gka='gitk --all &'
alias gclean='git clean -dxf'
alias glo='git log --oneline'
alias glog="git log --graph --pretty=format:'%Cred%h%Creset -%C(yellow)%d%Creset %s %Cgreen(%cr) %C(bold blue)<%an>%Creset' --abbrev-commit"

# Set up a rake alias
alias rake="noglob rake"

# Emacs 
# -----
alias ed='emacs --daemon'
# These require emacs server to be running
alias em='emacsclient -n'
alias et='emacsclient -t'
alias ek="emacsclient -e '(kill-emacs)'"

# Make sure colours are supported in terminal mode
export TERM=xterm-256color

# Load the function-based completion system.
autoload -U compinit
compinit

# Try and fool emacs into letting me use this shell
[[ $EMACS = t ]] && unsetopt zle

GPG_TTY=$(tty)
export GPG_TTY
