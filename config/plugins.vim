let g:plug_timeout=1000
call plug#begin('~/.vim/plugged')

Plug 'tpope/vim-surround'
Plug 'tpope/vim-unimpaired'
Plug 'tpope/vim-commentary'
Plug 'tpope/vim-repeat'
Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-jdaddy'

Plug 'godlygeek/tabular'
Plug 'SirVer/ultisnips'
Plug 'bling/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'kien/ctrlp.vim'
Plug 'terryma/vim-multiple-cursors'
Plug 'airblade/vim-gitgutter'
Plug 'majutsushi/tagbar'

Plug 'Shougo/deoplete.nvim'
function! DoRemote(arg)
  UpdateRemotePlugins
endfunction
Plug 'Shougo/deoplete.nvim', { 'do': function('DoRemote') }

Plug 'scrooloose/syntastic'
Plug 'scrooloose/nerdtree'

" Automatic closing of parens, quotes etc.
Plug 'Raimondi/delimitMate'

" Search your code
Plug 'rking/ag.vim'

" JS
Plug 'marijnh/tern_for_vim'
Plug 'pangloss/vim-javascript'
Plug 'mxw/vim-jsx'

" Haskell
Plug 'neovimhaskell/haskell-vim'
Plug 'eagletmt/neco-ghc'

" omnicomplete and syntax for html5
Plug 'othree/html5.vim'
Plug 'mattn/emmet-vim'

" css color preview
Plug 'gorodinskiy/vim-coloresque'

" Color themes
Plug 'flazz/vim-colorschemes'

" Elm
Plug 'elmcast/elm-vim'

" Live editing of markdown
Plug 'shime/vim-livedown'
Plug 'plasticboy/vim-markdown'

call plug#end()
