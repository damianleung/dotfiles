#!/bin/bash

# runs on sunday and thursday at midnight

PATH=/Users/paulirish/.homebrew/bin:/Users/paulirish/.homebrew/sbin:/Users/paulirish/code/depot_tools:$PATH


# protocol viewer
#    git config user.name "devtools-bot"
#    git config user.email "paulirish+bot@google.com"
cd $HOME/code/pristine/debugger-protocol-viewer-pristine && git checkout gh-pages && ./update-protocol-json.sh && git commit --author="DevTools Bot <paulirish+bot@google.com>" -am "bump protocol"
cd $HOME/code/pristine/debugger-protocol-viewer-pristine && git pull && git push
