#!/usr/bin/env bash
set -x

[ "$(uname)" != "Darwin" ] && exit
[ -n "$SKIP_HOMEBREW" ] && exit

if type brew > /dev/null; then
    echo "Homebrew is already installed."
else
    echo "Installing Homebrew..."
    /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install.sh)"
    echo 'eval "$(/opt/homebrew/bin/brew shellenv)"' >> "/$HOME/.zprofile"
    eval "$(/opt/homebrew/bin/brew shellenv)"
fi

echo "Updating Homebrew..."
brew update

read -p "Do you want to install Homebrew apps from Brewfile? [y/N]" bool_input
case "$bool_input" in
    [yY]* ) echo "Installing Homebrew apps..."
            brew bundle install --file "${DIR_REPO}/config/homebrew/Brewfile" --no-lock --verbose;;
    [nN]* ) echo "Skipped";;
esac