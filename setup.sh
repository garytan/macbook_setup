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
echo -e '\033[92m''[*] Installing brew package...''\033[0m'
brew install \
nmap \
git \
fish \
mas \
java11

# fish config
echo -e '\033[92m''[*] Move fish config to ''\033[93m''~/.config/fish/''\033[92m''...''\033[0m'
if [ -d "~/.config/fish/" ]; then
  cp -R ./config/fish/ ~/.config/fish/
fi

# brew cask install
echo -e '\033[92m''[*] Installing homebrew/cask package...''\033[0m'
brew install --cask \
iterm2 \
spotify \
brooklyn \
vmware-fusion \
google-chrome \
notion \
visual-studio-code \
1password \
the-unarchiver \
telegram-desktop \
messenger \
iina
# stats \
# hiddenbar \
# quip \
# microsoft-remote-desktop \

# brew cask/versions install
echo -e '\033[92m''[*] Installing homebrew/cask-versions package...''\033[0m'
brew tap homebrew/cask-versions
brew install --cask \
firefox-nightly

# brew cask/font install
# echo -e '\033[92m''[*] Installing homebrew/cask-fonts package...''\033[0m'
# brew tap homebrew/cask-fonts
# brew install \
# font-noto-sans-cjk-tc \
# --cask

# mas install
# APP_ID    |APP_NAME
# ----------|--------
# 1105332179|KKBOX
# 975937182 |Fantastical
# 539883307 |LINE
# 1176895641|Spark 
# 1451685025|WireGuard
echo -e '\033[92m''[*] Installing App Store applications...''\033[0m'
mas install \
1451685025 \
539883307 \
1176895641 \
975937182