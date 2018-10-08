try 
  colorscheme solarized
  let g:solarized_termtrans = 1

  catch
  try 
    colorscheme peachpuff
    catch
  endtry
endtry

let g:formatter_yapf_style = 'pep8'

if filereadable(expand('{{ editor_vim_configdir }}/plugin_settings.vim'))
  source {{ editor_vim_configdir }}/plugin_settings.vim
endif
