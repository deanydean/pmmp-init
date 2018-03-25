#!/bin/bash
# Start the PMMP server
set -o errexit -o nounset -o pipefail

echo "Getting latest PMMP..."
/opt/pmmp/scripts/install.sh

echo "Starting PMMP server...."
pushd /home/pocketmine/pmmp
    sudo -u pocketmine ./start.sh
popd
echo "PMMP server exited code=$?"
