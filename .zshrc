# Path to your oh-my-zsh configuration.
 ZSH=$HOME/.oh-my-zsh
#ZSH=/Users/zthrash/.dotfiles/zsh
 #Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
ZSH_THEME="robbyrussell"
# ZSH_THEME="eastwood"

# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"

# Set to this to use case-sensitive completion
# CASE_SENSITIVE="true"

# Uncomment this to disable bi-weekly auto-update checks
# DISABLE_AUTO_UPDATE="true"

# Uncomment to change how often before auto-updates occur? (in days)
# export UPDATE_ZSH_DAYS=13

# Uncomment following line if you want to disable colors in ls
# DISABLE_LS_COLORS="true"

# Uncomment following line if you want to disable autosetting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment following line if you want to disable command autocorrection
# DISABLE_CORRECTION="true"

# Uncomment following line if you want red dots to be displayed while waiting for completion
# COMPLETION_WAITING_DOTS="true"

# Uncomment following line if you want to disable marking untracked files under
# VCS as dirty. This makes repository status check for large repositories much,
# much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
plugins=(git gitfast git-flow git-extras bower brew coffee gradle grails jira npm osx sublime vi-mode web-search z zsh-syntax-highlighting history-substring-search hub)

source $ZSH/oh-my-zsh.sh
source ~/dotfiles/bash/env
source ~/dotfiles/bash/config
source ~/dotfiles/bash/aliases

# bindkey "$terminfo[kcuu1]" history-substring-search-up
# bindkey "$terminfo[kcud1]" history-substring-search-down
bindkey '^[[A' history-substring-search-up
bindkey '^[[B' history-substring-search-down

# Customize to your needs...

. `brew --prefix`/etc/profile.d/z.sh

export PATH=$PATH:/usr/local/bin:/usr/bin:/bin:/usr/sbin:/sbin:/Users/zanthrash/.gvm/vertx/current/bin:/Users/zanthrash/.gvm/springboot/current/bin:/Users/zanthrash/.gvm/lazybones/current/bin:/Users/zanthrash/.gvm/groovyserv/current/bin:/Users/zanthrash/.gvm/groovy/current/bin:/Users/zanthrash/.gvm/griffon/current/bin:/Users/zanthrash/.gvm/grails/current/bin:/Users/zanthrash/.gvm/gradle/current/bin:/Users/zanthrash/.gvm/gaiden/current/bin

export NPM_PACKAGES="/Users/zthrash/.npm-packages"
export NODE_PATH="$NPM_PACKAGES/lib/node_modules:$NODE_PATH"
export PATH="$NPM_PACKAGES/bin:$PATH"
# Unset manpath so we can inherit from /etc/manpath via the `manpath`
# command
unset MANPATH  # delete if you already modified MANPATH elsewhere in your config
export MANPATH="$NPM_PACKAGES/share/man:$(manpath)"

#THIS MUST BE AT THE END OF THE FILE FOR GVM TO WORK!!!
[[ -s "/Users/zthrash/.gvm/bin/gvm-init.sh" ]] && source "/Users/zthrash/.gvm/bin/gvm-init.sh"

export NVM_DIR="/Users/zthrash/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && . "$NVM_DIR/nvm.sh"  # This loads nvm
