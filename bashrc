# shellcheck disable=1090
export NVM_DIR="$HOME/.nvm"
if [ -s "$NVM_DIR/nvm.sh" ]; then
    source "$NVM_DIR/nvm.sh"  # This loads nvm
    source "$NVM_DIR/bash_completion"  # This loads nvm bash_completion
fi

# Set up bash completion
if [ -f "$(brew --prefix)/etc/bash_completion" ]; then
  source "$(brew --prefix)/etc/bash_completion"
fi

# Set up virtualenvwrapper
if [ -f /usr/local/bin/virtualenvwrapper.sh ]; then
  source /usr/local/bin/virtualenvwrapper.sh
fi

# I don't like having duplicates in my history
HISTCONTROL=erasedups

# And the git in the prompt
export GIT_PS1_SHOWDIRTYSTATE=true
PS1='\h:\W \u $(__git_ps1 "(%s)")\$ '

# Prepend our bin to PATH
PATH=$HOME/bin:$PATH

# Set up alias folder
if [ -d ~/.bash_alias.d ]; then
    for alas in ~/.bash_alias.d/*; do
        source "$alas"
    done
fi

export PATH="/usr/local/sbin:$PATH"

#   Update all Wallpapers
#function wallpaper() {
#    sqlite3 ~/Library/Application\ Support/Dock/desktoppicture.db "update data set value = '$1'" && killall Dock 
#}
