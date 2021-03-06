if [ -x "$(command -v brew)" ]; then
  BREW_PREFIX="$(brew --prefix)"
fi

# Set up bash completion
if [ -f "$BREW_PREFIX/etc/bash_completion" ]; then
  source "$BREW_PREFIX/etc/bash_completion"
fi

if [ -f "$BREW_PREFIX/etc/bash_completion.d/git-completion.bash" ]; then
  source "$BREW_PREFIX/etc/bash_completion.d/git-completion.bash"
fi
