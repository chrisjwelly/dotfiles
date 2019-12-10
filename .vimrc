" Default vimrc from CS2030 
set lbr nu et ts=3 sw=3 ai si sc bs=2 wb nobk vb so=1 ru ls=2 ww=b,s,h,l,<,>,[,]
set com=sr:/*,mb:*,el:*/,://,b:#,:%,:XCOMM,n:>,fb:-,n:\:
set nojs vi=""
set mps+=<:>
set clipboard=autoselect,exclude:.*
ia teh the
ia hte the
ia oyu you
ia psvm public static void main(String[] args) {<CR>}<UP><END>
ia sop System.out.println
ia imv #include <stdio.h><CR><CR>int main(void) {<CR>return 0;<CR>}<UP><UP><END>
ia sf scanf
ia pf printf
syn on

" Dark background
set background=dark

" Hybrid relative numbering
set nu rnu

" Tabs into spaces
set expandtab

" Use 2 spaces
set tabstop=2
set softtabstop=0
set shiftwidth=2

" Add line marker at 81th character
set cc=81

" For no delay when doing <esc>O
set noesckeys

" Split navigations
" Maps Ctrl-<Direction> as if moving between splits
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>

" Java aliases
ia psv public static void
ia sopf System.out.printf
ia kattin static Kattio io = new Kattio(System.in);
ia iju import java.util

" Java compiling inside vim
autocmd Filetype java set makeprg=javac\ %
set errorformat=%A%f:%l:\ %m,%-Z%p^,%-C%.%#
map <F9> :make<Return>:copen<Return>
map <F10> :cprevious<Return>
map <F11> :cnext<Return>

" Python

" vim-plug Plugins

" Specify a directory for plugins
" - Avoid using standard Vim directory names like 'plugin'
call plug#begin('~/.vim/plugged')

Plug 'tpope/vim-sensible'
Plug 'vim-airline/vim-airline'
Plug 'scrooloose/nerdtree'
Plug 'airblade/vim-gitgutter'
Plug 'dense-analysis/ale'
Plug 'tpope/vim-rails'
" To preview markdown files
Plug 'JamshedVesuna/vim-markdown-preview'

" Initialize plugin system
call plug#end()

" NERDTree
map <C-n> :NERDTreeToggle<CR>
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif

"For vim-markdown-preview
let vim_markdown_preview_github=1
let vim_markdown_preview_browser='Mozilla Firefox'
