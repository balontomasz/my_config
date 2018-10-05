export ZSH=$HOME/.oh-my-zsh
ZSH_THEME="fwalch"
plugins=(git rake-fast)
source $ZSH/oh-my-zsh.sh

source ~/.zsh_profile

[[ -s $(brew --prefix)/etc/profile.d/autojump.sh ]] && . $(brew --prefix)/etc/profile.d/autojump.sh

if [ -d "<path-to-sdk>/platform-tools" ] ; then
  export PATH="<path-to-sdk>/platform-tools:$PATH"
fi

PATH=/opt/local/bin:$PATH
export PATH="$HOME/.node/bin:$PATH"


export HOST='localhost'
export PORT=3000

# Custom Aliases
alias textedit='open -a TextEdit'
alias grepp='grep'
alias sub='open -a SublimeText2'
alias pg-start='pg_ctl -D /usr/local/var/postgres start'
alias pg-stop='pg_ctl -D /usr/local/var/postgres stop'
alias gb='git branch '
alias gco='git checkout '
alias gst='git status'
alias ga='git add '
alias gl='git log --graph'
alias gdc='gd --cached '
alias t='trash '
alias grep='ag '
alias rials='rails '
alias raisl='rails '
alias rs='rails server '
alias rc='rails console '
alias vim='nvim'
alias vmi='nvim'
alias pserver='mix phx.server'
alias pconsole='iex -S mix phx.server'
alias proutes='mix phx.routes'
alias ec='mix ecto.create'
alias em='mix ecto.migrate'
alias ed='mix ecto.drop'
alias be='bundle exec '
alias gpl='git pull '
alias gpr='git pull --rebase'
alias emacs="/usr/local/Cellar/emacs/24.5/Emacs.app/Contents/MacOS/Emacs -nw"
alias ta='tmux a -t '
alias gfixup='git commit --amend --no-edit'

unalias gsr

port-check() {
  lsof -i :"$1"
}

mkcd () {
  mkdir "$1"
  cd "$1"
}

reload () {
  cd .
  echo "$(ruby -v)"

  if [ "$1" = ":all" ]
  then
    echo "reloading zsh"
    source ~/.zshrc
  fi
}

editZsh () {
  vim -O ~/.zshrc ~/.zsh_profile
}

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

export PATH=/Users/tomaszbalon/.local/bin:$PATH
export PATH="/usr/local/opt/imagemagick@6/bin:$PATH"


export BUNDLER_EDITOR='nvim'
export EDITOR='nvim'
export PATH="$HOME/.rbenv/bin:$PATH"
#if which rbenv > /dev/null; then eval "$(rbenv init -)"; fi
export PATH="/usr/local/opt/libxml2/bin:$PATH"
export PATH="/usr/local/opt/icu4c/bin:$PATH"
eval "$(rbenv init -)"
