set syntax=on

 
set noeb

 
set confirm
 
set autoindent
set cindent

 
set tabstop=4

 
set softtabstop=4
set shiftwidth=4

 
set noexpandtab

 
set smarttab
 
set number
 
set history=1000

 
set nobackup
set noswapfile

 
set ignorecase

 
set hlsearch
set incsearch

 
set gdefault

 
set enc=utf-8
set fencs=utf-8,ucs-bom,shift-jis,gb18030,gbk,gb2312,cp936

 
set langmenu=zh_CN.UTF-8
set helplang=cn

 
set statusline=%F%m%r%h%w\ [FORMAT=%{&ff}]\ [TYPE=%Y]\ [POS=%l,%v][%p%%]\ %{strftime(\"%d/%m/%y\ -\ %H:%M\")}
"set statusline=[%F]%y%r%m%*%=[Line:%l/%L,Column:%c][%p%%]

 
set laststatus=2

 
set ruler           

 
set cmdheight=2

 
filetype on

 
filetype plugin on
 
filetype indent on

 
set viminfo+=!

 
set iskeyword+=_,$,@,%,#,-

 
set linespace=0
 
set wildmenu
 
set backspace=2
 
set whichwrap+=<,>,h,l
 
set mouse=a
set selection=exclusive
set selectmode=mouse,key
 
set report=0

 
set shortmess=atI
 
set fillchars=vert:\ ,stl:\ ,stlnc:\

 
set showmatch

 
set matchtime=5
 
set scrolloff=3

 
set smartindent

 
if has("autocmd")
   autocmd FileType xml,html,c,cs,java,perl,shell,bash,cpp,python,vim,php,ruby set number
   autocmd FileType xml,html vmap <C-o> <ESC>'<i<!--<ESC>o<ESC>'>o-->
   autocmd FileType java,c,cpp,cs vmap <C-o> <ESC>'<o/*<ESC>'>o*/
   autocmd FileType html,text,php,vim,c,java,xml,bash,shell,perl,python setlocal textwidth=100
   autocmd Filetype html,xml,xsl source $VIMRUNTIME/plugin/closetag.vim
   autocmd BufReadPost *
      \ if line("'\"") > 0 && line("'\"") <= line("$") |
      \   exe "normal g`\"" |
      \ endif
endif " has("autocmd")

 
map <F5> :call CompileRunGcc()<CR>
func! CompileRunGcc()
exec "w"
exec "!gcc % -o %<"
exec "! ./%<"
endfunc

 
map <F6> :call CompileRunGpp()<CR>
func! CompileRunGpp()
exec "w"
exec "!g++ % -o %<"
exec "! ./%<"
endfunc

   
map <F7> :w<cr>:!python %<cr>  
  
  
   
map <F8> :call CompileRunSH()<CR>  
func! CompileRunSH()  
exec "w"  
exec "!chmod u+x %"  
exec "!./%"  
endfunc  
  
  
  
map <F9> :call Debug()<CR>  
func!  Debug()  
exec "w"  
exec "!gcc % -o %< -gstabs+"  
exec "!gdb %<"
endfunc
  
 
set encoding=utf-8
function! SetFileEncodings(encodings)
    let b:myfileencodingsbak=&fileencodings
    let &fileencodings=a:encodings
endfunction
function! RestoreFileEncodings()
    let &fileencodings=b:myfileencodingsbak
    unlet b:myfileencodingsbak
endfunction

au BufReadPre *.nfo call SetFileEncodings('cp437')|set ambiwidth=single
au BufReadPost *.nfo call RestoreFileEncodings()

 
au BufRead,BufNewFile *  setfiletype txt
 
set foldenable
set foldmethod=manual
nnoremap <space> @=((foldclosed(line('.')) < 0) ? 'zc' : 'zo')<CR>

 
let g:miniBufExplMapWindowNavVim = 1
let g:miniBufExplMapWindowNavArrows = 1
let g:miniBufExplMapCTabSwitchBufs = 1
let g:miniBufExplModSelTarget = 1
:colorscheme evening
filetype plugin indent on
set guifont=Courier\ 12
set nocompatible
let $VIMFILES=$HOME.'/.vim'
map <F4> :call TitleDet()<cr>'s
function AddTitle()
    call append(0,"/*=============================================================================")
    call append(1,"#")
    call append(2,"# Author: mengdaiku - mengdaikun@gmail.com")
    call append(3,"#")
    call append(4,"# QQ : 646978600")
    call append(5,"#")
    call append(6,"# Last modified: ".strftime("%Y-%m-%d %H:%M"))
    call append(7,"#")
    call append(8,"# Filename: ".expand("%:t"))
    call append(9,"#")
    call append(10,"# Description: ")
    call append(11,"#")
    call append(12,"=============================================================================*/")
    echohl WarningMsg | echo "Successful in adding the copyright." | echohl None
endf
"更新最近修改时间和文件名
function UpdateTitle()
    normal m'
    execute '/# *Last modified:/s@:.*$@\=strftime(":\t%Y-%m-%d %H:%M")@'
    normal ''
    normal mk
    execute '/# *Filename:/s@:.*$@\=":\t\t".expand("%:t")@'
    execute "noh"
    normal 'k
    echohl WarningMsg | echo "Successful in updating the copy right." | echohl None
endfunction
"判断前10行代码里面，是否有Last modified这个单词，
"如果没有的话，代表没有添加过作者信息，需要新添加；
"如果有的话，那么只需要更新即可
function TitleDet()
    let n=1
    "默认为添加
    while n < 10
        let line = getline(n)
        if line =~ '^\#\s*\S*Last\smodified:\S*.*$'
            call UpdateTitle()
            return
        endif
        let n = n + 1
    endwhile
    call AddTitle()
endfunction
map <F3> :call TitleDet1()<cr>'s
function AddTitle1()
    call append(0,"#/*=============================================================================")
    call append(1,"#")
    call append(2,"# Author: mengdaikun - mengdaikun@gmail.com")
    call append(3,"#")
    call append(4,"# QQ : 646978600")
    call append(5,"#")
    call append(6,"# Last modified: ".strftime("%Y-%m-%d %H:%M"))
    call append(7,"#")
    call append(8,"# Filename: ".expand("%:t"))
    call append(9,"#")
    call append(10,"# Description: ")
    call append(11,"#")
    call append(12,"#=============================================================================*/")
    echohl WarningMsg | echo "Successful in adding the copyright." | echohl None
endf
"更新最近修改时间和文件名
function UpdateTitle1()
    normal m'
    execute '/# *Last modified:/s@:.*$@\=strftime(":\t%Y-%m-%d %H:%M")@'
    normal ''
    normal mk
    execute '/# *Filename:/s@:.*$@\=":\t\t".expand("%:t")@'
    execute "noh"
    normal 'k
    echohl WarningMsg | echo "Successful in updating the copy right." | echohl None
endfunction
"判断前10行代码里面，是否有Last modified这个单词，
"如果没有的话，代表没有添加过作者信息，需要新添加；
"如果有的话，那么只需要更新即可
function TitleDet1()
    let n=1
    "默认为添加
    while n < 10
        let line = getline(n)
        if line =~ '^\#\s*\S*Last\smodified:\S*.*$'
            call UpdateTitle1()
            return
        endif
        let n = n + 1
    endwhile
    call AddTitle1()
endfunction
map <F2> :call TitleDet2()<cr>'s
function AddTitle2()
    call append(0,"'''/*=============================================================================")
    call append(1,"#")
    call append(2,"# Author: mengdaikun - mengdaikun@gmail.com")
    call append(3,"#")
    call append(4,"# QQ : 646978600")
    call append(5,"#")
    call append(6,"# Last modified: ".strftime("%Y-%m-%d %H:%M"))
    call append(7,"#")
    call append(8,"# Filename: ".expand("%:t"))
    call append(9,"#")
    call append(10,"# Description: ")
    call append(11,"#")
    call append(12,"=============================================================================*/'''")
    echohl WarningMsg | echo "Successful in adding the copyright." | echohl None
endf
"更新最近修改时间和文件名
function UpdateTitle2()
    normal m'
    execute '/# *Last modified:/s@:.*$@\=strftime(":\t%Y-%m-%d %H:%M")@'
    normal ''
    normal mk
    execute '/# *Filename:/s@:.*$@\=":\t\t".expand("%:t")@'
    execute "noh"
    normal 'k
    echohl WarningMsg | echo "Successful in updating the copy right." | echohl None
endfunction
"判断前10行代码里面，是否有Last modified这个单词，
"如果没有的话，代表没有添加过作者信息，需要新添加；
"如果有的话，那么只需要更新即可
function TitleDet2()
    let n=1
    "默认为添加
    while n < 10
        let line = getline(n)
        if line =~ '^\#\s*\S*Last\smodified:\S*.*$'
            call UpdateTitle2()
            return
        endif
        let n = n + 1
    endwhile
    call AddTitle2()
endfunction
set t_Co=256
colorscheme darkburn 
let g:SuperTabRetainCompletionType=2
let g:SuperTabDefaultCompletionType="<C-X><C-O>"


