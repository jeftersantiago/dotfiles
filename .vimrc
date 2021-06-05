set encoding=utf-8
set expandtab
set ignorecase
set smartcase
set expandtab

syntax on
filetype on

set number relativenumber

let mapleader=" "

colorscheme elflord

" changing themes
nmap<C-l> :colorscheme elflord <CR>
nmap<C-d> :colorscheme darkness<CR>

" save/leave file
map<leader>w :w<CR>
map<leader>ww :wq<CR>
map<leader>q :q!<CR>

"track white spaces
autocmd BufWritePre * %s/\s\+$//e

" compile when save
autocmd BufWritePost ~/.Xresources,~/.Xdefaults !xrdb %

"latex
autocmd BufRead,BufNewFile *.tex set filetype=tex

" compile pdflatex
autocmd FileType tex nnoremap <leader>c :! pdflatex %<CR><CR>

" open current tex file in mupdf
 autocmd FileType tex nnoremap <leader>o :! xreader $(echo % \| sed 's/tex$/pdf/') & disown <CR><CR>
