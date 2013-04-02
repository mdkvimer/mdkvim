set syntax=on

" È¥µôÊäÈëŽíÎóµÄÌáÊŸÉùÒô
set noeb

" ÔÚŽŠÀíÎŽ±£Žæ»òÖ»¶ÁÎÄŒþµÄÊ±ºò£¬µ¯³öÈ·ÈÏ
set confirm

" ×Ô¶¯Ëõœø
set autoindent
set cindent

" TabŒüµÄ¿í¶È
set tabstop=4

" Í³Ò»ËõœøÎª4
set softtabstop=4
set shiftwidth=4

" ²»ÒªÓÃ¿ÕžñŽúÌæÖÆ±í·û
set noexpandtab

" ÔÚÐÐºÍ¶Î¿ªÊŒŽŠÊ¹ÓÃÖÆ±í·û
set smarttab

" ÏÔÊŸÐÐºÅ
set number
" ÀúÊ·ŒÇÂŒÊý
set history=1000

"œûÖ¹Éú³ÉÁÙÊ±ÎÄŒþ
set nobackup
set noswapfile

"ËÑË÷ºöÂÔŽóÐ¡ÐŽ
set ignorecase

"ËÑË÷Öð×Ö·ûžßÁÁ
set hlsearch
set incsearch

"ÐÐÄÚÌæ»»
set gdefault

"±àÂëÉèÖÃ
set enc=utf-8
set fencs=utf-8,ucs-bom,shift-jis,gb18030,gbk,gb2312,cp936

"ÓïÑÔÉèÖÃ 
set langmenu=zh_CN.UTF-8
set helplang=cn

" ÎÒµÄ×ŽÌ¬ÐÐÏÔÊŸµÄÄÚÈÝ£š°üÀšÎÄŒþÀàÐÍºÍœâÂë£©
set statusline=%F%m%r%h%w\ [FORMAT=%{&ff}]\ [TYPE=%Y]\ [POS=%l,%v][%p%%]\ %{strftime(\"%d/%m/%y\ -\ %H:%M\")}
"set statusline=[%F]%y%r%m%*%=[Line:%l/%L,Column:%c][%p%%]

" ×ÜÊÇÏÔÊŸ×ŽÌ¬ÐÐ
set laststatus=2

" ÔÚ±àŒ­¹ý³ÌÖÐ£¬ÔÚÓÒÏÂœÇÏÔÊŸ¹â±êÎ»ÖÃµÄ×ŽÌ¬ÐÐ
set ruler           

" ÃüÁîÐÐ£šÔÚ×ŽÌ¬ÐÐÏÂ£©µÄžß¶È£¬Ä¬ÈÏÎª1£¬ÕâÀïÊÇ2
set cmdheight=2

" Õì²âÎÄŒþÀàÐÍ
filetype on

" ÔØÈëÎÄŒþÀàÐÍ²åŒþ
filetype plugin on

" ÎªÌØ¶šÎÄŒþÀàÐÍÔØÈëÏà¹ØËõœøÎÄŒþ
filetype indent on

" ±£ŽæÈ«ŸÖ±äÁ¿
set viminfo+=!

" ŽøÓÐÈçÏÂ·ûºÅµÄµ¥ŽÊ²»Òª±»»»ÐÐ·Öžî
set iskeyword+=_,$,@,%,#,-

" ×Ö·ûŒä²åÈëµÄÏñËØÐÐÊýÄ¿
set linespace=0

" ÔöÇ¿Ä£ÊœÖÐµÄÃüÁîÐÐ×Ô¶¯Íê³É²Ù×÷
set wildmenu

" Ê¹»ØžñŒü£šbackspace£©Õý³£ŽŠÀíindent, eol, startµÈ
set backspace=2

" ÔÊÐíbackspaceºÍ¹â±êŒü¿çÔœÐÐ±ßœç
set whichwrap+=<,>,h,l

" ¿ÉÒÔÔÚbufferµÄÈÎºÎµØ·œÊ¹ÓÃÊó±ê£šÀàËÆofficeÖÐÔÚ¹€×÷ÇøË«»÷Êó±ê¶šÎ»£©
set mouse=a
set selection=exclusive
set selectmode=mouse,key

" Íš¹ýÊ¹ÓÃ: commandsÃüÁî£¬žæËßÎÒÃÇÎÄŒþµÄÄÄÒ»ÐÐ±»žÄ±ä¹ý
set report=0

" Æô¶¯µÄÊ±ºò²»ÏÔÊŸÄÇžöÔ®ÖúË÷ÂíÀï¶ùÍ¯µÄÌáÊŸ
set shortmess=atI

" ÔÚ±»·ÖžîµÄŽ°¿ÚŒäÏÔÊŸ¿Õ°×£¬±ãÓÚÔÄ¶Á
set fillchars=vert:\ ,stl:\ ,stlnc:\

" žßÁÁÏÔÊŸÆ¥ÅäµÄÀšºÅ
set showmatch

" Æ¥ÅäÀšºÅžßÁÁµÄÊ±Œä£šµ¥Î»ÊÇÊ®·ÖÖ®Ò»Ãë£©
set matchtime=5

" ¹â±êÒÆ¶¯µœbufferµÄ¶¥²¿ºÍµ×²¿Ê±±£³Ö3ÐÐŸàÀë
set scrolloff=3

" ÎªC³ÌÐòÌá¹©×Ô¶¯Ëõœø
set smartindent

" Ö»ÔÚÏÂÁÐÎÄŒþÀàÐÍ±»Õì²âµœµÄÊ±ºòÏÔÊŸÐÐºÅ£¬ÆÕÍšÎÄ±ŸÎÄŒþ²»ÏÔÊŸ
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

" F5±àÒëºÍÔËÐÐC³ÌÐò£¬F6±àÒëºÍÔËÐÐC++³ÌÐò
" Çë×¢Òâ£¬ÏÂÊöŽúÂëÔÚwindowsÏÂÊ¹ÓÃ»á±šŽí
" ÐèÒªÈ¥µô./ÕâÁœžö×Ö·û

" CµÄ±àÒëºÍÔËÐÐ
map <F5> :call CompileRunGcc()<CR>
func! CompileRunGcc()
exec "w"
exec "!gcc % -o %<"
exec "! ./%<"
endfunc

" C++µÄ±àÒëºÍÔËÐÐ
map <F6> :call CompileRunGpp()<CR>
func! CompileRunGpp()
exec "w"
exec "!g++ % -o %<"
exec "! ./%<"
endfunc

" <F7> ÔËÐÐpython³ÌÐò  
map <F7> :w<cr>:!python %<cr>  
  
  
" <F8> ÔËÐÐshell³ÌÐò  
map <F8> :call CompileRunSH()<CR>  
func! CompileRunSH()  
exec "w"  
exec "!chmod u+x %"  
exec "!./%"  
endfunc  
  
  
"<F9>  gdbµ÷ÊÔ  
map <F9> :call Debug()<CR>  
func!  Debug()  
exec "w"  
exec "!gcc % -o %< -gstabs+"  
exec "!gdb %<"
endfunc
  
" ÄÜ¹»Æ¯ÁÁµØÏÔÊŸ.NFOÎÄŒþ
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

" žßÁÁÏÔÊŸÆÕÍštxtÎÄŒþ£šÐèÒªtxt.vimœÅ±Ÿ£©
au BufRead,BufNewFile *  setfiletype txt

" ÓÃ¿ÕžñŒüÀŽ¿ª¹ØÕÛµþ
set foldenable
set foldmethod=manual
nnoremap <space> @=((foldclosed(line('.')) < 0) ? 'zc' : 'zo')<CR>

" minibufexpl²åŒþµÄÒ»°ãÉèÖÃ
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


