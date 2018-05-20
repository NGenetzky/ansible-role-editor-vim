""" plugin manager
"*******************************************************************************
" Specify a directory for plugins
" - For Neovim: ~/.local/share/nvim/plugged
" - Avoid using standard Vim directory names like 'plugin'
call plug#begin('~/.cache/vim-plug')

{% include 'plugins.vim' %}


if filereadable(expand("~/.config/editor-vim/plugins.vim"))
  source ~/.config/editor-vim/plugins.vim
endif

" Initialize plugin system
call plug#end()
" plugins
"*******************************************************************************

