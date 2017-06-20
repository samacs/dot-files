export BASH_CONFIG="~/.bash_profile"
if [ -f ~/.bashrc ]; then . ~/.bashrc; fi
if [ -f ~/.profile ]; then . ~/.profile; fi

###-tns-completion-start-###
if [ -f /Users/samacs/.tnsrc ]; then
    source /Users/samacs/.tnsrc
fi
###-tns-completion-end-###

test -e "${HOME}/.iterm2_shell_integration.bash" && source "${HOME}/.iterm2_shell_integration.bash"

source ~/.profile

[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm" # Load RVM into a shell session *as a function*

export PYENV_ROOT="$HOME/.pyenv"
export PATH="$PYENV_ROOT/bin:$PATH"

eval "$(pyenv init -)"

export PATH="$HOME/bin:$PATH"

[ -r "$HOME/.smartcd_config" ] && ( [ -n $BASH_VERSION ] || [ -n $ZSH_VERSION ] ) && source ~/.smartcd_config

if [ - f ~/.environment ]; then . ~/.environment; fi

if [ -f $(brew --prefix)/etc/bash_completion ]; then
	. $(brew --prefix)/etc/bash_completion
fi
