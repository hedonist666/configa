set tabstop=8 softtabstop=4 expandtab shiftwidth=4 smarttab
"creates .viminfo and maybe slows vim
set viminfo='1000,f1
:syntax on

"git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
"vim +PluginInstall +qall
set nocompatible
filetype off
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
Plugin 'VundleVim/Vundle.vim'
Plugin 'jiangmiao/auto-pairs'
Plugin 'mattn/emmet-vim'
Plugin 'joshdick/onedark.vim'
Plugin 'tpope/vim-endwise'
call vundle#end()
filetype plugin indent on

colorscheme onedark

"off it when not html 
let g:user_emmet_leader_key=','
highlight Normal ctermbg=None

:nmap <C-N><C-N> :set invnumber<CR>
nnoremap <C-K> :w<bar>:!clear;[[ -x % ]] && ./% \|\| /bin/bash ./scr.sh %<CR>

autocmd BufRead,BufNewFile *.asm setlocal smartindent
