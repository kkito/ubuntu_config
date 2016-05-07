" ==============
" 普通模式下 ci" di[ di( 删除括号/引号/中括号中内容，然后insert模式
"
" to study the http://amix.dk/vim/vimrc.html   
"
" VI 兼容的问题，不考虑vi
set nocompatible
" 历史记录，包括:下的命令操作
set history=400
filetype off

" indent 排版
colorscheme desert

highlight OverLength ctermbg=red ctermfg=white guibg=#592929
match OverLength /\%81v.\+/

" 如果外部修改了，自动reload进来
set autoread
" 可以使用鼠标
" set mouse=a

" Set maplearder map所需要的开头
let mapleader = ","
let g:mapleader=","

" 快速保存
nmap <leader>w :w!<cr>
"nmap <leader>f :find<cr>

"快速修改vimrc
map <silent> <leader>e :e ~/.vimrc<cr>

match OverLength /\%81v.*/
highlight OverLength ctermbg=red ctermfg=white guibg=#592929

" motion see help motion
" 选择一个单词 ， 一个段落
" viw vaw vip vap 
" help v_ip
" 其他应用 删除<html>中<中内容 di< 剩下<> , da<  , 连尖括号也删除
" 或者使用 ci{ , 删除{内，转换到输入模式 , ci"等等



"""""""""""""""""""""""""""""""""""""""""""""""""""""
"    Colors and Fonts
"""""""""""""""""""""""""""""""""""""""""""""""""""""

syntax enable

" 切换语法高亮的设置
map <leader>1 :set syntax=c<cr>
map <leader>2 :set syntax=ruby<cr>
map <leader>3 :set syntax=javascript<cr>
map <leader>4 :set syntax=xhtml<cr>


"""""""""""""""""""""""""""""
" VIM userinterface
"""""""""""""""""""""""""""""

set so=7

"wildmenu 自动补全机制
set wildmenu
set ruler
"设置命令行的高度
set cmdheight=2

set number

set ignorecase
set incsearch

set magic

" 错误没有声音
set noerrorbells
set novisualbell

set showmatch

"tabnew 很有用啊!!!!
"map <leader>tn :tabnew %<cr>


set expandtab
set tabstop=4
set cindent shiftwidth=4
au BufRead,BufNewFile *.rb set shiftwidth=2
au BufRead,BufNewFile *.rake set shiftwidth=2
set hlsearch
set fileencoding=utf-8
set fileencodings=utf-8,gb18030,latin-1
au BufRead,BufNewFile *.fx setfiletype fx

"autocmd BufNewFile *.html 0r $VIM/templates/html.tpl


"Fast reloading the .vimrc
map <silent> <leader>s :source ~/.vimrc


set cursorcolumn!
set cursorline!
map <silent> <leader>cc :set cursorcolumn!<cr>
map <silent> <leader>cl :set cursorline!<cr>
"highlight CursorLine guibg=darkgrey  ctermbg=lightred
"highlight CursorColumn guibg=darkgrey ctermbg=lightred

"Fast editing the .vimrc
"map <silent> <leader>ee :e ~/.vimrc.bak
"map <silent> <leader>eee Gohello world<Esc>
"map <leader>eeee Gohello world333333333<Esc>
"map <silent> ,h /Header<CR>
"map ,i /Header<CR>

"When .vimrc is edited , reload it
autocmd! bufwritepost .vimrc source ~/.vimrc

"========= 
let g:allml_global_maps = 1 
"map <Leader><C-X>=  Gohekko<esc>
"foo<%= ^ %>
au BufNewFile,BufRead *.mxml set filetype=mxml
au BufNewFile,BufRead *.as set filetype=actionscript

" taglist
map <silent> <leader>tl :TlistToggle<cr>
let Tlist_Show_One_File = 1

" fuzzy finder
map <silent> <leader>ff :FufCoverageFile<cr>
map <silent> <leader>ft :FufTag<cr>
map <silent> <leader>fb :FufBuffer<cr>

" neocomplcache 
"let g:acp_enableAtStartup=0
"let g:neocomplcache_min_syntax_length=9 
let g:neocomplcache_enable_at_startup=1
map <silent> <leader>nc :let g:neocomplcache_disable_auto_complete=!g:neocomplcache_disable_auto_complete<cr>
let g:neocomplcache_disable_auto_complete=1
"let g:acp_enableAtStartup=1
"let g:neocomplcache_enable_at_startup = 0
"let g:NeoComplCache_DisableAutoComplete=1


"let g:NERDTreeWinPos = "right"
"nmap <silent> <C-D> :NERDTreeToggle<CR>
map <silent> <leader>r :NERDTreeToggle<cr>
map <silent> <leader>nt :NERDTreeFind<cr>

" http://insenvim.sourceforge.net/screen_shots.htm 代码提示
"
" schemes http://code.google.com/p/vimcolorschemetest/

" =========================================
" https://github.com/gmarik/vundle
" Bundles 
set rtp+=~/.vim/bundle/vundle/
call vundle#rc()
Bundle 'gmarik/vundle'

Bundle 'desert256.vim'
Bundle 'scala.vim'
"Bundle 'derekwyatt/vim-scalar

" 如何使用
" gcc #注释当前行
" V选择之后 gcc #注释掉当前选择部分
" gc{motion} # gcip 注释掉整paragraph ， gciw 注释掉 inner word
Bundle "vim-scripts/tComment"

" <Leader>ig
Bundle 'nathanaelkane/vim-indent-guides'
Bundle 'vim-scripts/BufOnly.vim'
"Bundle 'bling/vim-airline'

"https://github.com/tpope/vim-surround
Bundle 'tpope/vim-surround' 

Bundle "Raimondi/delimitMate"

Bundle "pangloss/vim-javascript"

Bundle 'kchmck/vim-coffee-script'
autocmd BufNewFile,BufReadPost *.coffee setl shiftwidth=2 expandtab
au bufnewfile,bufread *.coffee set filetype=coffee
"Bundle 'tfnico/vim-gradle'
"Bundle 'johnlim/vim-groovy'
"au bufnewfile,bufread *.groovy set filetype=groovy
"au bufnewfile,bufread *.gradle set filetype=groovy
Bundle "mattn/emmet-vim"
"let g:user_emmet_install_global = 0
"autocmd FileType html,css EmmetInstall
" trigger key <c-y>, # see https://github.com/mattn/emmet-vim/ 
Bundle 'digitaltoad/vim-jade'
au bufnewfile,bufread *.jade set filetype=jade
autocmd Filetype jade setlocal ts=2 sts=2 sw=2


"==================================================
"=  my functions
"==================================================
"


" function open related rspec of currect file
function! OpenRespecFile()
    let l:root = getcwd()."/**"
    execute(":set path=".l:root)
    " help filename-modifiers
    " help expand
    "let l:name_without_suffix = expand('%:r') 
    let l:name_without_suffix = expand('%:t:r') 
    " help match , help patten
    let l:is_spec = match(l:name_without_suffix , "_spec$")
    if l:is_spec == -1
        let l:specfile = l:name_without_suffix."_spec.rb"
        "echo l:root
        execute(":find ".l:specfile)
    else
        let l:originame = substitute(l:name_without_suffix , "_spec" , "" , "")
        echo l:originame
        execute(":find ".l:originame.".rb")
    endif


    "let l:list=system("find ".l:root." -name '".a:name."' | perl -ne 'print
                \"$.\\t$_\"'")

    "echo basename(name_without_suffix)
    "echo l:name_without_suffix."_spec.rb"
endfunction
nmap <silent> <leader>tr :call OpenRespecFile()<CR>

"filetype on
" Filetypes 判断所编辑文件的类型
"filetype plugin on
"filetype indent on
filetype plugin indent on
