set nocompatible              " be iMproved, required
syntax on
filetype off
set nowrap

set tabstop=8 softtabstop=0 expandtab shiftwidth=4 smarttab
set rtp+=~/.vim/bundle/Vundle.vim

call vundle#begin()

Plugin 'VundleVim/Vundle.vim'

"Core plugins
Plugin 'kien/ctrlp.vim'
Plugin 'flazz/vim-colorschemes'

"Helpfull
Plugin 'scrooloose/nerdtree'
Plugin 'easymotion/vim-easymotion'
Plugin 'tpope/vim-fugitive'
Plugin 'christoomey/vim-tmux-navigator'
Plugin 'bling/vim-airline'
Plugin 'Valloric/YouCompleteMe'
Plugin 'airblade/vim-gitgutter'
Plugin 'rdnetto/YCM-Generator'

"Rust language
Plugin 'rust-lang/rust.vim'

"Python
Plugin 'davidhalter/jedi-vim'

"Snipets
Plugin 'SirVer/ultisnips'

call vundle#end() 
set autoindent
set number
colorscheme jellybeans

"ignores
let g:ctrlp_custom_ignore = 'node_modules/'
let g:ctrlp_custom_ignore = 'build/'
let g:ctrlp_custom_ignore = 'bin/'

"Nnoremap
nnoremap <F5> :NERDTreeToggle<CR>j
nnoremap <c-f> :CtrlP<CR>
nnoremap <c-t> :<CR>

"Maps
map <space> <Plug>(easymotion-prefix)
command WQ wq
command Wq wq
command W w
command Q q

" better key bindings for UltiSnipsExpandTrigger
let g:UltiSnipsExpandTrigger = "<c-f>"
let g:UltiSnipsJumpForwardTrigger = "<c-f>"
let g:UltiSnipsJumpBackwardTrigger = "<c-d>"

let g:ycm_rust_src_path = '/usr/local/src/rustc-1.10.0/src'

