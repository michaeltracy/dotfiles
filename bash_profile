[ -f /usr/local/etc/bash_completion ] && . /usr/local/etc/bash_completion

if [ -f `brew --prefix`/etc/bash_completion.d/git-completion.bash ]; then
  . `brew --prefix`/etc/bash_completion.d/git-completion.bash
fi
#export GIT_PS1_SHOWDIRTYSTATE=true
#export PS1='\h:\W \u$(__git_ps1)\$ '
#export PS1='[\u@mbp \w$(__git_ps1)]\$ '

if [ -f $HOME/.bashrc ]; then
    . $HOME/.bashrc
fi
