let g:plug_timeout=1000
call plug#begin('~/.vim/plugged')

"""""""""""""""""""""""""""""""
" => Elm
"""""""""""""""""""""""""""""""
Plug 'elmcast/elm-vim'
let g:elm_jump_to_error = 0
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
" => UltiSnips
"""""""""""""""""""""""""""""""
Plug 'SirVer/UltiSnips'

let g:UltiSnipsExpandTrigger='<c-j>'
let g:UltiSnipsJumpForwardTrigger='<c-j>'
let g:UltiSnipsJumpBackwardTrigger='<c-k>'

let g:UltiSnipsSnippetDirectories = ['~/.config/nvim/UltiSnips', 'UltiSnips']

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

" Enable/Disable buffer display on top bar
let g:airline#extensions#tabline#enabled = 0

" Displays all buffers when only one tab is open
" let g:airline#extensions#tabline#show_buffers = 1
" let g:airline#extensions#tabline#buffer_nr_show = 1



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
" => NERDTree + Tagbar = <3
"""""""""""""""""""""""""""""""
Plug 'scrooloose/nerdtree'
Plug 'pseewald/nerdtree-tagbar-combined'
Plug 'majutsushi/tagbar'
nmap <C-l> :TagbarToggle<cr>
nmap <C-h> :ToggleNERDTreeAndTagbar<CR>

"""""""""""""""""""""""""""""""
" => Misc.
"""""""""""""""""""""""""""""""
" Automatic closing of parens, quotes etc.
Plug 'Raimondi/delimitMate'
au FileType vim,html,elm let b:delimitMate_matchpairs = "(:),[:],{:},<:>"

" Automatically generate tags
Plug 'fntlnz/atags.vim'
let g:atags_build_commands_list = [
    \"ctags --exclude=node_modules -R -f tags.tmp",
    \"awk 'length($0) < 400' tags.tmp > tags",
    \"rm tags.tmp"
    \]
" Generate tags on each file write
" autocmd BufWritePost * call atags#generate()

map <Leader>t :call atags#generate()<cr>

Plug 'godlygeek/tabular'
Plug 'airblade/vim-gitgutter'

" Haskell
Plug 'neovimhaskell/haskell-vim'
Plug 'eagletmt/neco-ghc'

" Omnicomplete and syntax for html5
Plug 'othree/html5.vim'

" css inline color preview
Plug 'gorodinskiy/vim-coloresque'



"""""""""""""""""""""""""""""""
" => Color themes
"""""""""""""""""""""""""""""""
" Jellybeans
Plug 'nanotech/jellybeans.vim'
let g:jellybeans_overrides = {
\		'Search': { 'guifg': '303030', 'guibg': 'f0f000',
\				    'ctermfg': 'Black', 'ctermbg': 'Yellow',
\			        'attr': 'bold' }
\}

Plug 'altercation/vim-colors-solarized'

call plug#end()
