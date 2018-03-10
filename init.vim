" peder.korsveien avec gmail.com
" Available From: https://github.com/pederpus/dotvim
"
" The following urls are some of my inspirational sources for setting up
" this vimrc. They are worthwhile a look (use gx to open url under cursor in vim)
"
" http://github.com/lstor/vimfiles-lstor
" https://github.com/amix/vimrc
" http://www.8t8.us/vim/vim.html
" http://dougblack.io/words/a-good-vimrc.html

"""""""""""""""""""""""""""""""
" => PLUGINS
"""""""""""""""""""""""""""""""
let g:plug_timeout=1000
call plug#begin('~/.vim/plugged')

"""""""""""""""""""""""""""""""
" => Autocomplete
"""""""""""""""""""""""""""""""
Plug 'roxma/nvim-completion-manager'

" Use <TAB> to select the popup menu
inoremap <expr> <Tab> pumvisible() ? "\<C-n>" : "\<Tab>"
inoremap <expr> <S-Tab> pumvisible() ? "\<C-p>" : "\<S-Tab>"

" Expand snippets with <Enter> key
imap <expr> <CR>  (pumvisible() ?  "\<c-y>\<Plug>(expand_or_nl)" : "\<CR>")
imap <expr> <Plug>(expand_or_nl) (cm#completed_is_snippet() ? "\<C-U>":"\<CR>")

" Config <c-u>, <c-j> and <c-k> for parameter expansion and jumping around placeholders.
inoremap <silent> <c-u> <c-r>=cm#sources#ultisnips#trigger_or_popup("\<Plug>(ultisnips_expand)")<cr> 

"""""""""""""""""""""""""""""""
" => neosnippet
"""""""""""""""""""""""""""""""
Plug 'Shougo/neosnippet'
Plug 'Shougo/neosnippet-snippets'

imap <c-j>     <Plug>(neosnippet_expand_or_jump)
vmap <c-j>     <Plug>(neosnippet_expand_or_jump)
inoremap <silent> <c-u> <c-r>=cm#sources#neosnippet#trigger_or_popup("\<Plug>(neosnippet_expand_or_jump)")<cr>
vmap <c-u>     <Plug>(neosnippet_expand_target)
" expand parameters
let g:neosnippet#enable_completed_snippet=1

"""""""""""""""""""""""""""""""
" => Easymotion
"""""""""""""""""""""""""""""""
Plug 'easymotion/vim-easymotion'
nmap F <Plug>(easymotion-prefix)s

"""""""""""""""""""""""""""""""
" => Golang
"""""""""""""""""""""""""""""""
Plug 'fatih/vim-go'
let g:go_fmt_command = "goimports"

"""""""""""""""""""""""""""""""
" => Elm
"""""""""""""""""""""""""""""""
Plug 'elmcast/elm-vim'
Plug 'bitterjug/vim-tagbar-ctags-elm'

let g:elm_jump_to_error = 0
let g:elm_make_output_file = "make/out.js"
let g:elm_make_show_warnings = 0
" let g:elm_browser_command = ""
let g:elm_detailed_complete = 1
let g:elm_format_autosave = 1
let g:elm_setup_keybindings = 0


"""""""""""""""""""""""""""""""
" => Ale
"""""""""""""""""""""""""""""""
Plug 'w0rp/ale'
"nmap <silent> <C-p> <Plug>(ale_previous_wrap)
nmap <silent> <C-l> <Plug>(ale_next_wrap)


"""""""""""""""""""""""""""""""
" => JS (tern, jsx)
"""""""""""""""""""""""""""""""
Plug 'pangloss/vim-javascript'
Plug 'mxw/vim-jsx'

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
nmap <C-h> :ToggleNERDTreeAndTagbar<CR>


"""""""""""""""""""""""""""""""
" => GitGutter
"""""""""""""""""""""""""""""""
Plug 'airblade/vim-gitgutter'

"""""""""""""""""""""""""""""""
" => Misc.
"""""""""""""""""""""""""""""""
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
Plug 'joshdick/onedark.vim'

call plug#end()


"""""""""""""""""""""""""""""""
" => KEYBOARD MAPPINGS
"""""""""""""""""""""""""""""""

let mapleader=','

nnoremap :sh :terminal

" Why haven't I thought about this before?
nnoremap :Q :q
nnoremap :W :w
nnoremap :X :x
nnoremap :Vs :vs
nnoremap :S :s

" Remove ^M from dos files
noremap <leader>m mmHmt:%s/<C-V><cr>//ge<cr>'tzt'm

" Toggle highlighting
nnoremap <silent><leader>w :nohls<cr>

" Find next/previous digit
nmap <silent> <Leader>d :call search("[0-9]", "",  line("."))<CR>
nmap <silent> <Leader>D :call search("[0-9]", "b", line("."))<CR>

" Edit vimrc
nmap <Leader>V :edit $MYVIMRC<CR>
nmap <Leader>v :source $MYVIMRC<CR>

" switch cwd to the directory of the open buffer
map <leader>cd :cd %:p:h<cr>:pwd<cr>

set visualbell t_vb=
set sts=4 ts=4 sw=4
set wildignorecase
set nu
set noswapfile
set t_ut=
set guicursor=
tnoremap <C-[> <C-\><C-n>


"""""""""""""""""""""""""""""""
" => SYSTEM SPECIFICS
"""""""""""""""""""""""""""""""

autocmd FileType yaml setlocal ts=2 sts=2 sw=2 expandtab

set background=light
colorscheme onedark

" Toggle pastemode if in terminal
if !has("gui_running")
    nnoremap <Leader>p :set invpaste paste?<CR>
    set pastetoggle=<Leader>p
    set showmode
endif

" Remove annoying gui elements in graphical vim
if has("gui_running")
    set guioptions =-m
    set guioptions =-T
    set guioptions =-r
    set vb "disable bell
endif

if has("win32")
    "Windows options here
elseif has("mac")
    "mac options here
    if has("gui_running")
        "mvim options here
        set guifont=Inconsolata:h18
    endif
elseif has("unix")
    if !has("gui_running")
    endif
    "Unix options here
endif
