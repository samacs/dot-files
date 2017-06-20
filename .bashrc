export BASH_CONFIG="~/.bashrc"

nis_bash=true
if [ -n "$ZSH_VERSION" ]; then
    is_bash=false
fi

if [ "$is_bash" = true ]; then
    # Add git completion if available
    if [ -f $(brew --prefix)/etc/bash_completion ]; then . $(brew --prefix)/etc/bash_completion; fi
    # Show system information if available
    if [ -f /usr/local/bin/archey ]; then archey -c; fi
fi

# Make NVM available
[ -s "$NVM_DIR/nvm.sh" ] && . "$NVM_DIR/nvm.sh"  # This loads nvm

###-tns-completion-start-###
if [ -f /Users/samacs/.tnsrc ]; then
    source /Users/samacs/.tnsrc
fi
###-tns-completion-end-###

[ -r "$HOME/.smartcd_config" ] && ( [ -n $BASH_VERSION ] || [ -n $ZSH_VERSION ] ) && source ~/.smartcd_config
