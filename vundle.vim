""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"                                   Vundle                                   "
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

set nocompatible " be iMproved
filetype off     " required!

set rtp+=~/.vim/bundle/vundle
call vundle#begin()

" let Vundle manage Vundle, required
Plugin 'gmarik/vundle'

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"                                  Plugins                                   "
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
""""""""""""""""
"  Navigation  "
""""""""""""""""
Plugin 'ZoomWin'

""""""""""""""""""
"  UI Additions  "
""""""""""""""""""
Bundle 'nathanaelkane/vim-indent-guides'
Bundle 'bling/vim-airline'
"Bundle 'scrooloose/nerdtree'
Bundle 'Rykka/colorv.vim'
"Bundle 'nanotech/jellybeans.vim'
Bundle 'altercation/vim-colors-solarized'
Bundle 'mhinz/vim-signify'
Bundle 'mhinz/vim-startify'
Bundle 'jszakmeister/vim-togglecursor'

""""""""""""""
"  Commands  "
""""""""""""""
Plugin 'tomtom/tcomment_vim'
Plugin 'tpope/vim-surround'
Plugin 'tpope/vim-fugitive'
Plugin 'godlygeek/tabular'
Plugin 'rking/ag.vim'
Plugin 'milkypostman/vim-togglelist'
Plugin 'mutewinter/swap-parameters'
Plugin 'tpope/vim-abolish'
Plugin 'scratch.vim'
Plugin 'AndrewRadev/switch.vim'
Plugin 'tpope/vim-eunuch'
Plugin 'itspriddle/vim-marked'
Plugin 'HelpClose'
Plugin 'mattn/gist-vim'
Plugin 'nelstrom/vim-visual-star-search'
Plugin 'sk1418/Join'
Plugin 'papanikge/vim-voogle'

""""""""""""""""""
"  Auto Helpers  "
""""""""""""""""""
Plugin 'majutsushi/tagbar'
Plugin 'SirVer/ultisnips'
Plugin 'honza/vim-snippets'
Plugin 'osyo-manga/vim-anzu'
Plugin 'Valloric/MatchTagAlways'
Plugin 'Valloric/YouCompleteMe'
"Plugin 'mutewinter/vim-autoreadwatch'

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"                             Language Additions                             "
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
""""""""""""""""
"  Javascript  "
""""""""""""""""

Plugin 'wookiehangover/jshint.vim'
Plugin 'jelera/vim-javascript-syntax'
Plugin 'othree/javascript-libraries-syntax.vim'
Plugin 'leshill/vim-json'
Plugin 'mustache/vim-mustache-handlebars'
Plugin 'maksimr/vim-jsbeautify'
Plugin 'marijnh/tern_for_vim'

""""""""""
"  HTML  "
""""""""""
Plugin 'othree/html5.vim'
Plugin 'indenthtml.vim'

"""""""""""
"  Other  "
"""""""""""
Plugin 'mutewinter/taskpaper.vim'
Plugin 'mutewinter/nginx.vim'
Plugin 'timcharper/textile.vim'
Plugin 'mutewinter/vim-css3-syntax'
Plugin 'mutewinter/vim-tmux'
Plugin 'plasticboy/vim-markdown'
Plugin 'wavded/vim-stylus'
Plugin 'chrisbra/csv.vim'
Plugin 'klen/python-mode'
"Plugin 'jmcantrell/vim-virtualenv'

""""""""""""""
"  Matching  "
""""""""""""""
Plugin 'matchit.zip'
Plugin 'kana/vim-textobj-user'

"""""""""
"  Lib  "
"""""""""
Plugin 'L9'
Plugin 'tpope/vim-repeat'

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"                                   DELETE?                                  "
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Plugin 'mattn/webapi-vim'
" Plugin 'xolox/vim-misc'
" Plugin 'ervandew/supertab'
" Plugin 'yssl/QFEnter'


call vundle#end()

filetype plugin indent on
