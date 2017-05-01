"http://cohama.hateblo.jp/entry/2013/08/11/020849
 
colorscheme desert
syntax on
 
augroup AfterColorScheme
  autocmd!
  au ColorScheme * hi Pmenu ctermbg=black ctermfg=gray
  au ColorScheme * hi PmenuSel  ctermfg=black guifg=NONE guibg=#3c4043 ctermbg=darkcyan gui=NONE
  au ColorScheme * hi CursorLine cterm=underline ctermbg=NONE
  au ColorScheme * hi Todo ctermfg=darkred ctermbg=yellow
"   au ColorScheme * hi PmenuThumb cterm=reverse ctermfg=gray
"   au ColorScheme * hi Search cterm=NONE ctermbg=DarkYellow ctermfg=black
  au ColorScheme * hi Visual ctermbg=DarkCyan
augroup END
 
command! Colortest call s:Colortest()
function! s:Colortest()
   :so $VIMRUNTIME/syntax/hitest.vim
endfunction
