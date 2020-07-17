if [ -f $(brew --prefix)/etc/bash_completion ]; then
  . $(brew --prefix)/etc/bash_completion
fi

# source $(brew --prefix)/etc/bash_completion.d/git-prompt.sh

export PS1="\[\033[01;34m\]\w\[\033[0;32m\]\$(__git_ps1) \[\033[01;34m\]\$\[\033[00m\] "
export GREP_OPTIONS='--color=auto'
export LS_OPTIONS='--color=auto'
export CLICOLOR=1
export LSCOLORS=gxfxbEaEBxxEhEhBaDaCaD

export HOMEBREW_NO_ANALYTICS=1

alias ..='cd ..'
alias la='ls -a'
alias ll='ls -l'
alias lla='ls -al'

alias g='git'
alias gk='gitk'

# brew
brewdeps() { brew list -1 | while read cask; do echo -ne "\x1B[1;34m $cask \x1B[0m"; brew uses $cask --installed | awk '{printf(" %s ", $0)}'; echo ""; done }

alias yta='g diff --name-only | grep spec | xargs yarn jest'

ulimit -n 8192

# Autocomplete for 'g' as well
complete -o default -o nospace -F _git g

# z - jump around
_Z_CMD=x
. `brew --prefix`/etc/profile.d/z.sh

eval "$(hub alias -s)"

[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm" # Load RVM into a shell session *as a function*

export PATH="/usr/local/opt/tcl-tk/bin:$PATH"

