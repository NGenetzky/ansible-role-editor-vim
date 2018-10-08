" vimrc - Generated from [ngenetzky.editor-vim](https://github.com/NGenetzky/ansible-role-editor-vim)
" Maintainer:   Nathan Genetzky
" Version:      0.1

""" plugin manager
"*******************************************************************************
" Specify a directory for plugins
" - For Neovim: ~/.local/share/nvim/plugged
" - Avoid using standard Vim directory names like 'plugin'
call plug#begin('{{ editor_vim_datadir }}/plugged')

{% include 'plugins.vim' %}

if filereadable(expand('{{ editor_vim_configdir }}/plugins.vim'))
  source {{ editor_vim_configdir }}/plugins.vim
endif

" Initialize plugin system
call plug#end()
" plugins
"*******************************************************************************

""" plugin_settings
"*******************************************************************************

{% include 'plugin_settings.vim' %}

" plugin_settings
"*******************************************************************************

""" vim_settings {
"*******************************************************************************

{% include 'vim_settings.vim' %}

" } vim_settings
"*******************************************************************************

""" modelines
" https://vi.stackexchange.com/a/3820
" vim:fdm=expr:fdl=0
" vim:fde=getline(v\:lnum)=~'^""'?'>'.(matchend(getline(v\:lnum),'""*')-2)\:'='
