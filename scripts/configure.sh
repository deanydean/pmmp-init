#!/bin/bash
# Configure the PMMP server
set -o errexit -o nounset -o pipefail

# Add the default config to the pmmp install dir
cp -R /opt/pmmp/etc/* /home/pocketmine/pmmp/.
chown -R pocketmine:pocketmine /home/pocketmine

echo "Configuration complete"
