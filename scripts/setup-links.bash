#!/usr/bin/env bash
echo "========== setup-links.bash =========="
set -x

if [ ! -d "$HOME/.ssh" ]; then
    mkdir -p "$HOME/.ssh"
    chmod 700 "$HOME/.ssh"
fi

mkdir -p \
    "$XDG_CONFIG_HOME" \
    "$XDG_STATE_HOME"

ln -sfv "$DIR_REPO/config/"* "$XDG_CONFIG_HOME"
ln -sfv "$XDG_CONFIG_HOME/zsh/.zshenv" "$HOME/.zshenv"