let g:deoplete#enable_at_startup = 1

Plug 'w0rp/ale'
let g:pymode_options_colorcolumn = 0
let b:ale_linters = ['pyflakes', 'flake8', 'pylint']
let b:ale_fixers = ['eslint']
let b:ale_fix_on_save = 1

" YouCompleteMe
" Start autocompletion after 4 chars
let g:ycm_min_num_of_chars_for_completion = 4
let g:ycm_min_num_identifier_candidate_chars = 4
let g:ycm_enable_diagnostic_highlighting = 0
" Don't show YCM's preview window [ I find it really annoying ]
set completeopt-=preview
let g:ycm_add_preview_to_completeopt = 0
