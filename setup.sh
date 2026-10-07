#!/bin/bash

# Find Script Location and Link vimrc
SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
ln -sf  "$SCRIPT_DIR/vimrc.vim" "$HOME/.vimrc"


# Clone a repository if missing, otherwise update it
install_repo() {
    local url="$1"
    local dir="$2"

    if [ -d "$dir/.git" ]; then
        git -C "$dir" pull --ff-only
    elif [ ! -e "$dir" ]; then
        git clone "$url" "$dir"
    else
        echo "Error: $dir exists but is not a Git repository."
        return 1
    fi
}

# Install Pathogen
mkdir -p "$HOME/.vim/autoload" "$HOME/.vim/bundle"
install_repo "https://github.com/tpope/vim-pathogen.git"  "$HOME/.vim/autoload/pathogen.vim"


# Install Plugins
install_repo "https://github.com/tpope/vim-surround.git"  "$HOME/.vim/bundle/surround"

install_repo "https://github.com/jiangmiao/auto-pairs.git"  "$HOME/.vim/bundle/auto-pair"

install_repo "https://github.com/airblade/vim-gitgutter.git"  "$HOME/.vim/bundle/vim-gitgutter"

install_repo "https://github.com/itchyny/lightline.vim.git"  "$HOME/.vim/bundle/lightline"

install_repo "https://github.com/altercation/vim-colors-solarized.git"  "$HOME/.vim/bundle/vim-colors-solarized"

install_repo "https://github.com/frazrepo/vim-rainbow.git"  "$HOME/.vim/bundle/vim-rainbow"

install_repo "https://github.com/prabirshrestha/asyncomplete.vim.git"  "$HOME/.vim/bundle/asyncomplete"

install_repo "https://github.com/prabirshrestha/asyncomplete-lsp.vim.git"  "$HOME/.vim/bundle/asyncomplete-lsp"

install_repo "https://github.com/prabirshrestha/vim-lsp.git"  "$HOME/.vim/bundle/vim-lsp"

install_repo "https://github.com/preservim/nerdtree.git"  "$HOME/.vim/bundle/nerdtree"


# Install LSPs
npm install -g pyright
npm install -g typescript typescript-language-server
npm install -g vscode-langservers-extracted
npm install -g bash-language-server
sudo apt install clangd
