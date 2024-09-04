#!/bin/bash

set -e

echo '#!/bin/bash\n' >list.sh

echo '########### Brew Install List ###########' >>list.sh
brew leaves | sed 's/^/brew install /' >>list.sh
echo '\n########### Brew Cask Install List ###########' >>list.sh
brew list --cask | sed 's/^/brew cask install /' >>list.sh
echo '\n########### Mac App Store Install List ###########' >>list.sh
mas list | sed 's/\ /\ \ #\ /' | sed 's/^/mas install /' >>list.sh
