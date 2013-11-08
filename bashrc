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

source ~/dotfiles/bash/env
source ~/dotfiles/bash/config
source ~/dotfiles/bash/aliases

[ -r  ~/.grails_bash_complete.sh ] && source ~/.grails_bash_complete.sh
source ~/.bash_dont_think.sh
#source ~/.bash_ps1
source ~/dotfiles/bash/bash_prompt
source ~/.git-completion.bash
source /usr/local/etc/bash_completion.d/git-flow-completion.bash

# init z   https://github.com/rupa/z
# . ~/code/z/z.sh

function grailsTestOrder() {
    grep testsuite target/test-reports/TESTS-TestSuites.xml | grep -v testsuites | cut -d\  -f8-9 | sed -E 's/name="(.*)" package="(.*)"/\2.\1/' | grep .
}
 
alias testorder=grailsTestOrder


#THIS MUST BE AT THE END OF THE FILE FOR GVM TO WORK!!!
[[ -s "/Users/zanthrash/.gvm/bin/gvm-init.sh" ]] && source "/Users/zanthrash/.gvm/bin/gvm-init.sh"

### Added by the Heroku Toolbelt
export PATH="/usr/local/heroku/bin:$PATH"
