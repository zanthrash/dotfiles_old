shopt -s cdspell

#PS1="\u [\W] $ "
#export PS1="\e[0;31m$PS1\e[m"

# Erase duplicates form bash_history
export HISTCONTROL=erasedups

# resize history size
export HISTSize=5000

# append to bash_history if Terminal.app quits
shopt -s histappend

# CLI Colors
export CLICOLOR=1
# use yellow for dir's
export LSCOLORS=dxfxcxdxbxegedabagacad

if [ -f /opt/local/etc/bash_completion ]; then 
    . /opt/local/etc/bash_completion
fi



PATH=$PATH:$HOME/.rvm/bin # Add RVM to PATH for scripting

source ~/bin/dotfiles/bash/env
source ~/bin/dotfiles/bash/config
source ~/bin/dotfiles/bash/aliases

[ -r  ~/.grails_bash_complete.sh ] && source ~/.grails_bash_complete.sh
source ~/.bash_dont_think.sh
#source ~/.bash_ps1
source ~/bin/dotfiles/bash/bash_prompt
source ~/.git-completion.bash
source /usr/local/etc/bash_completion.d/git-flow-completion.bash

# init z   https://github.com/rupa/z
. ~/code/z/z.sh


#THIS MUST BE AT THE END OF THE FILE FOR GVM TO WORK!!!
[[ -s "/Users/zanthrash/.gvm/bin/gvm-init.sh" ]] && source "/Users/zanthrash/.gvm/bin/gvm-init.sh"
