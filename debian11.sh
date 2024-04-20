#!/bin/bash

# Install wget
sudo apt update
sudo apt install -y wget

# Install git
sudo apt install -y git

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
sudo dpkg --add-architecture i386
sudo mkdir -pm755 /etc/apt/keyrings
sudo wget -O /etc/apt/keyrings/winehq-archive.key https://dl.winehq.org/wine-builds/winehq.key
sudo wget -NP /etc/apt/sources.list.d/ https://dl.winehq.org/wine-builds/debian/dists/bullseye/winehq-bullseye.sources
sudo apt update
sudo apt install -y --install-recommends winehq-devel

# Change permissions of bdsx.sh
chmod +x bdsx.sh

# Run bdsx.sh
./bdsx.sh
