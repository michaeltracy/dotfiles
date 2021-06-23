# I don't like having duplicates in my history
HISTCONTROL=erasedups

# And the git in the prompt
export GIT_PS1_SHOWDIRTYSTATE=true
PS1='\h:\W \u $(__git_ps1 "(%s)")\$ '

# Prepend our bin to PATH
PATH=$HOME/bin:$PATH

# Set up alias folder
if [ -d ~/.bash_alias.d ]; then
    for alas in ~/.bash_alias.d/*.sh; do
        source "$alas"
    done
fi

# Set up a folder to hold onto various env vars;
# some projects/tools require specific things to be set.
if [ -d ~/.profile.d ]; then
    for profile in ~/.profile.d/*.sh; do
        source "$profile"
    done
fi

export PATH="/usr/local/sbin:$PATH"
