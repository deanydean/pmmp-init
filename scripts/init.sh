#!/bin/bash
# Init the system and install all the bits
set -o errexit -o nounset -o pipefail

# Install all the bits we need to run the server
echo "Installing system packages...."
apt-get update
apt-get install -y curl sudo

# Create the pocketmine user and the initial directory structures
echo "Creating pocketmine user...."
useradd pocketmine
mkdir -p /home/pocketmine/pmmp
chown -R pocketmine:pocketmine /home/pocketmine

echo "Init complete"
