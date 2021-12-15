#!/bin/bash

# Install homebrew & Xcode Command Line Tools
echo -e '\033[92m''[*] Installing homebrew...''\033[0m'
/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"

# Apple Silicon add PATH
if [[ `uname -m` == 'arm64' ]]; then
  export PATH=/opt/homebrew/bin:$PATH
fi

# Turn off analytics
brew analytics off

# brew install
echo -e '\033[92m''[*] Installing homebrew/core package...''\033[0m'
brew install \
ffmpeg \
fish \
git \
mas \
nmap \
openjdk@11

# fish config
if [ -d "~/.config/fish/" ]; then
  echo -e '\033[92m''[*] Move fish config to ''\033[93m''~/.config/fish/''\033[92m''...''\033[0m'
  cp -R ./config/fish/ ~/.config/fish/
fi

# brew cask install
echo -e '\033[92m''[*] Installing homebrew/cask package...''\033[0m'
brew install --cask \
1password \
# appcleaner \
brooklyn \
google-chrome \
# hiddenbar \
iina \
iterm2 \
# keka \
messenger \
# microsoft-office-2016 \
# microsoft-remote-desktop \
# ngrok \
notion \
# quip \
spotify \
# stats \
telegram-desktop \
the-unarchiver \
visual-studio-code \
vmware-fusion

# brew cask/versions install
echo -e '\033[92m''[*] Installing homebrew/cask-versions package...''\033[0m'
brew tap homebrew/cask-versions
brew install --cask \
firefox-nightly

# brew cask/font install
echo -e '\033[92m''[*] Installing homebrew/cask-fonts package...''\033[0m'
brew tap homebrew/cask-fonts
brew install --cask \
font-noto-sans-cjk-tc

# mas install
echo -e '\033[92m''[*] Installing App Store applications...''\033[0m'
mas install \
1451685025 \
539883307 \
1176895641 \
975937182