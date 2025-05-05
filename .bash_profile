# bash profile
alias prof="vim ~/.bash_profile"
alias r=". ~/.bash_profile"

# dotfiles
alias config='/usr/bin/git --git-dir=/Users/charlie/.cfg/ --work-tree=/Users/charlie'

# applications
alias code="/Applications/Visual\ Studio\ Code.app/Contents/Resources/app/bin/code"
alias tmux="TERM=screen-256color-bce tmux"
alias python=python3

# git
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
alias grb="git reflog | grep 'checkout: moving from' | head"

# helpers
mkcd () {
  mkdir "$1"
  cd "$1"
}



eval "$(/opt/homebrew/bin/brew shellenv)"
#. "$HOME/.cargo/env"

source ~/.git-completion.bash

export NVM_DIR="$HOME/.nvm"
[ -s "/opt/homebrew/opt/nvm/nvm.sh" ] && \. "/opt/homebrew/opt/nvm/nvm.sh"  # This loads nvm
[ -s "/opt/homebrew/opt/nvm/etc/bash_completion.d/nvm" ] && \. "/opt/homebrew/opt/nvm/etc/bash_completion.d/nvm"  # This loads nvm bash_completion

export GPG_TTY=$(tty)

# ruby
export PATH="/opt/homebrew/opt/ruby/bin:$PATH"
export CPPFLAGS="-I/opt/homebrew/opt/ruby/include"
export PKG_CONFIG_PATH="/opt/homebrew/opt/ruby/lib/pkgconfig"
export PATH="$HOME/.rbenv/bin:$PATH"
eval "$(rbenv init -)"


# folio
export FOLIO_USE_DOCKER=true
export RACK_MINI_PROFILER=1

set rtp+=/opt/homebrew/opt/fzf

export HEROKU_ORGANIZATION=folioco


# asdf settings
. /opt/homebrew/opt/asdf/libexec/asdf.sh

set rtp+=/opt/homebrew/opt/fzf

# Export my personal ~/bin as last one to have highest precedence
export PATH="$HOME/bin:$PATH"

# Added by OrbStack: command-line tools and integration
source ~/.orbstack/shell/init.bash 2>/dev/null || :

# bash
eval "$(fzf --bash)"

. "$HOME/.local/bin/env"
