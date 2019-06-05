export NVM_DIR="$HOME/.nvm"
if [ -s "$NVM_DIR/nvm.sh" ]; then
    source "$NVM_DIR/nvm.sh"  # This loads nvm
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
#GIT_PS1_SHOWDIRTYSTATE=true
#PS1='\h:\W \u $(__git_ps1 "(%s)")\$ '

# Prepend our bin to PATH
PATH=$HOME/bin:$PATH

# Aliases and whatnot
alias ls="gls --color=auto"
alias grep="grep --color=auto"
alias tar="gtar"
export PATH="/usr/local/sbin:$PATH"

#   Update all Wallpapers
#function wallpaper() {
#    sqlite3 ~/Library/Application\ Support/Dock/desktoppicture.db "update data set value = '$1'" && killall Dock 
#}

# Docker aliases
alias denv='docker run -it --rm -v $PWD:$PWD -w $PWD'
