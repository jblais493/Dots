set nocompatible            " disable compatibility to old-time vi
set showmatch               " show matching brackets.
set ignorecase              " case insensitive matching
set hlsearch                " highlight search results
set tabstop=4               " number of columns occupied by a tab character
set softtabstop=4           " see multiple spaces as tabstops so <BS> does the right thing
set expandtab               " converts tabs to white space
set shiftwidth=4            " width for autoindents
set autoindent              " indent a new line the same amount as the line just typed
set number                  " add line numbers
set wildmode=longest,list   " get bash-like tab completions
set cc=80                   " set an 80 column border for good coding style
filetype plugin indent on   " allows auto-indenting depending on file type
syntax on                   " syntax highlighting

if empty(glob('~/.vim/autoload/plug.vim'))
  silent !curl -fLo ~/.vim/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif

call plug#begin('~/.vim/autoload')
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'bling/vim-airline'
Plug 'vimwiki/vimwiki'
Plug 'kristijanhusak/vim-hybrid-material'
Plug 'vim-airline/vim-airline-themes'
Plug 'scrooloose/nerdcommenter'
Plug 'skywind3000/asyncrun.vim'
Plug 'jistr/vim-nerdtree-tabs'
Plug 'mlaursen/vim-react-snippets'
Plug 'SirVer/ultisnips'
Plug 'epilande/vim-es2015-snippets'
Plug 'sheerun/vim-polyglot'
Plug 'mattn/emmet-vim'
Plug 'junegunn/goyo.vim'
Plug 'dylanaraps/wal.vim'
Plug 'vim-syntastic/syntastic'
Plug 'nvie/vim-flake8'
Plug 'ajh17/VimCompletesMe'
Plug 'tpope/vim-speeddating'
Plug 'sainnhe/vim-color-forest-night'
Plug 'trevordmiller/nova-vim'
Plug 'itchyny/lightline.vim'
Plug 'jceb/vim-orgmode'
Plug 'sbdchd/neoformat'
Plug 'mxw/vim-jsx'
Plug 'scrooloose/nerdtree'
Plug 'sbdchd/neoformat'
Plug 'pangloss/vim-javascript'
Plug 'kien/ctrlp'
Plug 'rakr/vim-two-firewatch'
Plug 'severin-lemaignan/vim-minimap'
Plug 'prettier/vim-prettier' ", { 'do': 'yarn install' }
Plug 'ryanoasis/vim-devicons'
call plug#end()

" React Snippet Config
" Trigger configuration (Optional)
let g:UltiSnipsExpandTrigger="<C-l>"

" --EMMET CONFIG--
"redefine trigger key
let g:user_emmet_leader_key=','

"Control p setup
let g:ctrlp_map = '<c-p>'
let g:ctrlp_cmd = 'CtrlP'

"Vimcompetesme tab setup"
autocmd FileType vim let b:vcm_tab_complete = 'vim'

" now (after vundle finished) it is save to turn filetype plugins on
filetype plugin indent on
syntax on

" Relative numbers in buffer
set relativenumber
set number

" Python code hilighting
let python_highlight_all=1
syntax on

" Remap ESC to kj keys.
inoremap kj <Esc>
cnoremap kj <Esc>
vmap ++ <plug>NERDCommenterToggle
nmap ++ <plug>NERDCommenterToggle

" Remap for autoclosing of brackets and quotes
inoremap " ""<left>
"inoremap ' ''<left>
inoremap ( ()<left>
inoremap [ []<left>
inoremap { {}<left>
inoremap {<CR> {<CR>}<ESC>O
inoremap {;<CR> {<CR>};<ESC>O


syntax enable

set tabstop=4       " number of visual spaces per TAB
set softtabstop=4   " number of spaces in tab when editing
set expandtab       " tabs are spaces

set number              " show line numbers

set incsearch           " search as characters are entered
set hlsearch            " highlight matches

set foldenable          " enable folding
set foldlevelstart=10   " open most folds by default
set foldnestmax=10      " 10 nested fold max

set clipboard=unnamedplus

"vnoremap y "*y
"vnoremap p "*p

" Current ColorScheme
colorscheme two-firewatch 


""set termguicolors to trueColor
if exists('+termguicolors')
  let &t_8f = "\<Esc>[38;2;%lu;%lu;%lum"
  let &t_8b = "\<Esc>[48;2;%lu;%lu;%lum"
  set termguicolors
endif

" Open Nerdtree automatically and map open/close to Ctrl n
" "autocmd vimenter * NERDTree
map <C-n> :NERDTreeToggle<CR>
" Close vim if nerdtree is last thing open
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif
" Closes nerdtree once file is selected
let NERDTreeQuitOnOpen = 1
" auto deletes file in nerdtree when deleted
let NERDTreeAutoDeleteBuffer = 1
"Nicer nerdtree
let NERDTreeMinimalUI = 1
let NERDTreeDirArrows = 1

"prettier command
autocmd FileType javascript set formatprg=prettier\ --stdin

"set powerline font
let g:airline_powerline_fonts = 1
let g:airline_theme='twofirewatch'
let g:airline_exclude_preview = 0
set laststatus=2

set encoding=UTF-8
