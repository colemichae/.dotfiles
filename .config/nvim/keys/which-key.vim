let g:which_key_timeout = 100

call which_key#register(',', "g:which_key_map")

nnoremap <silent> <leader> :silent <c-u> :silent WhichKey ','<CR>

vnoremap <silent> <leader> :silent <c-u> :silent WhichKeyVisual ','<CR>

let g:which_key_use_floating_win = 0

let g:which_key_max_size = 0

let g:which_key_sep = '→'

let g:which_key_map = {}

let g:which_key_map['keybinding'] = [ ':vim_command',  'description' ]
let g:which_key_map['keybinding'] = [ 'vim_key',       'description' ]

let g:which_key_map['w'] = [ ':w', 'write the file' ]
let g:which_key_map['W'] = [ ':w !sudo tee %', 'write root files with sudo' ]
let g:which_key_map['q'] = [ ':q', 'quit Neovim' ]
let g:which_key_map['Q'] = [ ':q!', 'quit Neovim without saving' ]
map <Leader>x :x<CR>

" let g:which_key_position = 'botright'
let g:which_key_position = 'topleft'
" let g:which_key_vertical = 1

let g:which_key_map.a = {
    \ 'name': '+action',
    \ 'n': [':set relativenumber!', 'toggle number column'],
    \ 'w': [':set wrap!', 'toggle line wraps'],
    \}
map <Leader>aj :echo "Just checking"<CR>

