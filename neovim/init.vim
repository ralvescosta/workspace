:set number
:set relativenumber
:set autoindent
:set tabstop=4
:set shiftwidth=4
:set smarttab
:set softtabstop=4
:set mouse=a

call plug#begin()

" Surrounding ysw)
Plug 'http://github.com/tpope/vim-surround'

" NerdTree
Plug 'https://github.com/preservim/nerdtree'

" For Commenting gcc & gc
Plug 'https://github.com/tpope/vim-commentary'

" Status bar Airline and Ailine Theme
Plug 'https://github.com/vim-airline/vim-airline'
Plug 'https://github.com/vim-airline/vim-airline-themes'

" CSS Color Preview
Plug 'https://github.com/ap/vim-css-color'

" Retro Scheme
Plug 'https://github.com/rafi/awesome-vim-colorschemes'

" Auto Completion
Plug 'https://github.com/neoclide/coc.nvim',  {'branch': 'master', 'do': 'yarn install'}

" Developer Icons
Plug 'https://github.com/ryanoasis/vim-devicons' 

" Vim Terminal
Plug 'https://github.com/tc50cal/vim-terminal' 

" TagbaR for code navigation
Plug 'https://github.com/preservim/tagbar' 

" CTRL + N for multiple cursors
Plug 'https://github.com/terryma/vim-multiple-cursors'

Plug 'https://github.com/Mofiqul/dracula.nvim'
Plug 'https://github.com/airblade/vim-gitgutter'
Plug 'https://github.com/jiangmiao/auto-pairs'

set encoding=UTF-8

call plug#end()
" --- Just Some Notes ---
" :PlugClean :PlugInstall :UpdateRemotePlugins
"
" :CocInstall coc-python
" :CocInstall coc-clangd
" :CocInstall coc-snippets
" :CocCommand snippets.edit... FOR EACH FILE TYPE


set guifont=DroidSansMono\ Nerd\ Font\ 11
:colorscheme dracula

nnoremap <C-f> :NERDTreeFocus<CR>
nnoremap <C-n> :NERDTree<CR>
nnoremap <C-t> :NERDTreeToggle<CR>
nnoremap <C-l> :call CocActionAsync('jumpDefinition')<CR>

nmap <F8> :TagbarToggle<CR>

:set completeopt-=preview " For No Previews

let g:NERDTreeDirArrowExpandable="+"
let g:NERDTreeDirArrowCollapsible="~"

let g:gitgutter_terminal_reports_focus=1

" air-line
"
let g:airline_powerline_fonts = 1
let g:airline_theme= 'molokai'

if !exists('g:airline_symbols')
    let g:airline_symbols = {}
endif