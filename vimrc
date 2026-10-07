" Default Settings
set noshowmode
syntax on
filetype plugin indent on
set laststatus=2
set smartcase
set number
set relativenumber
set cursorline
set scrolloff=10
set sidescrolloff=10
set expandtab
set hlsearch
set incsearch
set mouse=a
set clipboard=unnamedplus
set undofile
set hidden
set autoread

" Language Servers
" Python
if executable('pyright-langserver')
    autocmd User lsp_setup call lsp#register_server({
        \ 'name': 'pyright',
        \ 'cmd': {server_info->['pyright-langserver', '--stdio']},
        \ 'allowlist': ['python'],
        \ })
endif

" C / C++
if executable('clangd')
    autocmd User lsp_setup call lsp#register_server({
        \ 'name': 'clangd',
        \ 'cmd': {server_info->['clangd']},
        \ 'allowlist': ['c', 'cpp', 'objc', 'objcpp'],
        \ })
endif

" JavaScript / TypeScript / JSX / TSX
if executable('typescript-language-server')
    autocmd User lsp_setup call lsp#register_server({
        \ 'name': 'typescript-language-server',
        \ 'cmd': {server_info->['typescript-language-server', '--stdio']},
        \ 'allowlist': ['javascript', 'javascriptreact', 'typescript', 'typescriptreact'],
        \ })
endif

" HTML
if executable('vscode-html-language-server')
    autocmd User lsp_setup call lsp#register_server({
        \ 'name': 'html-language-server',
        \ 'cmd': {server_info->['vscode-html-language-server', '--stdio']},
        \ 'allowlist': ['html'],
        \ })
endif

" CSS
if executable('vscode-css-language-server')
    autocmd User lsp_setup call lsp#register_server({
        \ 'name': 'css-language-server',
        \ 'cmd': {server_info->['vscode-css-language-server', '--stdio']},
        \ 'allowlist': ['css', 'scss', 'less'],
        \ })
endif

" Bash
if executable('bash-language-server')
    autocmd User lsp_setup call lsp#register_server({
        \ 'name': 'bash-language-server',
        \ 'cmd': {server_info->['bash-language-server', 'start']},
        \ 'allowlist': ['sh'],
        \ })
endif


" Theme
let g:lightline = {
      \ 'colorscheme': 'solarized',
      \ }
set background=dark
colorscheme solarized

" Plugin Settings
let g:rainbow_active = 1


" Key mappings
let mapleader = " "

" LSP navigation
nnoremap <silent> gd :LspDefinition<CR>
nnoremap <silent> gr :LspReferences<CR>
nnoremap <silent> K :LspHover<CR>
nnoremap <silent> gi :LspImplementation<CR>

" LSP editing
nnoremap <silent> <leader>rn :LspRename<CR>

" LSP diagnostics
nnoremap <silent> [d :LspPreviousDiagnostic<CR>
nnoremap <silent> ]d :LspNextDiagnostic<CR>
nnoremap <silent> <leader>e :LspDocumentDiagnostics<CR>

" Completion
inoremap <expr> <Tab> pumvisible() ? "\<C-y>" : "\<Tab>"
inoremap <expr> <CR> pumvisible() ? "\<C-e>" : "\<CR>"

" Highlight
nnoremap <Esc> :nohlsearch<CR>

" Terminal
nnoremap <Leader>t :botright 12new \| terminal ++curwin<CR>
