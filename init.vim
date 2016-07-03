" peder.korsveien@gmail.com
" Available From: https://github.com/pederpus/dotvim
"
" The following urls are some of my inspirational sources for setting up
" this vimrc. They are worthwhile a look (use gx to open url under cursor in vim)
"
" http://github.com/lstor/vimfiles-lstor
" https://github.com/amix/vimrc
" http://www.8t8.us/vim/vim.html
" http://dougblack.io/words/a-good-vimrc.html



" gf to move to file under cursor
source $HOME/.config/nvim/config/plugins.vim
source $HOME/.config/nvim/config/plugin-settings.vim
source $HOME/.config/nvim/config/keyboard-mappings.vim
source $HOME/.config/nvim/config/system-specifics.vim

set visualbell t_vb=
set sts=4 ts=4 sw=4
set wildignorecase
set nu
set noswapfile
tnoremap <C-[> <C-\><C-n>

colorscheme jelleybeans


