#!/bin/bash
echo "Starting setup"

xcode-select --install

# Install Homebrew
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"

# Export path for Apple Silicon Homebrew installation
export PATH=/opt/homebrew/bin:$PATH
export PATH=/opt/homebrew/sbin:$PATH

# Update brew
brew update 

# Casks 
brew install --cask microsoft-office \
    textmate \
    microsoft-teams \
    sourcetree \
    visual-studio-code \
    gimp \
    sf-symbols \
    istat-menus \
    macdown \
    monodraw \
    freemind \
    imageoptim \
    xcodes \
    zeplin \
    namechanger \
    periphery

# Install tools from MAS
brew install mas
mas install 937984704 # Amphetamine
mas install 1532419400 # MeetingBar
mas install 1388020431 # DevCleaner

# Developer tools
brew install swiftlint \
    swiftformat \
    yq \
    xcodegen \
    phrase-cli \
    swiftgen \
    licenseplist \
    handbrake \
    git-quick-stats \
    openapi-generator
    
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
