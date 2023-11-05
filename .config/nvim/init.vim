filetype on
filetype indent on
filetype plugin on

:set number
:set relativenumber
:set autoindent
:set tabstop=4
:set shiftwidth=4
:set smarttab
:set softtabstop=4
:set mouse=a
:set encoding=UTF-8
:set guifont=DroidSansMNerdFont-Regular
let mapleader = ','
set shell=/data/data/com.termux/files/usr/bin/sh


call plug#begin()

Plug 'http://github.com/tpope/vim-surround' " Surrounding ysw)
Plug 'https://github.com/preservim/nerdtree' " NerdTree
Plug 'https://github.com/tpope/vim-commentary' " For Commenting gcc & gc
Plug 'https://github.com/tpope/vim-dadbod/' "databases
Plug 'https://github.com/kristijanhusak/vim-dadbod-ui' "UI expansion for dadbod Datasases
Plug 'https://github.com/kristijanhusak/vim-dadbod-ui-completion' "extra for thr UI Databases
Plug 'https://github.com/vim-airline/vim-airline' " Status bar
Plug 'https://github.com/lifepillar/pgsql.vim' " PSQL Pluging needs :SQLSetType pgsql.vim
Plug 'https://github.com/ap/vim-css-color' " CSS Color Preview
Plug 'https://github.com/rafi/awesome-vim-colorschemes' " Retro Scheme
Plug 'https://github.com/neoclide/coc.nvim'  " Auto Completion
Plug 'https://github.com/ryanoasis/vim-devicons' " Developer Icons
Plug 'https://github.com/tc50cal/vim-terminal' " Vim Terminal
Plug 'https://github.com/preservim/tagbar' " Tagbar for code navigation
Plug 'https://github.com/terryma/vim-multiple-cursors' " CTRL + N for multiple cursors
Plug 'https://github.com/pixelneo/vim-python-docstring' "Docstrings for methods will contain a list of parameters and their type hints, list of raised exceptions and whether the method yields or raises.
Plug 'dense-analysis/ale' "ALE (Asynchronous Lint Engine) is a plugin providing linting (syntax checking and semantic errors) 
"Plug 'https://github.com/stevearc/gkeep.nvim', { 'do': ':UpdateRemotePlugins' } "gkeep does not work :(
Plug 'https://github.com/ron89/thesaurus_query.vim' "thesaurus
"Plug 'https://github.com/junegunn/fzf', { 'do': { -> fzf#install() } } "fzf 
"Plug 'junegunn/fzf.vim'
Plug 'https://github.com/itchyny/calendar.vim' " calendar 
Plug 'nvim-lua/plenary.nvim' "plenary: full; complete; entire; absolute; unqualified. All the lua functions I don't want to write twice.
Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}  " We recommend updating the parsers on update
Plug 'nvim-telescope/telescope.nvim', { 'tag': '0.1.1' }
Plug 'prettier/vim-prettier', {
  \ 'do': 'yarn install',
  \ 'for': ['javascript', 'typescript', 'css', 'less', 'scss', 'json', 'graphql', 'markdown'] }
" Track the engine.
Plug 'SirVer/ultisnips'

" Snippets are separated from the engine. Add this if you want them:
Plug 'honza/vim-snippets'
Plug 'nvim-tree/nvim-web-devicons' " Recommended (for coloured icons)
" Plug 'ryanoasis/vim-devicons' Icons without colours
Plug 'akinsho/bufferline.nvim', { 'tag': '*' }

Plug 'vimwiki/vimwiki'
Plug 'tools-life/taskwiki'
Plug 'ZhangDezhi/diary-vim'
Plug 'nvim-lua/plenary.nvim' " don't forget to add this one if you don't have it yet!
Plug 'ThePrimeagen/harpoon'
Plug 'liuchengxu/vim-which-key'

Plug 'ryanoasis/vim-devicons'

Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
Plug 'fatih/vim-go', { 'do': ':GoUpdateBinaries' }
Plug 'zyedidia/vim-snake'
Plug 'https://github.com/tpope/vim-fugitive' "git commands
Plug 'davidbeckingsale/writegood.vim' "writegood
Plug 'anufrievroman/vim-angry-reviewer' "angry reviewer 


"Plug 'prabirshrestha/vim-lsp'
"Plug 'mattn/vim-lsp-settings'

call plug#end()
set termguicolors
let g:deoplete#enable_at_startup = 1
call deoplete#custom#option('omni_patterns', { 'go': '[^. *\t]\.\w*',})

"call deoplete#custom#source('ale', 'rank', 999)
call deoplete#custom#source('ultisnips', 'rank', 1000)
doautocmd <nomodeline> User ALEHasTheResults

lua << EOF
require("bufferline").setup{}
EOF

nnoremap <C-f> :NERDTreeFocus<CR>
nnoremap <C-n> :NERDTree<CR>
nnoremap <C-t> :NERDTreeToggle<CR>

nnoremap <C-l> :call CocActionAsync('jumpDefinition')<CR>

inoremap <silent><expr> <cr> pumvisible() ? coc#_select_confirm() : "<C-g>u\<CR>\<c-r>=coc#on_enter()\<CR>"
au FileType go imap <tab><tab> <c-x><c-o>

inoremap <expr><Down>    pumvisible() ?   "\<C-n>"  : "\<Down>"
inoremap <expr><Up>    pumvisible() ?   "\<C-p>"  : "\<Up>"

nmap <F8> :TagbarToggle<CR>
nnoremap <C-T> :TagbarToggle<CR> 

"nnoremap <C-F> :FZF<CR>
"nnoremap <C-y> :ThesaurusQueryReplaceCurrentWord <CR> 

:set completeopt-=preview " For No Previews

:colorscheme jellybeans

let g:NERDTreeDirArrowExpandable="+"
let g:NERDTreeDirArrowCollapsible="~"

" --- Just Some Notes ---
" :PlugClean :PlugInstall :UpdateRemotePlugins
"
" :CocInstall coc-python
" :CocInstall coc-clangd
" :CocInstall coc-snippets
" :CocCommand snippets.edit... FOR EACH FILE TYPE
" CocInstall coc-go
"
" air-line
"
let g:airline_powerline_fonts = 1

if !exists('g:airline_symbols')
    let g:airline_symbols = {}
endif

" airline symbols "
let g:airline_left_sep = ''
let g:airline_left_alt_sep = ''
let g:airline_right_sep = ''
let g:airline_right_alt_sep = ''
let g:airline_symbols.branch = ''
let g:airline_symbols.readonly = ''
let g:airline_symbols.linenr = ''

inoremap <expr> <Tab> pumvisible() ? coc#_select_confirm() : "<Tab>"

let g:ale_sign_column_always = 1
let g:ale_lint_on_insert_leave = 1
let g:ale_python_flake8_executable = 'flake8'
let g:ale_python_auto_virtualenv = 1
let g:ale_fixers = {}
"let g:ale_fixers.python = ['black', 'flake8', 'mypy', 'pylint', 'pyright', 'ruff']
"let b:ale_linters = {'python': ['mypy', 'flake8', 'pylint']}
" Check Python files with flake8 and pylint.
"
let g:ale_linters = {'python': ['mypy', 'flake8', 'pylint']}
let g:ale_linters = {'AsciiDoc':['alex']}
" Fix Python files with black and isort."
let g:ale_fixers = {'python': ['black', 'isort']}
let g:ale_fix_on_save = 1


"let g:gkeep_sync_dir = '~/.gnotes'
"


let g:tq_openoffice_en_file="~/.config/MyThes-1.0/th_en_US_new"
let g:ale_completion_enabled = 0
let dotnet_errors_only = v:false
let dotnet_show_project_file = v:false



" Trigger configuration. You need to change this to something other than <tab> if you use one of the following:
" - https://github.com/Valloric/YouCompleteMe
" - https://github.com/nvim-lua/completion-nvim"

let g:UltiSnipsExpandTrigger="<tab>"
let g:UltiSnipsJumpForwardTrigger="<c-b>"
let g:UltiSnipsJumpBackwardTrigger="<c-z>"

" If you want :UltiSnipsEdit to split your window.
let g:UltiSnipsEditSplit="vertical"
"

let g:vimwiki_list = [{'path': '~/vimwiki/','syntax': 'markdown', 'ext': '.md'}]

let g:AngryReviewerEnglish = 'american'



source $HOME/.config/nvim/keys/which-key.vim

" :lua require("harpoon.mark").add_file()
" :lua require("harpoon.ui").toggle_quick_menu()

" :lua require("harpoon.ui").nav_next()                   -- navigates to next mark
" :lua require("harpoon.ui").nav_prev()                   -- navigates to previous mark
"
" require("telescope").load_extension('harpoon')
" nnoremap <C-m> :lua require("harpoon.mark").add_file()<CR>
"   nnoremap <leader><C-r> :lua require("harpoon.mark").rm_file()<CR>
"   nnoremap <C-e> :lua require("harpoon.ui").toggle_quick_menu()<CR>
"   nnoremap <C-h> :lua require("harpoon.ui").nav_file(1)<CR>
"   nnoremap <C-y> :lua require("harpoon.ui").nav_file(2)<CR>
"   nnoremap <C-n> :lua require("harpoon.ui").nav_file(3)<CR>
"   nnoremap <C-s> :lua require("harpoon.ui").nav_file(4)<CR>
"   nnoremap <leader><C-d> :lua require("harpoon.mark").clear_all()<CR>
"   nnoremap <leader>tu :lua require("harpoon.term").gotoTerminal(1)<CR>
"   nnoremap <leader>te :lua require("harpoon.term").gotoTerminal(2)<CR>
"   nnoremap <leader>cu :lua require("harpoon.term").sendCommand(1, 1)<CR>
 
