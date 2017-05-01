if &compatible
  set nocompatible
endif

let s:dein_path = expand('~/.config/nvim/dein')
let s:dein_repo_path = s:dein_path . '/repos/github.com/Shougo/dein.vim'

" deinなかったらインストールする
if !isdirectory(s:dein_repo_path)
  execute '!git clone https://github.com/Shougo/dein.vim' s:dein_repo_path
endif

execute 'set runtimepath^=' . s:dein_repo_path

" let g:dein#install_progress_type = 'title'
let g:dein#enable_notification = 1

call dein#begin(s:dein_path)
call dein#load_toml('~/.config/nvim/userautoload/dein/plugins.toml', {'lazy': 0})
call dein#load_toml('~/.config/nvim/userautoload/dein/plugins-lazy.toml', {'lazy': 1})
call dein#end()

if dein#check_install()
  call dein#install()
endif

function! s:deinClean()
  if len(dein#check_clean())
    call map(dein#check_clean(), 'delete(v:val, "rf")')
  else
    echo '[ERR] no disabled plugins'
  endif
endfunction
command! DeinClean :call s:deinClean()

filetype plugin indent on
syntax enable