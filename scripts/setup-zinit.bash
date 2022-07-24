#!/usr/bin/env bash
set -x

if [ -d "$XDG_DATA_HOME/zinit/bin" ]; then
    echo "zinit is already installed."
    (
        cd "$XDG_DATA_HOME/zinit/bin"
        git pull --ff-only "https://github.com/zdharma-continuum/zinit"
    )
else
    echo "Installing zinit..."
    git clone "https://github.com/zdharma-continuum/zinit" "$XDG_DATA_HOME/zinit/bin"
fi