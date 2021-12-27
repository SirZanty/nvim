#!/bin/bash

if [ -x "$(command -v sudo)" ]; then
  sudo npm install -g vscode-langservers-extracted typescript typescript-language-server intelephense
else
  npm install -g vscode-langservers-extracted typescript typescript-language-server intelephense
fi
