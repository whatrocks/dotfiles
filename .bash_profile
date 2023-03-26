alias prof="vim ~/.bash_profile"
alias r=". ~/.bash_profile"
alias evim="vim -u ~/projects/solutions/practicalvim/essential.vim"
alias config='/usr/bin/git --git-dir=/Users/charlie/.cfg/ --work-tree=/Users/charlie'
alias code="/Applications/Visual\ Studio\ Code.app/Contents/Resources/app/bin/code"

# GIT STUFF
green="\[\033[0;32m\]"
blue="\[\033[0;36m\]"
purple="\[\033[0;35m\]"
reset="\[\033[0m\]"

# Change command prompt
source ~/.git_prompt.sh
export GIT_PS1_SHOWDIRTYSTATE=1
# '\u' adds the name of the current user to the prompt
# '\$(__git_ps1)' adds git-related stuff
# '\W' adds the name of the current directory
export PS1="$purple\u$green\$(__git_ps1)$blue \W $ $reset"

# git shortcuts
alias glo="git log --pretty=oneline"
alias glu="git log --pretty=format:'%h %ad | %s%d [%an]' --graph --date=short"

# HELPER FUNCTIONS
mkcd () {
  mkdir "$1"
  cd "$1"
}

alias python=python3

eval "$(/opt/homebrew/bin/brew shellenv)"
. "$HOME/.cargo/env"


export NVM_DIR="$HOME/.nvm"
[ -s "/opt/homebrew/opt/nvm/nvm.sh" ] && \. "/opt/homebrew/opt/nvm/nvm.sh"  # This loads nvm
[ -s "/opt/homebrew/opt/nvm/etc/bash_completion.d/nvm" ] && \. "/opt/homebrew/opt/nvm/etc/bash_completion.d/nvm"  # This loads nvm bash_completion


# bun
export BUN_INSTALL="$HOME/.bun"
export PATH="$BUN_INSTALL/bin:$PATH"
