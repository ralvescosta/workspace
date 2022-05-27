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
:set encoding=UTF-8

call plug#begin()

" Surrounding ysw)
Plug 'http://github.com/tpope/vim-surround' 

" NvimTree
Plug 'https://github.com/kyazdani42/nvim-tree.lua'

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
Plug 'https://github.com/kyazdani42/nvim-web-devicons'

" TagbaR for code navigation
Plug 'https://github.com/preservim/tagbar' 

" Tabs
Plug 'https://github.com/romgrk/barbar.nvim'

" CTRL + N for multiple cursors
Plug 'https://github.com/terryma/vim-multiple-cursors'

" Initialize Dashboard
Plug 'https://github.com/glepnir/dashboard-nvim'

" Git
Plug 'https://github.com/airblade/vim-gitgutter'
Plug 'https://github.com/tpope/vim-fugitive'
Plug 'https://github.com/junegunn/gv.vim'

" Theme
Plug 'https://github.com/dracula/vim', { 'name': 'dracula' }
Plug 'https://github.com/luochen1990/rainbow'
" Plug 'sheerun/vim-polyglot' " language reverved words Highlights

" Debug
Plug 'https://github.com/puremourning/vimspector'

"
Plug 'https://github.com/jiangmiao/auto-pairs'

" GoLang
Plug 'https://github.com/fatih/vim-go', { 'do': ':GoInstallBinaries' } " https://github.com/fatih/vim-go
Plug 'https://github.com/SirVer/ultisnips'

call plug#end()

" ----------- Normal Mode Remaps
let mapleader=";"
" clean last serach
nmap <silent> <leader>c :noh<CR> 
" enable control + c / control + v
vmap <C-c> "+yi
vmap <C-v> c<ESC>"+p
nmap <leader>rl :source ~/.config/nvim/init.vim<CR>
if system('uname -s') == "Darwin\n"
  set clipboard=unnamed "OSX
else
  set clipboard=unnamedplus "Linux
endif
" ----------------------------------------------------

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

" ----------------- NvimTree
lua <<EOF
require'nvim-tree'.setup {
	view = {
		width = 50,
	},
	git = {
		enable = true,
		ignore = false,
		timeout = 400,
  },
}
EOF
nnoremap <C-b> :NvimTreeToggle<CR>
let g:nvim_tree_git_hl = 1 "0 by default, will enable file highlight for git attributes (can be used without the icons).
let g:nvim_tree_highlight_opened_files = 1 "0 by default, will enable folder and file icon highlight for opened files/directories.
let g:nvim_tree_root_folder_modifier = ':~' "This is the default. See :help filename-modifiers for more options
let g:nvim_tree_add_trailing = 1 "0 by default, append a trailing slash to folder names
let g:nvim_tree_group_empty = 1 " 0 by default, compact folders that only contain a single folder into one node in the file tree
let g:nvim_tree_icon_padding = ' ' "one space by default, used for rendering the space between the icon and the filename. Use with caution, it could break rendering if you set an empty string depending on your font.
let g:nvim_tree_symlink_arrow = ' >> ' " defaults to ' ➛ '. used as a separator between symlinks' source and target.
let g:nvim_tree_respect_buf_cwd = 1 "0 by default, will change cwd of nvim-tree to that of new buffer's when opening nvim-tree.
let g:nvim_tree_create_in_closed_folder = 1 "0 by default, When creating files, sets the path of a file when cursor is on a closed folder to the parent folder when 0, and inside the folder when 1.
let g:nvim_tree_special_files = { 'README.md': 1, 'Makefile': 1, 'MAKEFILE': 1 } " List of filenames that gets highlighted with NvimTreeSpecialFile
let g:nvim_tree_show_icons = {
    \ 'git': 1,
    \ 'folders': 1,
    \ 'files': 1,
    \ 'folder_arrows': 1,
    \ }
let g:nvim_tree_icons = {
    \ 'default': "",
    \ 'symlink': "",
    \ 'git': {
    \   'unstaged': "✗",
    \   'staged': "✓",
    \   'unmerged': "",
    \   'renamed': "➜",
    \   'untracked': "★",
    \   'deleted': "",
    \   'ignored': "◌"
    \   },
    \ 'folder': {
    \   'arrow_open': "",
    \   'arrow_closed': "",
    \   'default': "",
    \   'open': "",
    \   'empty': "",
    \   'empty_open': "",
    \   'symlink': "",
    \   'symlink_open': "",
    \   }
    \ }
highlight NvimTreeFolderIcon guibg=blue
" ----------------------------------------------------

" ------------------ Barbar 
nnoremap <leader>1 :BufferGoto 1<CR>
nnoremap <leader>2 :BufferGoto 2<CR>
nnoremap <leader>3 :BufferGoto 3<CR>
nnoremap <leader>4 :BufferGoto 4<CR>
nnoremap <leader>5 :BufferGoto 5<CR>
nnoremap <leader>6 :BufferGoto 6<CR>
nnoremap <leader>7 :BufferGoto 7<CR>
nnoremap <leader>8 :BufferGoto 8<CR>
nnoremap <leader>9 :BufferLast<CR>
nnoremap <leader>bbc :BufferClose<CR>
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

" -------------------- FzF
nnoremap <silent> <C-p> :Files<CR>
nnoremap <silent> <C-f> :Ag<CR>
" show hidden files
let $FZF_DEFAULT_COMMAND='find . \! \( -type d -path ./.git -prune \) \! -type d \! -name ''*.tags'' -printf ''%P\n'''
" ----------------------------------------------------

" ------------------ COC
nmap gd <Plug>(coc-definition)
nmap gy <Plug>(coc-type-definition)
nmap gi <Plug>(coc-implementation)
nmap gr <Plug>(coc-references)
nmap rn <Plug>(coc-rename)
nmap <leader>f  <Plug>(coc-format-selected)
nmap <leader>i :<C-U>call CocActionAsync('doHover')<CR>
inoremap <expr> <C-k> coc#refresh()
" ----------------------------------------------------

" ------------- Vimspctor
let g:vimspector_enable_mappings = 'HUMAN'
nmap <silent> <leader>ds :VimspectorReset<CR>
command DebugTest execute "call vimspector#LaunchWithSettings( #{ configuration: 'tests' } )%"

" ----------------------------------------------------

" -------------- GOLANG CONFIGURATIONS
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
autocmd FileType go nmap <Leader>cov <Plug>(go-coverage-toggle)
autocmd FileType go nmap <leader>tl <Plug>(go-test)
autocmd FileType go nmap <leader>tf :GoTestFunc<CR>
autocmd BufWritePre *.go :silent call CocAction('runCommand', 'editor.action.organizeImport')

let g:go_list_type = "quickfix"    " error lists are of type quickfix
let g:go_fmt_command = "goimports" " automatically format and rewrite imports
let g:go_auto_sameids = 0          " highlight matching identifiers when cursors is hover
let g:go_highlight_functions = 1
let g:go_highlight_operators = 1
let g:go_highlight_function_parameters = 1
let g:go_highlight_function_calls = 1
let g:go_highlight_types = 1
