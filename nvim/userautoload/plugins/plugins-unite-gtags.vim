" let g:unite_source_gtags_project_config = {
" \   '_': {
" \     'gtags_libpath':
" \       [ '/usr/local/include/c++', '/usr/local/include/boost/', '/usr/local/include/opencv2/' ]
" \   },
" \ }
 
" lists the references or definitions of a word. It executes global --from-here=<location of cursor> -qe <word on cursor>
nnoremap <silent> ;tc  :<C-u>Unite gtags/context<CR>
 
" Unite gtags/ref lists references of a word. (It executes global -qrs -e <pattern> in internal.)
" You can specify <pattern> as an argument :Unite gtags/ref:<pattern>. When exeucte this command with no arguments :Unite gtags/ref, unite-gtags uses expand('<cword>') as pattern.
nnoremap <silent> ;tr  :<C-u>Unite gtags/ref:<CR>
 
" Unite gtags/def lists definitions of a word. (It executes global -qd -e <pattern> in internal.)
" You can specify <pattern> as an argument :Unite gtags/def:<pattern>. When exeucte this command with no arguments :Unite gtags/def, unite-gtags uses expand('\<cword\>') as pattern.
nnoremap <silent> ;td  :<C-u>Unite gtags/def:<CR>
 
" Unite gtags/grep lists grep result of a word. (It executes global -qg -e <pattern> in internal.)
" You can specify <pattern> as an argument :Unite gtags/grep:<pattern>. When exeucte Unite with no arguments :Unite gtags/grep, input prompt is shown. unite-gtags uses the input as <pattern>.
nnoremap <silent> ;tg  :<C-u>Unite gtags/grep:<CR>
 
" Unite gtags/file lists current file's tokens in GTAGS. It executes global -f and show results.
" You can specify <pattern> as an argument :Unite gtags/file:<pathname>. When exeucte this command with no arguments :Unite gtags/file, unite-gtags uses buffer_name("%") as filepath.
nnoremap <silent> ;tf  :<C-u>Unite gtags/file<CR>