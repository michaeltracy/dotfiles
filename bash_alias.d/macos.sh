#!/usr/bin/env bash
if [[ "$OSTYPE" == "darwin"* ]]; then
    alias ls="gls --color=auto"
    alias grep="grep --color=auto"
    alias tar="gtar"
fi
