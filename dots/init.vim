" Specify a directory for plugins
" - For Neovim: stdpath('data') . '/plugged'
" - Avoid using standard Vim directory names like 'plugin'
call plug#begin('~/.vim/plugged')

" Make sure you use single quotes

Plug 'preservim/nerdtree'
Plug 'preservim/nerdcommenter'
Plug 'marlun/vim-starwars'
Plug 'bling/vim-airline'
Plug 'tpope/vim-surround'
Plug 'thoughtbot/vim-rspec'
Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }

" Initialize plugin system
call plug#end()

set number
set scrolloff=10
set splitright
set tabstop=4 shiftwidth=4 expandtab nosmarttab
colorscheme darth

"deoplete
let g:deoplete#enable_at_startup = 1

" rspec
map <Leader>t :call RunNearestSpec()<CR>

" NerdTree
map <Leader>n :NERDTreeToggle<CR>
map <Leader>N :NERDTreeFind<CR>
let NERDTreeShowHidden=1
let NERDTreeWinSize=40

" Buffer navigation
map <Leader>w <C-w><C-w>

" Buffer sizing
map <Leader>= :vertical resize +10<CR>
map <Leader>- :vertical resize -10<CR>

" Highlighting Search
map <Leader>hs :noh<CR>

