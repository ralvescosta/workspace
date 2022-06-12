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
:set foldmethod=syntax
:set nofoldenable
:set re=0
:set autochdir

call plug#begin()

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

" Lint
Plug 'https://github.com/dense-analysis/ale'
Plug 'https://github.com/vim-test/vim-test'

" Syntax
Plug 'https://github.com/yuezk/vim-js'
Plug 'https://github.com/MaxMEllon/vim-jsx-pretty'
Plug 'https://github.com/leafgarland/typescript-vim'
" Plug 'https://github.com/jason0x43/vim-js-indent'
" Plug 'https://github.com/Quramy/vim-dtsm'
" Plug 'https://github.com/mhartington/vim-typings'
Plug 'https://github.com/styled-components/vim-styled-components', { 'branch': 'main' }
Plug 'https://github.com/kamykn/spelunker.vim'
Plug 'https://github.com/jparise/vim-graphql'
Plug 'https://github.com/uarun/vim-protobuf'

" Developer Icons
Plug 'https://github.com/kyazdani42/nvim-web-devicons'

" TagbaR for code navigation
Plug 'https://github.com/preservim/tagbar' 

" CTRL + N for multiple cursors
Plug 'https://github.com/terryma/vim-multiple-cursors'

" Git
Plug 'https://github.com/airblade/vim-gitgutter'
Plug 'https://github.com/tpope/vim-fugitive'
Plug 'https://github.com/junegunn/gv.vim'
Plug 'https://github.com/APZelos/blamer.nvim'

" Theme
Plug 'https://github.com/dracula/vim', { 'name': 'dracula' }
Plug 'https://github.com/luochen1990/rainbow'

" Debug
Plug 'https://github.com/puremourning/vimspector'

"
Plug 'https://github.com/jiangmiao/auto-pairs'

" GoLang
Plug 'https://github.com/fatih/vim-go', { 'do': ':GoInstallBinaries' } " https://github.com/fatih/vim-go
Plug 'https://github.com/SirVer/ultisnips'

call plug#end()

let g:typescript_indent_disable = 1
setlocal indentkeys+=0

" ----------- Normal Mode Remaps
let mapleader=";"
" clean last serach
nmap <silent> <leader>c :noh<CR> 
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
		width = 45,
	},
	git = {
		enable = true,
		ignore = false,
		timeout = 400,
	},
	diagnostics = {
		enable = true,
		show_on_dirs = true,
		icons = {
			hint = "",
			info = "",
			warning = "",
			error = "",
		},
	},
}
EOF
nnoremap <C-b> :NvimTreeToggle<CR>
let g:create_in_closed_folder = 1 "0 by default, When creating files, sets the path of a file when cursor is on a closed folder to the parent folder when 0, and inside the folder when 1.
let g:renderer = {  
	\ 'highlight_git': 1, 
	\ 'root_folder_modifier': ":~",
	\ 'group_empty': 1, 
	\ 'respect_buf_cwd': 1,
	\ 'add_trailing': 1,
	\ 'highlight_opened_files': 2,
	\ 'special_files': { 
	\		'README.md': 1, 
	\		'Makefile': 1, 
	\		'MAKEFILE': 1, 
	\	},
	\ 'icons': {
	\	'padding': ' ',
	\   'symlink_arrow': ' >> ',
	\   'show': {
	\		'git': 1,
    \		'folders': 1,
    \		'files': 1,
    \		'folder_arrows': 1,
    \     },
	\   'glyphs': {
	\		'default': "",
    \		'symlink': "",
    \		'git': {
	\			'unstaged': "✗",
    \			'staged': "✓",
    \			'unmerged': "",
    \			'renamed': "➜",
    \			'untracked': "★",
    \			'deleted': "",
    \			'ignored': "◌"
    \		},
    \		'folder': {
    \			'arrow_open': "",
    \			'arrow_closed': "",
    \			'default': "",
    \			'open': "",
    \			'empty': "",
    \			'empty_open': "",
    \			'symlink': "",
    \			'symlink_open': "",
    \		},
	\    },
	\  },
	\}
set termguicolors
highlight NvimTreeFolderIcon guibg=underline
" ----------------------------------------------------

" ----------------- GitGutter
let g:gitgutter_enabled = 1
let g:gitgutter_highlight_linenrs = 0
let g:gitgutter_map_keys = 0
let g:gitgutter_terminal_reports_focus = 1
let g:gitgutter_sign_allow_clobber = 1
let g:blamer_enabled = 1
let g:blamer_delay = 1500
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

" -------------------- FzF
nnoremap <silent> <C-p> :Files<CR>
" show hidden files
let $FZF_DEFAULT_COMMAND='find . \! \( -type d -path ./.git -prune \) \! -type d \! -name ''*.tags'' -printf ''%P\n'''
" ----------------------------------------------------

" -------- Vim Test
nmap <leader>t :TestNearest<CR>
nmap <leader>T :TestFile<CR>
nmap <leader>a :TestSuite<CR>
nmap <leader>l :TestLast<CR>
nmap <leader>g :TestVisit<CR>
let test#strategy = {
  \ 'nearest': 'neovim',
  \ 'file':    'dispatch',
  \ 'suite':   'basic',
\}
" ----------------------------------------------------

" ------------------ ALE
let g:ale_completion_enabled = 1
let g:ale_fix_on_save = 1
let g:ale_hover_cursor = 1
let g:ale_set_balloons = 1
let g:ale_hover_to_floating_preview= 1
let g:ale_set_highlights = 1
let g:ale_set_signs = 1
let g:ale_completion_autoimport = 1
let g:airline#extensions#ale#enabled = 1
set omnifunc=ale#completion#OmniFunc
let g:ale_sign_error = "✗"
let g:ale_sign_warning = "⚠️"
let g:ale_sign_info = "ℹ"
let g:ale_linters = {
	\ 'go': ['golint', 'go vet', 'gobuild', 'gopls'],
	\ 'js': ['eslint'],
	\ 'jsx': ['eslint'],
	\ 'ts': ['eslint'],
	\ 'tsx': ['eslint'],
	\ }
let g:ale_fixers = {
	\ 'go': ['gofmt'],
	\ 'js': ['prettier', 'eslint'],
	\ 'jsx': ['prettier', 'eslint'],
	\ 'ts': ['prettier', 'eslint'],
	\ 'tsx': ['prettier', 'eslint'],
	\ 'css': ['prettier'],
	\ 'json': ['prettier'],
	\ }
nnoremap <leader>gd :ALEGoToDefinition<CR>
nnoremap <leader>gr :ALEFindReferences -relative<CR>
nnoremap <leader>gi :ALEGoToImplementation<CR>
nnoremap <leader>gy :ALEGoToTypeDefinition<CR>
nnoremap <leader>rn :ALERename<CR>
nnoremap <leader>i :ALEHover<CR>
" ----------------------------------------------------

" ------------- Vimspctor
let g:vimspector_enable_mappings = 'HUMAN'
nmap <silent> <leader>ds :VimspectorReset<CR>
command DebugTest execute "call vimspector#LaunchWithSettings( #{ configuration: 'tests' } )%"
let g:vimspector_sidebar_width = 80
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
" autocmd FileType go nmap <leader>tl <Plug>(go-test)
" autocmd FileType go nmap <leader>tf :GoTestFunc<CR>

let g:go_list_type = "quickfix"    " error lists are of type quickfix
let g:go_fmt_command = "goimports" " automatically format and rewrite imports
let g:go_auto_sameids = 0          " highlight matching identifiers when cursors is hover
let g:go_highlight_functions = 1
let g:go_highlight_operators = 1
let g:go_highlight_function_parameters = 1
let g:go_highlight_function_calls = 1
let g:go_highlight_types = 1
