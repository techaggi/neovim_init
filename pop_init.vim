set number
set relativenumber
set ignorecase
syntax enable
set clipboard=unnamedplus
set hidden
set splitbelow splitright
set noswapfile
set hlsearch
set incsearch
set nofoldenab

"reload vim config
command! Reload execute "source ~/.vimrc"

cabbrev Q q!

inoremap jj <ESC>let mapleader = " "


" replace space mit unterstrich im selektierten bereich
noremap <leader>- :s/\%V /_/g

" replace ende mit 2x space im ganzen file
noremap <leader>4 :%s/$/  /

                                                                                                                                          ::'<,'>s/ /-/g  

:map rpsd :%s/Name. /\^V^V^M&/g^M 
:map rpsd :'<,'>s/ /-/
:map rpsd :'<,'>s/ /-/g                                                    

Type : to enter command mode. You would find in the prompt below :'<,'>
The final command would look like this :'<,'>s/ /-/g
The final command would look like this :'<,'>s/ /-/g



" remap split navigation to just control
noremap <C-h> <C-w>h
noremap <C-j> <C-w>j
noremap <C-k> <C-w>k
noremap <C-l> <C-w>l

" make adjusting split size more user friendly


noremap <silent> <C-left> :vertical resize +3<CR>
noremap <silent> <C-right> :vertical resize -3<CR>
noremap <silent> <C-up> :resize +3<CR>
noremap <silent> <C-down> :resize -3<CR>

let g:UltiSnipsExpandTrigger="<tab>"  " use <Tab> to trigger autocompletion
let g:UltiSnipsJumpForwardTrigger="<A-j>"
let g:UltiSnipsJumpBackwardTrigger="<A-k>"


call plug#begin('~/.config/nvim/plugged')

Plug 'http://github.com/tpope/vim-surround'
Plug 'https://github.com/tpope/vim-commentary'
Plug 'https://github.com/vim-airline/vim-airline' 
Plug 'https://github.com/preservim/nerdtree'
Plug 'https://github.com/itchyny/lightline.vim'
Plug 'scrooloose/nerdcommenter'
Plug 'https://github.com/ap/vim-css-color'
Plug 'https://github.com/rafi/awesome-vim-colorschemes'
Plug 'https://github.com/ryanoasis/vim-devicons'
Plug 'https://github.com/tc50cal/vim-terminal' 
Plug 'https://github.com/terryma/vim-multiple-cursors'
Plug 'https://github.com/tpope/vim-commentary' 
Plug 'https://github.com/sirver/ultisnips'
Plug 'https://github.com/honza/vim-snippets'
Plug 'https://github.com/junegunn/goyo.vim'
Plug 'https://github.com/tpope/vim-repeat'
" Plug 'Shougo/deoplete.nvim',  { 'do': ':UpdateRemotePlugins' }
" Plug 'jiangmiao/auto-pairs'
Plug 'https://github.com/neoclide/coc.nvim'
Plug 'https://github.com/preservim/tagbar' 
Plug 'vimwiki/vimwiki'
Plug 'https://github.com/mattn/calendar-vim'
Plug 'godlygeek/tabular'
Plug 'elzr/vim-json'
Plug 'myhere/vim-nodejs-complete'
Plug 'plasticboy/vim-markdown'
Plug 'iamcco/markdown-preview.nvim', { 'do': 'cd app && yarn install' }
Plug 'junegunn/fzf.vim'
Plug 'vim-pandoc/vim-pandoc-syntax'
Plug 'ctrlpvim/ctrlp.vim' "fuzzy find files
Plug 'christoomey/vim-tmux-navigator'

call plug#end()

" do not close the preview tab when switching to other buffers
let g:mkdp_auto_close = 0
nnoremap <M-m> :MarkdownPreview<CR>

"Control P for fzf finder
nnoremap <C-p> :Files<Cr>


"nnoremap <C-f> :NERDTreeFocus<CR>
nnoremap <C-n> :NERDTree<CR>
nnoremap <C-t> :NERDTreeToggle<CR>
"nnoremap <C-l> :call CocActionAsync('jumpDefinition')<CR>

nmap <F8> :TagbarToggle<CR>

:set completeopt-=preview " For No Previews

" :colorscheme jellybeans

let g:NERDTreeDirArrowExpandable="+"
let g:NERDTreeDirArrowCollapsible="~"

let g:vimwiki_list = [{'path': '$HOME/Dropbox/wiki'}] " set path to a directory inside Dropbox
let g:vimwiki_ext = '.md' " set extension to .md
let g:vimwiki_global_ext = 0 " make sure vimwiki doesn't own all .md files

let g:ackprg = 'ag --nogroup --nocolor --column' "silver searcher fzf - like

silent! call repeat#set("\<Plug>MyWonderfulMap", v:count)

nmap <S-Enter> O<Esc>
nmap <CR> o<Esc>
