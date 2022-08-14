#!/usr/bin/env bash
set -x

[ "$(uname)" != "Darwin" ] && exit

# Finder
defaults write com.apple.Finder "AppleShowAllFiles" -bool "true"

# Dock
defaults write com.apple.dock "orientation" -string "bottom"
defaults write com.apple.dock "tilesize" -int "48"
defaults write com.apple.dock "autohide" -bool "false"
defaults write com.apple.dock "show-recents" -bool "false"
defaults write com.apple.dock magnification -bool false

# Menubar
defaults write com.apple.menuextra.clock "FlashDateSeparators" -bool "false"
defaults write com.apple.menuextra.clock "DateFormat" -string "M\u6708d\u65e5(EEE)  H:mm:ss" 
defaults write com.apple.menuextra.battery ShowPercent -bool true

# Disable .DS_Store on network disks
defaults write com.apple.desktopservices DSDontWriteNetworkStores -bool true

# Screen capture
defaults write com.apple.screencapture "disable-shadow" -bool "false" 
defaults write com.apple.screencapture "include-date" -bool "true" 
defaults write com.apple.screencapture "location" -string "~/Pictures"
defaults write com.apple.screencapture "show-thumbnail" -bool "false" 
defaults write com.apple.screencapture "type" -string "png" 

# Keyboard
defaults write -g InitialKeyRepeat -int 35
defaults write -g KeyRepeat -int 6




killall Dock
killall Finder
killall SystemUIServer
