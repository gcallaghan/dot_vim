""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"                                   Vundle                                   "
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

set nocompatible " be iMproved
filetype off     " required!

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" let Vundle manage Vundle, required
Plugin 'gmarik/Vundle.vim'

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"                                  Plugins                                   "
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
""""""""""""""""
"  Navigation  "
""""""""""""""""
Plugin 'ZoomWin'

Plugin 'fatih/vim-go'


""""""""""""""""""
"  UI Additions  "
""""""""""""""""""
" Bundle 'nathanaelkane/vim-indent-guides'a
Bundle 'Yggdroot/indentLine'
Bundle 'vim-airline/vim-airline'
Bundle 'vim-airline/vim-airline-themes'
Bundle 'Rykka/colorv.vim'
Bundle 'altercation/vim-colors-solarized'
Bundle 'mhinz/vim-signify'
Bundle 'mhinz/vim-startify'
Bundle 'jszakmeister/vim-togglecursor'
Bundle 'scrooloose/nerdtree'

""""""""""""""
"  Commands  "
""""""""""""""
Plugin 'tomtom/tcomment_vim'
Plugin 'tpope/vim-surround'
Plugin 'tpope/vim-fugitive'
Plugin 'godlygeek/tabular'
Plugin 'rking/ag.vim'
Plugin 'milkypostman/vim-togglelist'
Plugin 'tpope/vim-abolish'
Plugin 'scratch.vim'
Plugin 'AndrewRadev/switch.vim'
Plugin 'tpope/vim-eunuch'
Plugin 'itspriddle/vim-marked'
Plugin 'HelpClose'
Plugin 'mattn/gist-vim'
Plugin 'nelstrom/vim-visual-star-search'
Plugin 'sk1418/Join'

""""""""""""""""""
"  Auto Helpers  "
""""""""""""""""""
Plugin 'majutsushi/tagbar'
Plugin 'SirVer/ultisnips'
Plugin 'honza/vim-snippets'
Plugin 'osyo-manga/vim-anzu'
Plugin 'Valloric/MatchTagAlways'
Plugin 'Valloric/YouCompleteMe'
Plugin 'scrooloose/syntastic'
Plugin 'ervandew/supertab'
Plugin 'editorconfig/editorconfig-vim'

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"                             Language Additions                             "
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""


""""""""""
"  Java  "
""""""""""

Plugin 'tfnico/vim-gradle'
Plugin 'artur-shaik/vim-javacomplete2'
Plugin 'tpope/vim-classpath.git'


""""""""""""""""
"  Javascript  "
""""""""""""""""
Plugin 'Shougo/vimproc.vim'
Plugin 'Quramy/tsuquyomi'
Plugin 'leafgarland/typescript-vim'
Plugin 'Quramy/vim-js-pretty-template'
Plugin 'jelera/vim-javascript-syntax'
Plugin 'othree/javascript-libraries-syntax.vim'
Plugin 'elzr/vim-json'
Plugin 'marijnh/tern_for_vim'
Plugin 'heavenshell/vim-jsdoc'
Plugin 'bdauria/angular-cli.vim'
Plugin 'posva/vim-vue'


""""""""""
"  HTML  "
""""""""""
Plugin 'othree/html5.vim'
Plugin 'indenthtml.vim'
Plugin 'vim-scripts/closetag.vim'

"""""""""""
"  Other  "
"""""""""""
Plugin 'Raimondi/delimitMate'
Plugin 'janko-m/vim-test'
Plugin 'mutewinter/nginx.vim'
Plugin 'hail2u/vim-css3-syntax'
Plugin 'mutewinter/vim-tmux'
Plugin 'plasticboy/vim-markdown'
Plugin 'cespare/vim-toml'
Plugin 'chrisbra/csv.vim'
Plugin 'rizzatti/dash.vim'
Plugin 'tell-k/vim-autopep8'
Plugin 'hashivim/vim-terraform.git'

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

call vundle#end()

filetype plugin indent on
