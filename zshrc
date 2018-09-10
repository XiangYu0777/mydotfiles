# Path to your oh-my-zsh installation.
export ZSH=/Users/tristana/.oh-my-zsh

# Set name of the theme to load. Optionally, if you set this to "random"
# it'll load a random theme each time that oh-my-zsh is loaded.
# See https://github.com/robbyrussell/oh-my-zsh/wiki/Themes
ZSH_THEME="robbyrussell"

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to use hyphen-insensitive completion. Case
# sensitive completion must be off. _ and - will be interchangeable.
# HYPHEN_INSENSITIVE="true"

# Uncomment the following line to disable bi-weekly auto-update checks.
# DISABLE_AUTO_UPDATE="true"

# Uncomment the following line to change how often to auto-update (in days).
# export UPDATE_ZSH_DAYS=13

# Uncomment the following line to disable colors in ls.
# DISABLE_LS_COLORS="true"

# Uncomment the following line to disable auto-setting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment the following line to display red dots whilst waiting for completion.
# COMPLETION_WAITING_DOTS="true"

# Uncomment the following line if you want to disable marking untracked files
# under VCS as dirty. This makes repository status check for large repositories
# much, much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# Uncomment the following line if you want to change the command execution time
# stamp shown in the history command output.
# The optional three formats: "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
# HIST_STAMPS="mm/dd/yyyy"

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(git autojump osx)

source $ZSH/oh-my-zsh.sh

# User configuration

# export MANPATH="/usr/local/man:$MANPATH"

# You may need to manually set your language environment
# export LANG=en_US.UTF-8

# Preferred editor for local and remote sessions
if [[ -n $SSH_CONNECTION ]]; then
  export EDITOR='vim'
else
  export EDITOR='mvim'
fi

# Compilation flags
# export ARCHFLAGS="-arch x86_64"

# ssh
export SSH_KEY_PATH="~/.ssh/rsa_id"

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"



# ENV
export RUN_ENVIRON="dev"
source ~/.aliases
source /usr/local/share/zsh-autosuggestions/zsh-autosuggestions.zsh


export SVN_EDITOR=vim
export EDITOR=vim

export PATH="/usr/local/bin:/usr/bin:/usr/local/sbin:$PATH"
export PATH="/usr/local/mysql/bin:$PATH"

# PHP56
#export PATH="$(brew --prefix php56)/bin:$PATH"  #for php
#export PATH="$(brew --prefix php56)/sbin:$PATH" #for php-fpm

# PHP71
export PATH="$(brew --prefix php71)/bin:$PATH"  #for php
export PATH="$(brew --prefix php71)/sbin:$PATH" #for php-fpm

# PHP72
#export PATH="$(brew --prefix php72)/bin:$PATH"  #for php
#export PATH="$(brew --prefix php72)/sbin:$PATH" #for php-fpm

# For PHP composer path
export PATH="~/.composer/vendor/bin:$PATH"

#eval $(thefuck --alias fuck)

# man page highlight
export LESS_TERMCAP_mb=$'\E[01;31m'       # begin blinking
export LESS_TERMCAP_md=$'\E[01;38;5;74m'  # begin bold
export LESS_TERMCAP_me=$'\E[0m'           # end mode
export LESS_TERMCAP_se=$'\E[0m'           # end standout-mode
export LESS_TERMCAP_so=$'\E[38;5;246m'    # begin standout-mode - info box
export LESS_TERMCAP_ue=$'\E[0m'           # end underline
export LESS_TERMCAP_us=$'\E[04;38;5;146m' # begin underline
export CDPATH='.:/Users/tristana'

# 代理
#alias proxy='export all_proxy=socks5://127.0.0.1:1086'
alias proxy='export all_proxy=http://127.0.0.1:1080'
alias unproxy='unset all_proxy'

export no_proxy="localhost,127.0.0.1,test.io,www.solosea.com,www.solosea.cn,www.unionv2.com,member.unionv2.com"
#export http_proxy=http://127.0.0.1:1088
#export https_proxy=$http_proxy;
#
#function proxy_off()
#{
#    unset http_proxy
#    unset https_proxy
#    echo -e "已关闭代理..."
#}
#
#function proxy_on()
#{
#    export no_proxy="localhost,127.0.0.1,test.io,www.solosea.com,www.unionv2.com,member.unionv2.com"
#    export http_proxy=http://127.0.0.1:1088
#    export https_proxy=$http_proxy
#    echo -e "已开启代理..."
#}
export PATH="/usr/local/opt/curl/bin:$PATH"

# Powerline
#. /Users/tristana/Dropbox/dotfiles/src/powerline/powerline/bindings/zsh/powerline.zsh
