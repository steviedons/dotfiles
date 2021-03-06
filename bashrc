#source ~/.bash_prompt.sh

# Starting up the ssh agent and adding my key
#eval `ssh-agent -s`
#ssh-add ~/.ssh/id_rsa

## ubuntu update and dist-upgrade alias
alias up='sudo apt-get update && sudo apt-get dist-upgrade'
alias python=python3
## Colorize the ls output ##
alias ls='ls --color=auto'
alias atom='atom --force-device-scale-factor=1'

## Use a long listing format ##
alias ll='ls -la'

## Show hidden files ##
alias l.='ls -d .* --color=auto'
# if powerline is installed, then use it
# on arch edit the following file and In the block "shell", the entry for theme is set to "default". Replace that with "default_leftonly".
# vim /usr/lib/python3.5/site-packages/powerline/config_files/config.json
# restart the deamon with "powerline-daemon -k; sleep 2; powerline-daemon -q"

command -v powerline-daemon &>/dev/null
if [ $? -eq 0 ]; then
	powerline-daemon -q
	POWERLINE_BASH_CONTINUATION=1
	POWERLINE_BASH_SELECT=1
	. /usr/share/powerline/bindings/bash/powerline.sh
else
	GIT_PROMPT_ONLY_IN_REPO=0
	GIT_PROMPT_START='\[\033[0;32m\]\u@\h\[\033[0;37m\] $PWD'
	GIT_PROMPT_THEME=Default_Ubuntu
	GIT_PROMPT_THEME_FILE=~/.git-prompt-colors.sh
	source ~/dotfiles/bash-git-prompt/gitprompt.sh
fi

# Need to add a check that changes the source depending on Arch or Ubuntu
# Arch has /etc/arch-release
# Ubuntu has  cat /etc/lsb-release 
# DISTRIB_ID=Ubuntu
#if [ -f /etc/arch-release ]; 
#then
#  VIRT_SOURCE="/usr/bin/virtualenvwrapper.sh"
#else
#  VIRT_SOURCE="/usr/share/virtualenvwrapper/virtualenvwrapper.sh"
#fi

# Adding configuration to setup virtual envs for python
#if [ `id -u` != '0' ]; then
#  export VIRTUALENV_USE_DISTRIBUTE=1        # <-- Always use pip/distribute
#  export WORKON_HOME=$HOME/Sync/Envs        # <-- Where all virtualenvs will be stored
#  export PROJECT_HOME=$HOME/Sync/Envs
#  source $VIRT_SOURCE
#  export PIP_VIRTUALENV_BASE=$WORKON_HOME
#  export PIP_RESPECT_VIRTUALENV=true
#fi


# added by Anaconda3 4.4.0 installer
export PATH="/home/steve/anaconda3/bin:$PATH"


export PATH=/home/steve/anaconda3/bin:/home/steve/bin:/home/steve/bin:/home/steve/anaconda3/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/games:/usr/local/games:/snap/bin:/home/steve/.vimpkg/bin
