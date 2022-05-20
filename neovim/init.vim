syntax on
:set number
:set relativenumber
:set autoindent
:set tabstop=4
:set shiftwidth=4
:set smarttab
:set softtabstop=4
:set mouse=a
:set spelllang=en_us

call plug#begin()

" Surrounding ysw)
Plug 'http://github.com/tpope/vim-surround' 

" NerdTree
Plug 'https://github.com/preservim/nerdtree' 

" For Commenting gcc & gc
Plug 'https://github.com/tpope/vim-commentary'

" Seaching
Plug 'https://github.com/junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'https://github.com/junegunn/fzf.vim'

" Status bar Airline and Ailine Theme
Plug 'https://github.com/vim-airline/vim-airline'
Plug 'https://github.com/vim-airline/vim-airline-themes'

" CSS Color Previe
Plug 'https://github.com/ap/vim-css-color' 

" Retro Scheme
" Plug 'https://github.com/rafi/awesome-vim-colorschemes'

" Auto Completion
Plug 'https://github.com/neoclide/coc.nvim',  {'branch': 'master', 'do': 'yarn install'}

" Developer Icons
Plug 'https://github.com/ryanoasis/vim-devicons' 

" Vim Terminal
" Plug 'https://github.com/tc50cal/vim-terminal' 

" TagbaR for code navigation
Plug 'https://github.com/preservim/tagbar' 

" CTRL + N for multiple cursors
Plug 'https://github.com/terryma/vim-multiple-cursors'

" Initialize Dashboard
Plug 'https://github.com/glepnir/dashboard-nvim'

" Git
Plug 'https://github.com/airblade/vim-gitgutter'
Plug 'https://github.com/tpope/vim-fugitive'

" Theme
Plug 'https://github.com/dracula/vim', { 'name': 'dracula' }
Plug 'https://github.com/luochen1990/rainbow'
" Plug 'sheerun/vim-polyglot' " language reverved words Highlights

Plug 'https://github.com/jiangmiao/auto-pairs'

" GoLang
Plug 'fatih/vim-go', { 'do': ':GoInstallBinaries' } " https://github.com/fatih/vim-go
Plug 'SirVer/ultisnips'

set encoding=UTF-8

call plug#end()

" -------------------- Theme
set guifont=DroidSansMono\ Nerd\ Font\ 11
colorscheme dracula
colors dracula
let g:rainbow_active = 1
let g:rainbow_conf = {
\       'separately': {
\               'nerdtree': 0,
\       }
\}
let g:rainbow_active = 1
" ----------------------------------------------------

" ----------------- NERDTree
let g:NERDTreeDirArrowExpandable="+"
let g:NERDTreeDirArrowCollapsible="~"
let g:NERDTreeShowHidden=1
" ----------------------------------------------------

" ----------------- GitGutter
let g:gitgutter_enabled = 1
let g:gitgutter_highlight_linenrs = 1
let g:gitgutter_map_keys = 0
let g:gitgutter_terminal_reports_focus = 1
highlight GitHuntterAdd guifg=#009900 ctermfg=Green
highlight GitGutterChange guifg=#bbbb00 ctermfg=Yellow
highlight GitGutterDelete guifg=#ff2222 ctermfg=Red
" ----------------------------------------------------

" ----------------- Air-Line
let g:airline_powerline_fonts = 1
let g:airline_theme= 'molokai'
let g:airline#extensions#branch#enabled=1
let g:airline#extensions#hunks#enabled=0
if !exists('g:airline_symbols')
    let g:airline_symbols = {}
endif
" ----------------------------------------------------

" --------------- Dashboard
let g:dashboard_default_executive = "fzf"
" ----------------------------------------------------

" ----------- Normal Mode Remaps
let mapleader=";"
nmap <silent> <leader>tu :TerminalSplit zsh<CR>
nnoremap <silent> <C-b> :NERDTreeToggle<CR>
nnoremap <silent> <C-p> :Files<CR>

nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gy <Plug>(coc-type-definition)
nmap <silent> gi <Plug>(coc-implementation)
nmap <silent> gr <Plug>(coc-references)
nmap <silent> rn <Plug>(coc-rename)
xmap <leader>f  <Plug>(coc-format-selected)
nmap <leader>f  <Plug>(coc-format-selected)
nmap <silent> <leader>i :<C-U>call CocActionAsync('doHover')<CR>
" ----------------------------------------------------

" -------------- GOLANG Configurations
"
" run :GoBuild or :GoTestCompile based on the go file
function! s:build_go_files()
  let l:file = expand('%')
  if l:file =~# '^\f\+_test\.go$'
    call go#test#Test(0, 1)
  elseif l:file =~# '^\f\+\.go$'
    call go#cmd#Build(0)
  endif
endfunction

autocmd FileType go nmap <leader>b :<C-u>call <SID>build_go_files()<CR>
autocmd FileType go nmap <Leader>c <Plug>(go-coverage-toggle)
autocmd FileType go nmap <leader>tl <Plug>(go-test)
autocmd FileType go nmap <leader>tf :GoTestFunc<CR>

let g:go_list_type = "quickfix"    " error lists are of type quickfix
let g:go_fmt_command = "goimports" " automatically format and rewrite imports
let g:go_auto_sameids = 0          " highlight matching identifiers when cursors is hover
let g:go_highlight_functions = 1
let g:go_highlight_operators = 1
let g:go_highlight_function_parameters = 1
let g:go_highlight_function_calls = 1
let g:go_highlight_types = 1
