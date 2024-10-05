#!/bin/sh

target=$(fd --type 'directory' --maxdepth 1 . ~/Workspace/ | fzf)

if [ -z "$target" ]; then
  exit 0
fi
session=$(basename $target | tr . _)

tmux_running=$(pgrep tmux)

if ! tmux has-session -t $session 2>/dev/null; then
    tmux new-session -dc $target -s $session
fi

if [ -z "$TMUX" ]; then
    tmux attach -t $session
else
    tmux switch-client -t $session
fi
