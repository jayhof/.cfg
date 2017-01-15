call plug#begin('~/.local/share/nvim/plugged')

Plug 'morhetz/gruvbox'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'scrooloose/nerdtree', { 'on': 'NERDTreeToggle' }
Plug 'ryanoasis/vim-devicons', { 'on': 'NERDTreeToggle' }

Plug 'editorconfig/editorconfig-vim'

Plug 'posva/vim-vue', { 'for': ['vue', 'js'] }

call plug#end()


" UI
"
syntax on
set relativenumber

" colorscheme
colorscheme gruvbox
set background=dark
let g:gruvbox_termcolors=256
let g:gruvbox_bold=0

" airline
let g:airline_powerline_fonts=1
let g:airline_theme='gruvbox'

" nerdtree
nmap <leader>t :NERDTreeToggle<CR>
