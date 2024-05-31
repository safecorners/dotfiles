" Learn Vimscript the Hart Way
set nocompatible

" Leaders
let mapleader = ","
let maplocalleader = "\\"

" Package Manager
execute pathogen#infect()
syntax enable
filetype plugin indent on

" Options
set number relativenumber

" Quick Configuration
nnoremap <leader>ev :tabnew $MYVIMRC<cr>
nnoremap <leader>sv :source $MYVIMRC<cr>

" NERDTREE
nnoremap <leader>n :NERDTreeFocus<CR>
nnoremap <C-n> :NERDTree<CR>
nnoremap <C-t> :NERDTreeToggle<CR>
nnoremap <C-f> :NERDTreeFind<CR>

" Surrounds
nnoremap <leader>" viw<esc>a"<esc>bi"<esc>lel
nnoremap <leader>' viw<esc>a'<esc>bi'<esc>lel

" Training Your Fingers
inoremap jk <esc>
nnoremap <Up> <nop>
nnoremap <Down> <nop>
nnoremap <Left> <nop>
nnoremap <Right> <nop>
inoremap <Up> <nop>
inoremap <down> <nop>
inoremap <left> <nop>
inoremap <right> <nop>

" FileType
filetype on

augroup filetype_vim
	autocmd!
	autocmd FileType vim setlocal foldmethod=marker
	autocmd FileType vim setlocal shiftwidth=4 tabstop=4 smartindent autoindent
augroup END

augroup filetype_javascript
	autocmd!
	autocmd FileType javascript setlocal shiftwidth=2 tabstop=2 smartindent expandtab autoindent
augroup END

augroup filetype_python
	autocmd!
	autocmd FileType python setlocal shiftwidth=4 tabstop=4 smartindent autoindent
augroup END

augroup filetype_html
	autocmd!
	autocmd FileType html nnoremap <buffer> <localleader>f Vatzf
augroup END

augroup filetype_markdown
	autocmd!
	autocmd FileType markdown :onoremap ih :<c-u>execute "normal! ?^[==,--]\\+$\r:nohlsearch\rkvg_"<cr>

" Operator-Pending Mappings
onoremap in( :<c-u>normal! f(vi(<cr>
onoremap il( :<c-u>normal! F)vi(<cr>
onoremap an( :<c-u>normal! f(va(<cr>
onoremap al( :<c-u>normal! F)va(<cr>

" Status Line
set laststatus=2
set statusline=%f
set statusline+=%=
set statusline+=%=
set statusline+=%l
set statusline+=/
set statusline+=%L

" Search
set hlsearch incsearch

nnoremap <leader>h :set nohlsearch<cr>
nnoremap / :/\v

" Colors
set termguicolors
colorscheme catppuccin_mocha

