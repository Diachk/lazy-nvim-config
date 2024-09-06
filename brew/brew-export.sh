#!/bin/bash

set -e

echo '#!/bin/bash\n'

echo '########### Brew Install List ###########'
brew leaves | sed 's/^/brew install /'
echo '\n########### Brew Cask Install List ###########'
brew list --cask | sed 's/^/brew install --cask /'
echo '\n########### Mac App Store Install List ###########'
mas list | sed 's/\ /\ \ #\ /' | sed 's/^/mas install /'
