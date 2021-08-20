#!/bin/bash

if [ -x "$(command -v sudo)" ]; then
  sudo npm install -g vscode-langservers-extracted diagnostic-languageserver typescript typescript-language-server intelephense
else
  yarn global add vscode-langservers-extracted diagnostic-languageserver typescript typescript-language-server intelephense
fi
