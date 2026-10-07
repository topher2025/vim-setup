" Load Pathogen
execute pathogen#infect()

" Language Servers
" Python
if executable('pyright-langserver')
    au User lsp_setup call lsp#register_server({
        \ 'name': 'pyright',
        \ 'cmd': {server_info->['pyright-langserver', '--stdio']},
        \ 'allowlist': ['python'],
        \ })
endif

" C / C++
if executable('clangd')
    au User lsp_setup call lsp#register_server({
        \ 'name': 'clangd',
        \ 'cmd': {server_info->['clangd']},
        \ 'allowlist': ['c', 'cpp', 'objc', 'objcpp'],
        \ })
endif

" JavaScript / TypeScript / JSX / TSX
if executable('typescript-language-server')
    au User lsp_setup call lsp#register_server({
        \ 'name': 'typescript-language-server',
        \ 'cmd': {server_info->['typescript-language-server', '--stdio']},
        \ 'allowlist': ['javascript', 'javascriptreact', 'typescript', 'typescriptreact'],
        \ })
endif

" HTML
if executable('vscode-html-language-server')
    au User lsp_setup call lsp#register_server({
        \ 'name': 'html-language-server',
        \ 'cmd': {server_info->['vscode-html-language-server', '--stdio']},
        \ 'allowlist': ['html'],
        \ })
endif

" CSS
if executable('vscode-css-language-server')
    au User lsp_setup call lsp#register_server({
        \ 'name': 'css-language-server',
        \ 'cmd': {server_info->['vscode-css-language-server', '--stdio']},
        \ 'allowlist': ['css', 'scss', 'less'],
        \ })
endif

" Bash
if executable('bash-language-server')
    au User lsp_setup call lsp#register_server({
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

" Default Settings
set noshowmode
syntax on
filetype plugin indent on
set laststatus=2

" Plugin Settings
let g:gitgutter_highlight_lines = 1
let g:rainbow_active = 1
