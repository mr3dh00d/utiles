set number
set numberwidth=1
"set mouse=a
syntax enable
set encoding=utf-8
set cursorline
set noshowmode
"set relativenumber
set showmatch
set showcmd
set ruler
set sw=2
set laststatus=2
set bg=dark
syntax enable

if empty(glob('~/.vim/autoload/plug.vim'))
  silent !curl -fLo ~/.vim/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif

call plug#begin('~/.vim/autoload')

" Themes
Plug 'morhetz/gruvbox'
Plug 'pgavlin/pulumi.vim'
Plug 'victorze/foo'
Plug 'megantiu/true.vim'

" IDE

Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'easymotion/vim-easymotion'
Plug 'scrooloose/nerdtree'
Plug 'christoomey/vim-tmux-navigator'
"Plug 'vim-scripts/AutoComplPop'
Plug 'mattn/emmet-vim'
"Plug 'itchyny/lightline.vim'
Plug 'Xuyuanp/nerdtree-git-plugin'
Plug 'ryanoasis/vim-devicons'
Plug 'airblade/vim-gitgutter'
Plug 'tiagofumo/vim-nerdtree-syntax-highlight'
Plug 'preservim/nerdcommenter'
Plug 'tpope/vim-fugitive'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
"Plug 'tpope/vim-projectionist'
"Plug 'noahfrederick/vim-composer'
"Plug 'noahfrederick/vim-laravel'

call plug#end()

if (has("termguicolors"))
	set termguicolors
endif

colorscheme gruvbox 
let g:gruvbox_constrast_dark = "hard"
let NERDTreeQuitOnOpen=0
let g:NERDTreeGitStatusUseNerdFonts=1
let g:airline_powerline_fonts=1
let mapleader=" "
let g:user_emmet_leader_key=','

"let g:lightline = {
      "\ 'active': {
      "\   'left': [ [ 'mode', 'paste' ],
      "\             [ 'gitbranch', 'readonly', 'filename', 'modified' ] ]
      "\ },
      "\ 'component_function': {
      "\   'gitbranch': 'FugitiveHead'
      "\ },
      "\ }

"nmap <Leader>e //
nmap <Leader>x <Plug>(easymotion-s2)
nmap <Leader>nt :NERDTreeFind<CR>

nmap <Leader>s :w<CR>
nmap <Leader>S :wq<CR>
nmap <Leader>q :q<CR>
nmap <Leader>Q :q!<CR>
nmap <Leader>t :terminal<CR>
