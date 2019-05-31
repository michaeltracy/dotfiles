export NVM_DIR="/Users/mtracy/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && . "$NVM_DIR/nvm.sh"  # This loads nvm

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
#GIT_PS1_SHOWDIRTYSTATE=true
#PS1='\h:\W \u $(__git_ps1 "(%s)")\$ '

# Prepend our bin to PATH
PATH=$HOME/bin:$PATH

# Aliases and whatnot
alias ls="gls --color=auto"
alias grep="grep --color=auto"
export PATH="/usr/local/sbin:$PATH"

#   Update all Wallpapers
function wallpaper() {
    sqlite3 ~/Library/Application\ Support/Dock/desktoppicture.db "update data set value = '$1'" && killall Dock 
}
