set number
set autoindent
set tabstop=4
set shiftwidth=4
set expandtab
set term=xterm-256color
set laststatus=2

" Insert mode bindings
inoremap jk <Esc>

" Normal mode bindings
nnoremap sn :set invnumber<CR>
nnoremap sp :set invpaste<CR>

" Visual mode bindings
vnoremap <C-c> :w !xclip -i -sel c<CR><CR>

" vim-plug section:
call plug#begin()
Plug 'mg979/vim-visual-multi', {'branch': 'master'}
Plug 'junegunn/vim-easy-align'
Plug 'https://github.com/junegunn/seoul256.vim.git'
Plug 'fatih/vim-go', { 'tag': '*' }
Plug 'bluz71/vim-moonfly-colors', { 'as': 'moonfly' }
Plug 'dracula/vim', { 'as': 'dracula' }
Plug 'junegunn/fzf', { 'dir': '~/.fzf' }
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'nsf/gocode', { 'rtp': 'vim' }
Plug 'preservim/nerdtree', { 'on': 'NERDTreeToggle' }
Plug 'tpope/vim-fireplace', { 'for': 'clojure' }
Plug 'sheerun/vim-polyglot'
call plug#end()

colorscheme moonfly
highlight Normal ctermbg=black guibg=black

