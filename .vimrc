set number
set autoindent
set tabstop=4
set shiftwidth=4
set expandtab
set term=xterm-256color
set laststatus=2
set nocompatible

syntax enable
filetype plugin on

" FINDING FILES
" Search down into subfolders
" Provides tab-completion for all file-related tasks
" Would be nice if there was a way to exclude certain folders from being added
" to the path
set path+=**

" The following allows us to write :find and press tab
" to browse partial matches, e.g. :find *.cpp 
set wildmenu

" Insert mode bindings
inoremap jk <Esc>

" Normal mode bindings
nnoremap sn :set invnumber<CR>
nnoremap sp :set invpaste<CR>
nnoremap sf :set invfoldenable<CR>
nnoremap <C-b> :NERDTreeToggle<CR>

" Visual mode bindings
vnoremap <C-c> :w !xclip -i -sel c<CR><CR>

" Set fold method to marker and define fold markers
set foldmethod=marker
set foldmarker=/*,*/

" Toggle fold with sf
nmap sf :call ToggleFold()<CR>

" Function to toggle fold
function! ToggleFold()
  if foldclosed(line('.')) == -1
    normal! zc
  else
    normal! zo
  endif
endfunction

" vim-plug section:
call plug#begin()
Plug 'iamcco/markdown-preview.nvim', { 'do': 'cd app && npx --yes yarn install' }
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

let g:mkdp_auto_start = 1
let g:mkdp_auto_close = 1
