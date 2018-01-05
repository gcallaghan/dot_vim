" ----------------------------------------
" Plugin Configuration
" ----------------------------------------

" ---------------
" Vundle
" ---------------
command! ReloadVundle source ~/.vim/vundle.vim

function PluginReloadAndRun(command)
  :ReloadVundle
  execute a:command
endfunction

nnoremap <Leader>pi :call PluginReloadAndRun("PluginInstall")<CR>
nnoremap <Leader>pu :call PluginReloadAndRun("PluginInstall!")<CR>
nnoremap <Leader>pc :call PluginReloadAndRun("PluginClean")<CR>

nnoremap <Leader>sb :call JsBeautify()<cr>

" ---------------
" space.vim
" ---------------
" Disables space mappings in select mode to fix snipMate.
" let g:space_disable_select_mode = 1

" ---------------
" Syntastic
" ---------------
let g:syntastic_error_symbol = '✗'
let g:syntastic_warning_symbol = '⚠'
let g:syntastic_scss_checkers = ['scss_lint']
let g:syntastic_javascript_checkers = ['standard']
" let g:syntastic_go_checkers = ['gometalinter', 'golint', 'gofmt', 'gotype', 'govet']
let g:tsuquyomi_disable_quickfix = 1
let g:syntastic_typescript_checkers = ['tsuquyomi']

set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0


" ---------------
" Typescript
" ---------------
let g:typescript_compiler_binary = 'tsc'
let g:typescript_compiler_options = ''
autocmd QuickFixCmdPost [^l]* nested cwindow
autocmd QuickFixCmdPost    l* nested lwindow
autocmd FileType typescript JsPreTmpl html
autocmd FileType typescript syn clear foldBraces

autocmd VimEnter * if globpath('.,..','node_modules/@angular') != '' | call angular_cli#init() | endif

" ---------------
" Vim-Test
" ---------------

let test#javascript#tap#file_pattern = 'spec\.js$'
let test#javascript#tap#executable = './node_modules/.bin/babel-node ./node_modules/.bin/tape -r ./meta/testSetup.js'


" ---------------
" Indent Guides
" ---------------
let g:indent_guides_enable_on_vim_startup = 1


" ---------------
" Tabular
" ---------------
nnoremap <Leader>t= :Tabularize assignment<CR>
vnoremap <Leader>t= :Tabularize assignment<CR>
nnoremap <Leader>t: :Tabularize symbol<CR>
vnoremap <Leader>t: :Tabularize symbol<CR>
nnoremap <Leader>t, :Tabularize comma<CR>
vnoremap <Leader>t, :Tabularize comma<CR>

" ---------------
" Fugitive - aka git in vim
" ---------------
nnoremap <Leader>gc :Gcommit -v<CR>
nnoremap <Leader>gca :Gcommit -a -v<CR>
nnoremap <Leader>gw :Gwrite<CR>
nnoremap <Leader>gs :Gstatus<CR>
nnoremap <Leader>gp :Git push<CR>
 " Mnemonic, gu = Git Update
nnoremap <Leader>gu :Git pull<CR>
nnoremap <Leader>gd :Gdiff<CR>
" Exit a diff by closing the diff window
nnoremap <Leader>gx :wincmd h<CR>:q<CR>
" Start git command
nnoremap <leader>gi :Git<space>
" Undo the last commit
command! Gcundo :Git reset HEAD~1

" ---------------
" Zoomwin
" ---------------
" Zoom Window to Full Size
nnoremap <silent> <leader>wo :ZoomWin<CR>

" ---------------
" airline
" ---------------
let g:airline_theme = 'jellybeans'
let g:airline_powerline_fonts = 1
let g:airline_detect_modified = 1
let g:airline#extensions#whitespace#enabled = 1
let g:airline#extensions#hunks#enabled = 1
let g:airline_mode_map = {
      \ 'n'  : 'N',
      \ 'i'  : 'I',
      \ 'R'  : 'R',
      \ 'v'  : 'V',
      \ 'V'  : 'VL',
      \ 'c'  : 'CMD',
      \ '' : 'VB',
      \ }
" Show the current working directory folder name
let g:airline_section_b = '%{substitute(getcwd(), ".*\/", "", "g")} '
" Just show the file name
" let g:airline_section_c = '%t'
" let g:airline_section_y = ''
" let g:airline_section_z = '%3p%% %#__accent_bold#%4l%#__restore__#:%3'
" let g:airline_section_z = '%3p%% %{substitute(line("."), "\\v(\\d)((\\d\\d\\d)+\\d@!)@=", "\\1,", "g")}|%{substitute(line("$"), "\\v(\\d)((\\d\\d\\d)+\\d@!)@=", "\\1,", "g")}'


" ---------------
" Ag.vim
" ---------------
nnoremap <silent> <leader>as :AgFromSearch<CR>
nnoremap <leader>ag :Ag<space>

" ---------------
" surround.vim
" ---------------
" Use # to get a variable interpolation (inside of a string)}
" ysiw#   Wrap the token under the cursor in #{}
" Thanks to http://git.io/_XqKzQ
let g:surround_35  = "#{\r}"

" Shortcuts for common surrounds
map <leader>y# ysi"#

" ---------------
" Gifl - Google I'm Feeling Lucky URL Grabber
" ---------------
" let g:LuckyOutputFormat='markdown'
" I sometimes run vim without ruby support.
" let g:GIFLSuppressRubyWarning = 1


" ---------------
" indenthtml
" ---------------
" Setup indenthtml to propertly indent html. Without this, formatting doesn't
" work on html.
" let g:html_indent_inctags = "html,body,head,tbody"
" let g:html_indent_script1 = "inc"
" let g:html_indent_style1 = "inc"

autocmd FileType html,handlebars,javascript let b:closetag_html_style=1
autocmd FileType html,handlebars,javascript source ~/.vim/bundle/closetag.vim/plugin/closetag.vim

" ---------------
" Unconditional Paste
" ---------------
" let g:UnconditionalPaste_NoDefaultMappings = 1
" nnoremap gcP <Plug>UnconditionalPasteCharBefore
" nnoremap gcp <Plug>UnconditionalPasteCharAfter

" ---------------
" Gist.vim
" ---------------
if has('macunix') || has('mac')
  let g:gist_clip_command = 'pbcopy'
endif
let g:gist_post_private = 1

" ---------------
" MatchTagAlways
" ---------------
let g:mta_filetypes = {
    \ 'html' : 1,
    \ 'xhtml' : 1,
    \ 'xml' : 1,
    \ 'handlebars' : 1,
    \ 'eruby' : 1,
    \}

" ---------------
" YouCompleteMe
" ---------------
let g:ycm_min_num_of_chars_for_completion = 2
let g:ycm_complete_in_comments = 1
let g:ycm_collect_identifiers_from_comments_and_strings = 1
let g:ycm_seed_identifiers_with_syntax = 1
let g:ycm_server_keep_logfiles = 1
let g:ycm_server_log_level = 'debug'
let g:ycm_path_to_python_interpreter = '/usr/local/opt/python/libexec/bin/python'

let g:ycm_key_list_select_completion=["<c-p>"]
let g:ycm_key_list_previous_completion=["<c-n>"]
let g:ycm_filetype_blacklist = {
      \ 'tagbar' : 1,
      \ 'qf' : 1,
      \ 'notes' : 1,
      \ 'unite' : 1,
      \ 'text' : 1,
      \ 'vimwiki' : 1,
      \ 'pandoc' : 1,
      \ 'infolog' : 1,
      \ 'mail' : 1
      \}
let g:ycm_semantic_triggers =  {
      \   'c' : ['->', '.'],
      \   'objc' : ['->', '.'],
      \   'ocaml' : ['.', '#'],
      \   'cpp,objcpp' : ['->', '.', '::'],
      \   'perl' : ['->'],
      \   'php' : ['->', '::', '"', "'", 'use ', 'namespace ', '\'],
      \   'cs,java,javascript,typescript,d,python,perl6,scala,vb,elixir,go' : ['.'],
      \   'html': ['<', '"', '</', ' '],
      \   'vim' : ['re![_a-za-z]+[_\w]*\.'],
      \   'ruby' : ['.', '::'],
      \   'lua' : ['.', ':'],
      \   'erlang' : [':'],
      \   'haskell' : ['.', 're!.']
      \ }

" ---------------
" UltiSnips
" ---------------
let g:UltiSnipsSnippetDirectories=["UltiSnips", "MyUltiSnips"]
let g:UltiSnipsExpandTrigger="<tab>"
let g:UltiSnipsJumpForwardTrigger="<tab>"
let g:UltiSnipsJumpBackwardTrigger="<s-tab>"
" let g:UltiSnipsListSnippets="<c-h>"
autocmd FileType typescript setlocal completeopt+=preview


" ---------------
" vim-signify
" ---------------
let g:signify_mapping_next_hunk = '<leader>gj'
let g:signify_mapping_prev_hunk = '<leader>gk'
let g:signify_mapping_toggle_highlight="<nop>"
let g:signify_mapping_toggle="<nop>"
" Makes switching buffers in large repos have no delay
let g:signify_update_on_bufenter = 0
let g:signify_sign_overwrite = 0

" ---------------
" vim-startify
" ---------------
let g:startify_list_order = [
        \ ['   Last modified'],
        \ 'dir',
        \ ['   Recent'],
        \ 'files',
        \ ]
let g:startify_skiplist = [
            \ 'COMMIT_EDITMSG',
            \ $VIMRUNTIME .'/doc',
            \ 'bundle/.*/doc',
            \ ]
let g:startify_files_number = 10
let g:startify_custom_indices = ['a', 'd', 'f', 'g', 'h']
let g:startify_change_to_dir = 0

hi StartifyBracket ctermfg=240
hi StartifyFooter  ctermfg=111
hi StartifyHeader  ctermfg=203
hi StartifyPath    ctermfg=245
hi StartifySlash   ctermfg=240


let g:startify_recursive_dir = 1

" ---------------
" vim-togglecursor
" ---------------
let g:togglecursor_leave='line'


" ---------------
" Voogle
" ---------------
let g:voogle_map="<leader>gg"

" ---------------
" tcomment_vim
" ---------------
let g:tcommentMaps = 0
nnoremap <silent><leader>cc :TComment<CR>
vnoremap <silent><leader>cc :TComment<CR>
nnoremap <silent><leader>cb :TCommentBlock<CR>
vnoremap <silent><leader>cb :TCommentBlock<CR>

" ------
" ColorV
" ------
let g:colorv_preview_ftype = 'css,javascript,scss,stylus'


" ------
" Tagbar
" ------
let g:tagbar_usearrows = 1
nnoremap <leader>tt :TagbarToggle<CR>


" --------
" vim-anzu
" --------
" nmap n <Plug>(anzu-n)
" nmap N <Plug>(anzu-N)
" nmap * <Plug>(anzu-star)
" nmap # <Plug>(anzu-sharp)
"
" let g:airline#extensions#anzu#enabled = 1

""""""""""""""
"  Markdown  "
""""""""""""""
function! s:setupMarkup()
    nnoremap <leader>p :silent !open -a Google\ Chrome.app '%:p'<CR>
endfunction
au BufRead,BufNewFile *.{md,markdown,mdown,mkd,mkdn} call s:setupMarkup()
au BufRead,BufNewFile *.{md,markdown,mdown,mkd,mkdn} set filetype=markdown

""""""""""""
"  pymode  "
""""""""""""
let g:pymode_rope=0
let g:pymode_rope_completion = 0
let g:pymode_rope_complete_on_dot = 0
let g:pymode_rope_autoimport = 0
let g:pymode_rope_regenerate_on_write = 0
let g:pymode_options_max_line_length = 79
nnoremap <leader>prf :call pymode#rope#rename_module()<CR>




" Check that this plugin only gets loaded once.
if exists("g:scss_lint_vim")
  finish
endif

" Set global variable to ensure plugin is only loaded once.
let g:scss_lint_vim = "true"

" Call init function when when reading a file with an scss extension.
autocmd BufRead *.scss call s:init()

" Init function that handles calling the scss lint function
" when a file is either saved or written to.
function! s:init()
	augroup scssLint
		autocmd BufWritePost,FileWritePost <buffer> call SCSSLint()
	augroup END
endfunction

" Run scsslint command on the current file opened.
function! SCSSLint()
  let current_file = shellescape(expand('%s:p'))
  let cmd = "scss-lint " . current_file
  let output = system(cmd)
  echo output
endfunction

" ---------------
" GO specific
" ---------------
au BufNewFile,BufRead *.go setlocal noet ts=4 sw=4 sts=4

" ---------------
" JS specific
" ---------------
let g:jsdoc_allow_input_prompt = 1
let g:jsdoc_param_description_separator = ' - '
let g:jsdoc_additional_descriptions = 1
let g:jsdoc_enable_es6 = 1

