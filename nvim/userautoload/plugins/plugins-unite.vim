" the silver searcher setting
 
" insert modeで開始
let g:unite_enable_start_insert = 0
 
" 大文字小文字を区別しない
let g:unite_enable_ignore_case = 1
let g:unite_enable_smart_case = 1
 
" grep検索
nnoremap <silent> ,g  :<C-u>Unite grep:. -buffer-name=search-buffer<CR>
" grep検索ディレクトリ指定で行う
" nnoremap <silent> ,G  :<C-u>Unite grep: -buffer-name=search-buffer<CR>
" カーソル位置の単語をgrep検索
nnoremap <silent> ,cg :<C-u>Unite grep:. -buffer-name=search-buffer<CR><C-R><C-W><CR>
 
" grep検索結果の再呼出
nnoremap <silent> ,r  :<C-u>UniteResume search-buffer<CR>
 
" unite grep に hw(highway) を使う
if executable('hw')
  let g:unite_source_grep_command = 'hw'
  " ag option : --hidden search dots file
  "let g:unite_source_grep_default_opts = '--nogroup --nocolor --column --hidden'
  let g:unite_source_grep_default_opts = '--no-group --no-color'
  let g:unite_source_grep_recursive_opt = ''
endif
 
augroup UniteSetting
  autocmd!
  au FileType unite nnoremap <silent> <buffer> <expr> <C-v> unite#do_action('vsplit')
  au FileType unite inoremap <silent> <buffer> <expr> <C-v> unite#do_action('vsplit')
augroup END