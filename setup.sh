#!/bin/bash

# Install Pathogen
mkdir ~/.vim/autoload/
git clone https://github.com/tpope/vim-pathogen.git ~/.vim/autoload/pathogen.vim

# Install Plugins
git clone https://github.com/tpope/vim-surround.git ~/.vim/bundle/surround
git clone https://github.com/jiangmiao/auto-pairs.git ~/.vim/bundle/auto-pair
git clone https://github.com/airblade/vim-gitgutter.git ~/.vim/bundle/vim-gitgutter
git clone https://github.com/itchyny/lightline.vim.git ~/.vim/bundle/lightline
git clone https://github.com/altercation/vim-colors-solarized.git ~/.vim/bundle/vim-colors-solarized
git clone https://github.com/frazrepo/vim-rainbow.git ~/.vim/bundle/vim-rainbow
git clone https://github.com/prabirshrestha/asyncomplete.vim.git ~/.vim/bundle/asyncomplete
git clone https://github.com/prabirshrestha/asyncomplete-lsp.vim.git ~/.vim/bundle/asyncomplete-lsp
git clone https://github.com/prabirshrestha/vim-lsp.git ~/.vim/bundle/vim-lsp

# Install LSPs
npm install -g pyright
npm install -g typescript typescript-language-server
npm install -g vscode-langservers-extracted
npm install -g bash-language-server

