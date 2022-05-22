#!/bin/bash
set -eu

# Show hidden files in Finder
defaults write com.apple.finder AppleShowAllFiles -boolean true
killall Finder

# Enable continues input when press and hold key
defaults write -g ApplePressAndHoldEnabled -boolean true

# Disable shadow of screen capture
defaults write com.apple.screencapture disable-shadow -boolean true
