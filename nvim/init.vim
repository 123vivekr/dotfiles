" Options
set clipboard=unnamedplus
set completeopt=noinsert,menuone,noselect
set hidden
set inccommand=split
set mouse=a
set number
set relativenumber
set splitbelow splitright
set title
set ttimeoutlen=0
set wildmenu

" Automatic syntax support
filetype plugin indent on
syntax on

" Terminal Color
set t_Co=256
" True color if available
let term_program=$TERM_PROGRAM
if term_program !=? 'Apple_Terminal'
    set termguicolors
else
    if $TERM !=? 'xterm-256color'
        set termguicolors
    endif
endif

" Tabs size
set expandtab
set shiftwidth=4
set tabstop=2

" Italics
let &t_ZH="\e[3m"
let &t_ZR="\e[23m"

call plug#begin()
    " Appearance
    Plug 'vim-airline/vim-airline'
    Plug 'ryanoasis/vim-devicons'
    Plug 'bluz71/vim-moonfly-colors'

    " Utilities
    Plug 'sheerun/vim-polyglot'
    Plug 'jiangmiao/auto-pairs'
    Plug 'ap/vim-css-color'
    Plug 'preservim/nerdtree'
    Plug 'nvim-lua/plenary.nvim'
    Plug 'nvim-lua/plenary.nvim'
    Plug 'nvim-telescope/telescope.nvim', { 'tag': '0.1.0' }
    Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}

    " Completion / linters / formatters
    Plug 'plasticboy/vim-markdown'
    Plug 'neoclide/coc.nvim', {'branch': 'release'}

    " Git
    Plug 'airblade/vim-gitgutter'

    " Language plugins
    Plug 'ray-x/go.nvim'
    Plug 'ray-x/guihua.lua'
call plug#end()

" Telescope
nnoremap <leader>ff <cmd>Telescope find_files<cr>
nnoremap <leader>fg <cmd>Telescope live_grep<cr>
nnoremap <leader>fc <cmd>Telescope commands<cr>
nnoremap <leader>fk <cmd>Telescope keymaps<cr>

" Disable math tex conceal feature
let g:tex_conceal = ''
let g:vim_markdown_math = 1

" Markdown
let g:vim_markdown_folding_disabled = 1
let g:vim_markdown_frontmatter = 1
let g:vim_markdown_conceal = 0
let g:vim_markdown_fenced_languages = ['tsx=typescriptreact']

" Moonfly theem
colorscheme moonfly
let g:moonflyCursorColor = v:true
let g:moonflyNormalFloat = v:true
let g:moonflyUnderlineMatchParen = v:true

" Shortcuts
nnoremap <F5> :NERDTreeToggle<CR>
" Tabs
	nnoremap <S-Tab> gT
	nnoremap <Tab> gt
	nnoremap <silent> <S-t> :tabnew<CR>

autocmd BufWritePre *.go :silent! lua require('go.format').gofmt()
lua require('go').setup()
