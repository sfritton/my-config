set nocompatible
filetype off

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'
Plugin 'tpope/vim-surround'
"Plugin 'kien/ctrlp.vim'
Plugin 'junegunn/fzf'
Plugin 'kien/rainbow_parentheses.vim'
Plugin 'mxw/vim-jsx'
Plugin 'pangloss/vim-javascript'
Plugin 'nathanaelkane/vim-indent-guides'
Plugin 'morhetz/gruvbox'
Plugin 'tomasr/molokai'
Plugin 'jiangmiao/auto-pairs'
Plugin 'scrooloose/nerdtree'
Plugin 'scrooloose/nerdcommenter'
Plugin 'tpope/vim-fugitive'
Plugin 'ap/vim-css-color'
Plugin 'SirVer/ultisnips'
Plugin 'posva/vim-vue'
Plugin 'ianks/vim-tsx'
Plugin 'leafgarland/typescript-vim'
Plugin 'Valloric/YouCompleteMe'
Plugin 'dense-analysis/ale'

" The following are examples of different formats supported.
" Keep Plugin commands between vundle#begin/end.
" plugin on GitHub repo

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
" To ignore plugin indent changes, instead use:
"filetype plugin on
"
" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
"
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line

"create swp files in a 'tmp' directory, instead of the directory where you're working
set directory^=$HOME/.vim/tmp//

syntax enable 
colorscheme gruvbox
set background=dark
set guifont=Monaco:h12

let mapleader=","

set colorcolumn=80

au VimEnter * RainbowParenthesesToggle
au Syntax * RainbowParenthesesLoadRound
au Syntax * RainbowParenthesesLoadSquare
au Syntax * RainbowParenthesesLoadBraces

let g:indent_guides_enable_on_vim_startup = 1

set number "turns on line numbering
set relativenumber "turns on relative numbering

set hidden
set history=100

filetype indent on
set nowrap
set tabstop=2
set shiftwidth=2
set expandtab
set smartindent
set autoindent

set ignorecase smartcase hlsearch showmatch
set matchtime=1
nnoremap <silent> <Enter> :nohlsearch<Bar>:echo<CR>

nnoremap <leader>rc :e $MYVIMRC<CR>
"source with one leader 
map <leader>s :w<CR>:source %<CR>:PluginInstall<CR>:x<CR>

"easier navigation of splits
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>

"easier to use snippets
let g:UltiSnipsJumpForwardTrigger="<tab>"
let g:UltiSnipsJumpBackwardTrigger="<s-tab>"

"set the snippets directory
let g:UltiSnipsSnippetDirectories=["my-snippets"]

"easier to open nerdtree
nnoremap <leader>f :NERDTree<C-R>=expand('%:p:h') . '/'<CR><CR>
"close nerdtree
nnoremap <leader>F :NERDTreeClose<CR>

"auto open/close NERDTree on entering vim or closing all files
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif

"show hidden files
let NERDTreeShowHidden=1

"easier to clear search
nnoremap <leader>d :noh<CR>

set pastetoggle=<F9>

"map fuzzy finder to ctrl p
nnoremap <C-P> :FZF<CR>

"ctrl p
"set wildignore+=*/tmp/*,*.so,*.swp,*.zip
"let g:ctrlp_custom_ignore = '\v[\/](\.(git|cache|github|tmp|vscode)|node_modules)$'

"ale
let g:ale_fixers = { 'javascript': ['prettier', 'eslint'], 'typescript': ['prettier', 'eslint'] }
let g:ale_fix_on_save = 1
let g:ale_set_balloons = 1
let g:ale_completion_enabled = 1
let g:ale_completion_tsserver_autoimport = 1
nnoremap <leader>t :ALEHover<CR>

"mouse
set mouse=a
set ttymouse=xterm

"gf - path resolution
set path=.,src,node_nodules

function! LoadFromPackage(fname)
  "path/to/module -> [path, to, module]
  let pathPieces = split(a:fname, '\/')

  "[path, to, module] -> ./packages/path/src/to/module
  let path = join(["./packages", pathPieces[0], "src", join(pathPieces[1:], '/')], '/')

  return path
endfunction

set includeexpr=LoadFromPackage(v:fname)
