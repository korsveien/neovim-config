let g:plug_timeout=1000
call plug#begin('~/.vim/plugged')


"""""""""""""""""""""""""""""""
" => Elm
"""""""""""""""""""""""""""""""
Plug 'elmcast/elm-vim'
let g:elm_jump_to_error = 1
let g:elm_make_output_file = "make/out.js"
let g:elm_make_show_warnings = 0
" let g:elm_browser_command = ""
let g:elm_detailed_complete = 1
let g:elm_format_autosave = 1
let g:elm_setup_keybindings = 0


"""""""""""""""""""""""""""""""
" => Syntastic
"""""""""""""""""""""""""""""""
Plug 'scrooloose/syntastic'
let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:elm_syntastic_show_warnings = 1


"""""""""""""""""""""""""""""""
" => Deoplete
"""""""""""""""""""""""""""""""
function! DoRemote(arg)
  UpdateRemotePlugins
endfunction
Plug 'Shougo/deoplete.nvim', { 'do': function('DoRemote') }

let g:deoplete#enable_at_startup = 1
let g:deoplete#omni_patterns = {}
let g:deoplete#omni_patterns.elm = '[a-zA-Z_\.]'

" tab for cycling through options
inoremap <expr> <TAB> pumvisible() ? "\<C-n>" : "\<TAB>"

" enter closes options if present and inserts linebreak
" apparently this has to be that complicated
inoremap <silent> <CR> <C-r>=<SID>close_and_linebreak()<CR>
function! s:close_and_linebreak()
	return (pumvisible() ? "\<C-y>" : "" ) . "\<CR>"
endfunction


"""""""""""""""""""""""""""""""
" => JS (tern, jsx)
"""""""""""""""""""""""""""""""
Plug 'pangloss/vim-javascript'
Plug 'marijnh/tern_for_vim'
Plug 'mxw/vim-jsx'
let g:tern_show_argument_hints='on_hold'
let g:tern_show_signature_in_pum=1
let g:tern_map_keys=1
" set noshowmode


"""""""""""""""""""""""""""""""
" => CtrlP
"""""""""""""""""""""""""""""""
Plug 'kien/ctrlp.vim'
let g:ctrlp_working_path_mode = 'r'

set wildignore+=**/node_modules/**
set wildignore+=**/elm-stuff/**
set wildignore+=**/bin/**
set wildignore+=**/pkg/**
set wildignore+=**/build/**
set wildignore+=*.o,*.obj,*.a,*.iml


"""""""""""""""""""""""""""""""
" => NerdTree
"""""""""""""""""""""""""""""""
Plug 'scrooloose/nerdtree'
nmap <C-h> :NERDTreeToggle<CR>


"""""""""""""""""""""""""""""""
" => Emmet
"""""""""""""""""""""""""""""""
Plug 'mattn/emmet-vim'
let g:use_emmet_complete_tag = 1
"imap <expr> <tab> emmet#expandAbbrIntelligent("\<tab>")


"""""""""""""""""""""""""""""""
" => Airline
"""""""""""""""""""""""""""""""
Plug 'bling/vim-airline'
Plug 'vim-airline/vim-airline-themes'

let g:airline_left_sep = ''
let g:airline_right_sep = ''
let g:airline_section_b = '%{getcwd()}'
let g:airline_section_c = '%t'
let g:airline_section_z='%{fugitive#head()}'

" Displays all buffers when only one tab is open
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#show_buffers = 1
let g:airline#extensions#tabline#buffer_nr_show = 1


"""""""""""""""""""""""""""""""
" => UltiSnip
"""""""""""""""""""""""""""""""
Plug 'SirVer/ultisnips'

" This plugins conflicts with ycm when using tab
let g:UltiSnipsExpandTrigger="<c-j>"
let g:UltiSnipsJumpForwardTrigger="<c-j>"
let g:UltiSnipsJumpBackwardTrigger="<c-k>"

"""""""""""""""""""""""""""""""
" => Ag (searching code)
"""""""""""""""""""""""""""""""
Plug 'rking/ag.vim'
nnoremap <leader>a :Ag

"""""""""""""""""""""""""""""""
" => Markdown
"""""""""""""""""""""""""""""""
Plug 'shime/vim-livedown'
Plug 'plasticboy/vim-markdown'


"""""""""""""""""""""""""""""""
" => Sublimeish features
"""""""""""""""""""""""""""""""
Plug 'terryma/vim-multiple-cursors'
Plug 'terryma/vim-expand-region'
map K <Plug>(expand_region_expand)
map J <Plug>(expand_region_shrink)

"""""""""""""""""""""""""""""""
" => Tim Pope essentials
"""""""""""""""""""""""""""""""
Plug 'tpope/vim-surround'
Plug 'tpope/vim-unimpaired'
Plug 'tpope/vim-commentary'
Plug 'tpope/vim-repeat'
Plug 'tpope/vim-jdaddy'
Plug 'tpope/vim-fugitive'

nmap <Leader>g :Gst<CR>


"""""""""""""""""""""""""""""""
" => Misc.
"""""""""""""""""""""""""""""""
" Automatic closing of parens, quotes etc.
Plug 'Raimondi/delimitMate'
au FileType vim,html,elm let b:delimitMate_matchpairs = "(:),[:],{:},<:>"


Plug 'majutsushi/tagbar'
nmap <C-l> :TagbarToggle<cr>

Plug 'godlygeek/tabular'
Plug 'airblade/vim-gitgutter'

" Haskell
Plug 'neovimhaskell/haskell-vim'
Plug 'eagletmt/neco-ghc'

" Omnicomplete and syntax for html5
Plug 'othree/html5.vim'

" css inline color preview
Plug 'gorodinskiy/vim-coloresque'

" Color themes
Plug 'flazz/vim-colorschemes'


call plug#end()
