" vimrc - Generated from [ngenetzky.editor-vim](https://github.com/NGenetzky/ansible-role-editor-vim)
" Maintainer:   Nathan Genetzky
" Version:      0.1

{% include 'vim_settings.vim' %}


{% include 'vim-plug.vim' %}

""" modelines
" https://vi.stackexchange.com/a/3820
" vim:fdm=expr:fdl=0
" vim:fde=getline(v\:lnum)=~'^""'?'>'.(matchend(getline(v\:lnum),'""*')-2)\:'='
