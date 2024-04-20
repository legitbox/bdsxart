#!/bin/bash

# Install wget
sudo dnf install -y wget

# Install git
sudo dnf install -y git

# Install Node.js using nvm
wget -qO- https://raw.githubusercontent.com/nvm-sh/nvm/v0.39.7/install.sh | bash

# Load nvm command
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  

# Install Node.js (change version as needed)
nvm install node

# Clone the repository
git clone https://github.com/bdsx/bdsx.git
cd bdsx

# Additional commands
sudo dnf config-manager --add-repo https://dl.winehq.org/wine-builds/fedora/39/winehq.repo
sudo dnf install -y winehq-devel

# Change permissions of bdsx.sh
chmod +x bdsx.sh

# Run bdsx.sh
./bdsx.sh
