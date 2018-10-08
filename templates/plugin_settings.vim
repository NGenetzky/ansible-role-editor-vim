""" plugin_settings
"*******************************************************************************

try 
  colorscheme solarized
  catch
  try 
    colorscheme peachpuff
    catch
  endtry
endtry

if filereadable(expand('{{ editor_vim_configdir }}/plugin_settings.vim'))
  source {{ editor_vim_configdir }}/plugin_settings.vim
endif

" plugin_settings
"*******************************************************************************
