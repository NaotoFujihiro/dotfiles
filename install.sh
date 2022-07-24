#!/bin/sh

DIR_INSTALL="${DIR_INSTALL:-$HOME/repos/github.com/NaotoFujihiro/dotfiles}"

if [ -d "$DIR_INSTALL" ]; then
    echo "Updating the installed dotfiles...";
    (
        cd "$DIR_INSTALL"
        git pull --ff-only "git@github.com:NaotoFujihiro/dotfiles.git"
    )
else
    echo "Installing dotfiles...";
    git clone "git@github.com:NaotoFujihiro/dotfiles.git" "$DIR_INSTALL"
fi

/bin/bash "$DIR_INSTALL/scripts/setup.bash"