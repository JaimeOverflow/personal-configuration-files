" Numbers
set number
set cursorline

" Identation
set tabstop=4 
set shiftwidth=4 
set numberwidth=1

" Search
set hlsearch

" Others
set history=1000
set title

" Pluguins
call plug#begin()
Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-surround'
Plug 'preservim/NERDTree'
Plug 'vim-python/python-syntax'
Plug 'vim-airline/vim-airline'
Plug 'mhinz/vim-signify'
Plug 'w0rp/ale'
Plug 'valloric/youcompleteme'
Plug 'majutsushi/tagbar'
call plug#end()

" plugin dependencies

" Need it to define the virtual environment for the youcompleteme plugin
let g:ycm_global_ycm_extra_conf = '~/.ycm_extra_conf.py'

" Mapping
nnoremap <C-n> :NERDTreeToggle<CR>
nnoremap <C-t> :TagbarToggle<CR>
nnoremap <C-l> :set rnu!<CR>
nnoremap <C-b> ibreakpoint()<ESC>


