" unie-outline もっといいキーマップないかなー
nnoremap <silent> tr :<C-u>Unite -no-quit -vertical -winwidth=40 outline<CR>
 
" unite-outline の自動更新
let g:unite_source_outline_filetype_options = {
      \ '*': {
      \   'auto_update': 1,
      \   'auto_update_event': 'write',
      \ },
      \ 'cpp': {
      \   'ignore_types': ['enum', 'typedef', 'macro'],
      \ },
      \ 'javascript': {
      \   'ignore_types': ['comment'],
      \ },
      \ 'markdown': {
      \   'auto_update_event': 'hold',
      \ },
      \}