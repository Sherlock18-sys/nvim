set title
set number
set mouse=a
set numberwidth=1
set clipboard=unnamed
syntax enable
set showcmd
set ruler
set encoding=UTF-8
set showmatch
set shiftwidth=4
set tabstop=4
set softtabstop=4
set expandtab

set cmdheight=1
"set noshowmode
set colorcolumn=120

set termguicolors
"set norwrap
"set smartindent
set relativenumber
set laststatus=2
"set cursorline
"set cursorcolumn

"set foldmethod=indent   "fold based on indent
"set foldnestmax=10    "deepest fold is 10 levels
"set nofoldenable        "dont fold by default
"set foldlevel=1         "this is just what i use

set splitright
set splitbelow


call plug#begin('~/AppData/Local/nvim/plugged')

" Themes
Plug 'morhetz/gruvbox'
Plug 'joshdick/onedark.vim'
Plug 'shinchu/lightline-gruvbox.vim'

" Powerline
Plug 'powerline/powerline'


"Airline
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
source $HOME/AppData/Local/nvim/plugin-config/airline-config.vim

" status bar
"Plug 'maximbaz/lightline-ale'
"Plug 'itchyny/lightline.vim'

" syntax
Plug 'sheerun/vim-polyglot'


" Tree
Plug 'scrooloose/nerdtree'


" typing
Plug 'jiangmiao/auto-pairs'
Plug 'alvan/vim-closetag'


" IDE
Plug 'easymotion/vim-easymotion'
Plug 'christoomey/vim-tmux-navigator'
Plug 'yggdroot/indentline'


" cursor multiple
Plug 'mg979/vim-visual-multi', {'branch': 'master'}


"scrolling soft
Plug 'psliwka/vim-smoothie'


"Comments
Plug 'preservim/nerdcommenter'


" Autocomplete Use release branch (recommend)
Plug 'neoclide/coc.nvim', {'branch': 'release'}
source $HOME/AppData/Local/nvim/plugin-config/coc-config.vim

"emmet
Plug 'mattn/emmet-vim'


"Snippets
Plug 'MarcWeber/vim-addon-mw-utils'
Plug 'tomtom/tlib_vim'
Plug 'garbas/vim-snipmate'
Plug 'grvcoelho/vim-javascript-snippets'

" eslint
Plug 'eslint/eslint'


" React native snippets
Plug 'dsznajder/vscode-es7-javascript-react-snippets', { 'do': 'yarn install --frozen-lockfile && yarn compile' }


" Autoformat
Plug 'Chiel92/vim-autoformat'

"Git integration
Plug 'tpope/vim-fugitive'
"Plug 'tpope/vim-rhubarb'
Plug 'junegunn/gv.vim'
"Plug 'vim-scripts/vim-gitgutter'
Plug 'mhinz/vim-signify', { 'branch': 'legacy' }
Plug 'nvim-lua/plenary.nvim'
Plug 'nvim-telescope/telescope.nvim'

call plug#end()

set updatetime=100

"snipmate
let g:snipMate = {'snippet_version': 1}

"let g:lightline = {}
"let g:lightline.colorscheme = 'gruvbox'
let g:airline_theme= 'biogoo'

"nerdtree
let NERDTreeShowHidden=1
let NERDTreeQuitOnOpen=1
"let NERDTreeMinimalUI=1
let NERDTreeDirArrows=1
"let NERDTreeShowLineNumbers=1
"let g:NERDTreeDirArrowExpandable = '▶'
"let g:NERDTreeDirArrowCollapsible = '▼'
"let g:NERDTreeChDirMode = 2  " Cambia el directorio actual al nodo padre actual

let g:closetag_filenames = '*.html,*.js,*.jsx,*.ts,*.tsx'

colorscheme gruvbox
let g:gruvbox_contrast_dark = "dark"
"highlight Normal ctermbg=Black

let mapleader=" "

"configuracion de tabs
let g:indentLine_enabled = 1
let g:indentLine_char = '¦'
let g:indentLine_faster = 1


let g:airline#extensions#tabline#enabled = 1  " Mostrar buffers abiertos (como pestañas)
"let g:airline#extensions#tabline#fnamemod = ':t'  " Mostrar sólo el nombre del archivo

let g:airline#extensions#tabline#left_sep = ' '
let g:airline#extensions#tabline#left_alt_sep = '|'

let g:airline#extensions#tabline#formatter = 'default'


let g:gitgutter_terminal_reports_focus=0


" Keys para guardar y salir
nmap <Leader>w :w<CR>
nmap <Leader>q :q<CR>

"cerrar buffer
nmap cl :bdelete<CR>


"nmap esaymotion
nmap <Leader>s <Plug>(easymotion-s2)
"nmap nerdtree
nmap <Leader>nt :NERDTreeFind<CR>

"TABS para cambiar de buffers
nnoremap <silent> <TAB> :bnext<CR>
nnoremap <silent> <S-TAB> :bprevious<CR>


noremap <F3> :Autoformat<CR>

"Mueve bloques de codigo en modo visual
xnoremap K :move '<-2<CR>gv-gv
xnoremap J :move '>+1<CR>gv-gv


" Salir terminal
tnoremap <Esc> <C-\><C-n>

" Abrir terminal a la derecha
nnoremap <c-t> :vsplit<CR>:ter<CR>

" Abrir buffer a la derecha
nnoremap <leader>sp :vsp<CR>

nnoremap <silent> <right> :vertical resize +5<CR>
nnoremap <silent> <left> :vertical resize -5<CR>
nnoremap <silent> <up> :resize +5<CR>
nnoremap <silent> <down> :resize -5<CR>

