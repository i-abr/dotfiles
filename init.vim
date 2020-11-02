call plug#begin('~/.config/nvim/bunble')
"Plug 'Shougo/deoplete.nvim', {'do': ':UpdateRemotePlugins' }
Plug 'roxma/nvim-yarp'
Plug 'ncm2/ncm2'
Plug 'ncm2/ncm2-bufword'
Plug 'ncm2/ncm2-path'
Plug 'HansPinckaers/ncm2-jedi'

Plug 'scrooloose/nerdtree'
Plug 'ayu-theme/ayu-vim'
Plug 'rakr/vim-one'
Plug 'dracula/vim', { 'as': 'dracula' }
" Plug 'roxma/nvim-completion-manager'
" Plug 'SirVer/ultisnips'
" Plug 'honza/vim-snippets'
Plug 'bling/vim-airline'
Plug 'jiangmiao/auto-pairs'
"Plug 'lervag/vimtex'
"Plug 'davidhalter/jedi-vim'
Plug 'danilo-augusto/vim-afterglow'
Plug 'sheerun/vim-polyglot'
"Plug 'dracula/vim'
"Plug 'neoclide/coc.nvim', {'branch': 'release'}
"Plug 'iamcco/markdown-preview.nvim', { 'do': { -> mkdp#util#install() } }
call plug#end()

autocmd BufEnter * call ncm2#enable_for_buffer()
set completeopt=noinsert,menuone,noselect


let g:jedi#auto_initialization = 1
let g:jedi#completions_enabled = 0
let g:jedi#auto_vim_configuration = 0
let g:jedi#smart_auto_mappings = 0
let g:jedi#popup_on_dot = 0
let g:jedi#completions_command = ""
let g:jedi#show_call_signatures = "1"

"let g:deoplete#enable_at_startup=1
inoremap <expr><tab> pumvisible() ? "\<c-n>" : "\<tab>"



" simple stuff
filetype plugin indent on
syntax on 
set number
set incsearch
set nohlsearch
set tabstop=4
set softtabstop=0
set shiftwidth=4
set expandtab
set smarttab
set splitbelow
set splitright



" split screen navigation
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>

nnoremap <C-Up> <C-W><C-K>
nnoremap <C-Down> <C-W><C-J>
nnoremap <C-Left> <C-W><C-H>
nnoremap <C-Right> <C-W><C-L>

" Theme stuff
let $NVIM_TUI_ENABLE_TRUE_COLOR=1
set termguicolors
colorscheme dracula
"let g:afterglow_blackout=1

"colorscheme ayu
"let ayucolor='dark'

"colorscheme one
"set background=dark

let g:airline_theme='one'

map <C-n> :NERDTreeToggle<CR>
let g:NERDTreeDirArrowExpandable = '▸'
let g:NERDTreeDirArrowCollapsible = '▾'
