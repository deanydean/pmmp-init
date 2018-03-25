#!/bin/bash
# Install the PMMP server stuff
set -o errexit -o nounset -o pipefail

# Get the server stuff as the pocketmine user
echo "Installing the PMMP server...."
pushd /home/pocketmine
    curl -sL https://get.pmmp.io > pmmp.sh
    chown pocketmine:pocketmine pmmp.sh

    pushd pmmp
        sudo -u pocketmine bash ../pmmp.sh
    popd
popd

# TODO - Install the plugins

echo "Install complete"

