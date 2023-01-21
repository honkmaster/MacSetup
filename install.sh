#!/bin/bash
echo "Starting setup"

xcode-select --install

# Install Homebrew
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
brew update 

# Install Brew tools
brew install mas

# Casks 
brew install --cask microsoft-office \
    textmate \
    microsoft-teams \
    sourcetree \
    visual-studio-code \
    gimp \
    sf-symbols \
    istat-menus \
    sketch \
    macdown \
    monodraw \
    freemind \
    imageoptim \
    xcodes \
    zeplin \
    namechanger

# Amphetamine
mas install 937984704

# Developer tools
brew install swiftlint \
    swiftformat \
    yq \
    xcodegen \
    phrase-cli \
    swiftgen \
    licenseplist
    
# Quick look plugins
# qlimagesize: Display image size and resolution
# quicklook-json: Preview JSON files
# qlmarkdown: Preview Markdown files
# qlstephen:  Preview plain text files without a file extension. Example: README, CHANGELOG, etc.
brew install --cask qlimagesize \ 
    quicklook-json \
    qlmarkdown \
    qlstephen

# Show filename extensions by default
defaults write NSGlobalDomain AppleShowAllExtensions -bool true

# Enable tap-to-click
defaults write com.apple.driver.AppleBluetoothMultitouch.trackpad Clicking -bool true
defaults -currentHost write NSGlobalDomain com.apple.mouse.tapBehavior -int 1

# Remove brew cruft
brew cleanup

echo "Macbook setup completed!"
