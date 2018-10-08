""" plugin manager
"*******************************************************************************
" Specify a directory for plugins
" - For Neovim: ~/.local/share/nvim/plugged
" - For vim: ~/.cache/vim-plug
" - Avoid using standard Vim directory names like 'plugin'
call plug#begin('{{ editor_vim_datadir }}/vim-plug')

{% include 'plugins.vim' %}

if filereadable(expand('{{ editor_vim_configdir }}/plugins.vim'))
  source {{ editor_vim_configdir }}/plugins.vim
endif

" Initialize plugin system
call plug#end()
" plugins
"*******************************************************************************

