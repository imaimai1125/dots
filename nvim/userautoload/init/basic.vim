" Vi互換モードをオフ（Vimの拡張機能を有効）
set nocompatible
" ファイル名と内容によってファイルタイプを判別し、ファイルタイププラグインを有効にする
filetype indent plugin on
" 色づけをオン
syntax on
" backupファイルなし
set nobackup
" swapファイルいらん
set noswapfile
" バッファを保存しなくても他のバッファを表示できるようにする
set hidden
" :e するときとかタブ補完表示できる
set wildmenu
" タイプ途中のコマンドを画面最下行に表示
set showcmd
" 検索語を強調表示（<C-L>を押すと現在の強調表示を解除する）
set hlsearch
 
" Modelines have historically been a source of security vulnerabilities.  As
" such, it may be a good idea to disable them and use the securemodelines
" script, <http://www.vim.org/scripts/script.php?script_id=1876>.
" 歴史的にモードラインはセキュリティ上の脆弱性になっていたので、
" オフにして代わりに上記のsecuremodelinesスクリプトを使うとよい。
" set nomodeline
 
" 検索時に大文字・小文字を区別しない。ただし、検索後に大文字小文字が
" 混在しているときは区別する
set ignorecase
set smartcase
" 検索時に最後までいったら最初に戻る
set wrapscan
" 入力しながらヒットさせる
set incsearch
" オートインデント、改行、インサートモード開始直後にバックスペースキーで
" 削除できるようにする。
set backspace=indent,eol,start
" オートインデント
" set autoindent
" 移動コマンドを使ったとき、行頭に移動しない
set nostartofline
" 画面最下行にルーラーを表示する
set ruler
" 下線ほちい
set cursorline
" ステータスラインを常に表示する
set laststatus=2
" バッファが変更されているとき、コマンドをエラーにするのでなく、保存する
" かどうか確認を求める
set confirm
" ビープの代わりにビジュアルベル（画面フラッシュ）を使う
set visualbell
" そしてビジュアルベルも無効化する
set t_vb=
" Enable use of the mouse for all modes
" 全モードでマウスを有効化
set mouse=a
" Set the command window height to 2 lines, to avoid many cases of having to
" "press <Enter> to continue"
" コマンドラインの高さを2行に
set cmdheight=2
" Display line numbers on the left
" 行番号を表示
set number
" Quickly time out on keycodes, but never time out on mappings
" キーコードはすぐにタイムアウト。マッピングはタイムアウトしない
set notimeout ttimeout ttimeoutlen=200
" Use <F11> to toggle between 'paste' and 'nopaste'
" <F11>キーで'paste'と'nopaste'を切り替える
" :set paste :set nopaste で切り替え, paste時のauto-indent無効
set pastetoggle=<F11>
" 改行コードの自動認識
set fileformats=unix,mac,dos
" 括弧入力時の対応括弧表示する
set showmatch
" gVim文字アンチエイリアス
if has('mac') && has('gui_running')
    set antialias
endif
 
" clipboard
set clipboard+=unnamedplus
" ヤンクがclipboardに入るはずだが, なんかおかしい
" コピペクリップボード
" set clipboard+=unnamed
" " ビジュアルモード選択でクリップボード
" set clipboard+=autoselect
" 辞書ファイルから単語補完する
 
set complete+=k
" はやいターミナル接続
set ttyfast
" 括弧入力時に対応する括弧を表示
set showmatch
 
" tex だけset spell
set nospell
 
" Foldings --- [open zo] [close zc] [toggle za] [open-all zr] [close-all zm] {{{
" {{{}}} でおりたたみ
set foldmethod=marker
" Foldings }}}