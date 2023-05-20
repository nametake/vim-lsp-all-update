function! vim_lsp_all_update#update_lsp_all() abort
  let targets = {}

  let installed_lsp = lsp_settings#installed_servers()
  let settings = lsp_settings#settings()

  for lsp in installed_lsp
    for [lang, lsp_list] in items(settings)
      for setting in lsp_list
        if lsp.name ==# setting.command
          let targets[lsp.name] = lang
        endif
      endfor
    endfor
  endfor

  for [lsp, lang] in items(targets)
    call lsp_settings#install_server(lang, lsp)
  endfor
endfunction
