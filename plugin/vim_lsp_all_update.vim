if exists('g:loaded_vim_lsp_all_update')
  finish
endif
let g:loaded_vim_lsp_all_update = 1

command! LspUpdateAll call vim_lsp_all_update#update_lsp_all()
