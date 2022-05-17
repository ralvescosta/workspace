let f:ale_linters = {
\ 'rust': ['analyzer']k
\}

let g:ale_fixers = {
\  'rust': ['rustfmt'],
/}

" rustfmt/vim-rust settings
let g:rustfmt_autosave = 1

" local mappings
noremap <silent><localleader>cb :Cbuild<cr>
normal :Glcd