export ZSH=$HOME/.oh-my-zsh
source ~/.zsh_profile
# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
ZSH_THEME="fwalch"

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to disable bi-weekly auto-update checks.
# DISABLE_AUTO_UPDATE="true"

# Uncomment the following line to change how often to auto-update (in days).
# export UPDATE_ZSH_DAYS=13

# Uncomment the following line to disable colors in ls.
# DISABLE_LS_COLORS="true"

# Uncomment the following line to disable auto-setting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment the following line to enable command auto-correction.
# ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
# COMPLETION_WAITING_DOTS="true"

# Uncomment the following line if you want to disable marking untracked files
# under VCS as dirty. This makes repository status check for large repositories
# much, much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# Uncomment the following line if you want to change the command execution time
# HIST_STAMPS="mm/dd/yyyy"

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(git rake-fast)

source $ZSH/oh-my-zsh.sh

# User configuration

export PATH="$PATH:$HOME/.rvm/bin" # Add RVM to PATH for scripting
# export MANPATH="/usr/local/man:$MANPATH"

# You may need to manually set your language environment
# export LANG=en_US.UTF-8

# Preferred editor for local and remote sessions
# if [[ -n $SSH_CONNECTION ]]; then
#   export EDITOR='vim'
# else
#   export EDITOR='mvim'
# fi

# Compilation flags
# export ARCHFLAGS="-arch x86_64"

# ssh
# export SSH_KEY_PATH="~/.ssh/dsa_id"

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"
[[ -s $(brew --prefix)/etc/profile.d/autojump.sh ]] && . $(brew --prefix)/etc/profile.d/autojump.sh
alias textedit='open -a TextEdit'
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

if [ -d "<path-to-sdk>/platform-tools" ] ; then
  export PATH="<path-to-sdk>/platform-tools:$PATH"
fi

export HOST='localhost:3000'
#export PORT=3000
PATH=/opt/local/bin:$PATH
alias grep='ag '

alias rials='rails '
alias raisl='rails '
alias rs='rails server '
alias rc='rails console '
alias vim='nvim'
alias vmi='nvim'
alias pserver='mix phoenix.server'
alias pconsole='iex -S mix phoenix.server'
alias proutes='mix phoenix.routes'
alias ec='mix ecto.create'
alias em='mix ecto.migrate'
alias ed='mix ecto.drop'
alias be='bundle exec '
alias gpl='git pull '
alias gpr='git pull --rebase'
alias emacs="/usr/local/Cellar/emacs/24.5/Emacs.app/Contents/MacOS/Emacs -nw"
alias ta='tmux a -t '
export PATH="$HOME/.node/bin:$PATH"

export NVM_DIR="/Users/tomaszbalon/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && . "$NVM_DIR/nvm.sh"  # This loads nvm


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

# for nightwatch
export LAUNCH_URL='http://localhost:3000'
eval "$(thefuck --alias)"
export EDITOR='nvim'
export ANDROID_HOME=/usr/local/opt/android-sdk


export LDFLAGS='-L/usr/local/opt/readline/lib'
export CPPFLAGS='-I/usr/local/opt/readline/include'
export PATH="/usr/local/opt/qt@5.5/bin:$PATH"
