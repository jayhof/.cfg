call plug#begin('~/.local/share/nvim/plugged')

Plug 'morhetz/gruvbox'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'ctrlpvim/ctrlp.vim'
Plug 'scrooloose/nerdtree', { 'on': 'NERDTreeToggle' }
Plug 'ryanoasis/vim-devicons', { 'on': 'NERDTreeToggle' }
Plug 'vim-syntastic/syntastic'

Plug 'editorconfig/editorconfig-vim'

Plug 'pangloss/vim-javascript', { 'for': ['vue', 'js'] }
Plug 'posva/vim-vue', { 'for': ['vue', 'js'] }
Plug 'sekel/vim-vue-syntastic', { 'for': ['vue', 'js'] }

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

" syntastic
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0

" syntastic js/vue
let g:syntastic_javascript_checkers = ['eslint']
let g:syntastic_vue_checkers = ['eslint']
let g:syntastic_javascript_eslint_exe = '$(npm bin)/eslint'
let g:syntastic_vue_eslint_exe = '$(npm bin)/eslint'

