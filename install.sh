#!/bin/bash
echo "Starting setup"

xcode-select --install

# Install Homebrew
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install.sh)" 
brew update 

# Install Brew tools
brew install mas

# Casks 
brew cask install microsoft-office \
    google-chrome \
    tweetbot \
    textmate \
    microsoft-teams \
    slack \
    sourcetree \
    visual-studio-code \
    gimp \
    sf-symbols \
    istat-menus \
    sketch \
    intel-power-gadget \
    macdown \
    freemind \
    imageoptim \
    powershell

# Quick look plugins
# qlimagesize: Display image size and resolution
# quicklook-json: Preview JSON files
# qlmarkdown: Preview Markdown files
# qlstephen:  Preview plain text files without a file extension. Example: README, CHANGELOG, etc.
brew cask install qlimagesize \ 
    quicklook-json \
    qlmarkdown \
    qlstephen

# Amphetamine
mas install 937984704

# Xcode
mas install 497799835
brew install swiftlint

# Show filename extensions by default
defaults write NSGlobalDomain AppleShowAllExtensions -bool true

# Enable tap-to-click
defaults write com.apple.driver.AppleBluetoothMultitouch.trackpad Clicking -bool true
defaults -currentHost write NSGlobalDomain com.apple.mouse.tapBehavior -int 1

# Remove brew cruft
brew cleanup
brew cask cleanup

echo "Macbook setup completed!"
