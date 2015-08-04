"v1.0
"2014-12-12：增加*#，搜索选中
"2014-11-19：,g,d,增加gold表格
"2014-02-08：,t,d为完成，,t,a搜有事项
"            glx增加done时期
"2014-01-16：增加,tc，表格居中
"            状态栏增加函数名称，由Cfname插件实现
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
""for vundle
filetype off
"Get out of VI's compatible mode..
"set nocompatible	
set nocompatible ""nocp 
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""


""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"enc"
set encoding=utf-8
"fencs
set fileencodings=ucs-bom,utf-8,cp936,gb18030,big5,euc-jp,euc-kr,latin1

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"LEADERKEY
let mapleader = ","
let g:mapleader = ","
"C.vim mapleader
let g:C_MapLeader = ','

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
if has("win32")
    if &diff
        au GUIEnter * simalt ~x
    endif
    set tags+=F:\01src\read\tux\tags
	map <leader>g1 <Esc>:!dot -Tjpg % -o %_g1.jpg<CR><Esc>
	map <leader>g2 <Esc>:!circo -Tjpg % -o %_g2.jpg<CR><Esc>
	map <leader>g3 <Esc>:!twopi -Tjpg % -o %_g3.jpg<CR><Esc>
	map <leader>g4 <Esc>:!neato -Tjpg % -o %_g4.jpg<CR><Esc>
	map <leader>g5 <Esc>:!fdp -Tjpg % -o %_g5.jpg<CR><Esc>
	map <leader>g6 <Esc>:!sfdp -Tjpg % -o %_g6.jpg<CR><Esc>
	map <leader>g7 <Esc>:!dot -Tjpg % -o %_g1.jpg<CR><Esc>:!circo -Tjpg % -o %_g2.jpg<CR><Esc>:!twopi -Tjpg % -o %_g3.jpg<CR><Esc>:!neato -Tjpg % -o %_g4.jpg<CR><Esc>:!fdp -Tjpg % -o %_g5.jpg<CR><Esc>:!sfdp -Tjpg % -o %_g6.jpg<CR><Esc>

    "for soure insight"
    nnoremap <silent> <F11> :!start "D:\Program Files\Source Insight 3\Insight3.exe" -i +<C-R>=expand(line("."))<CR> %<CR> 
    

    set guifont=Inconsolata:h14:cANSI 
    set guifontwide=Yahei_Mono:h11.5:cGB2312
    source $VIMRUNTIME/delmenu.vim
    source $VIMRUNTIME/menu.vim
    language messages zh_CN.utf-8
    "windows下，空格前要加\,help option-backslash"
    ""set backupdir=d:\\lynn\ Documents\\My\ Backup
    set backupdir=E:\\temp\\vimbackup
    set rtp+=$VIM/vimfiles/bundle/vundle/
    call vundle#rc('$VIM/vimfiles/bundle')
    let $EDIR='e:'

else
    set tags+=~/fwin/01src/read/tux/tags
    set rtp+=~/.vim/bundle/vundle/
    call vundle#rc()
    "set guifontwide=WenQuanYi\ Micro\ Hei\ Mono\ Light\ 12
    "set guifont=Inconsolata 
    set backupdir=~/.backup
    let $EDIR='~/ewin'

endif
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"vimrc
let $UPDIR=$EDIR.'/360/Dropbox/userprofile'
map <leader>vr <ESC>:vs $UPDIR/.vimrc<CR>
map <leader>sr <ESC>:sp $UPDIR/.vimrc<CR>
map <leader>er <ESC>:e $UPDIR/.vimrc<CR>
""for vimwiki
let $VIMWIKIDIR=$EDIR.'/360/Dropbox/vimwiki'
let $FVWDIR=$UPDIR.'/forvimwiki'
"for graphviz"
let $FGDIR=$UPDIR.'/forgraphviz'
"for vim"
let $FVDIR=$UPDIR.'/forvim'
map <leader>gg :r $FGDIR/DotTile.tpl<CR>
map <leader>gi :r $FGDIR/DotIf.tpl<CR>
map <leader>gc :r $FGDIR/DotComment.tpl<CR>
map <leader>gs :r $FGDIR/DotSubgraph.tpl<CR>
imap <leader>gi <esc>:r $FGDIR/DotIf.tpl<CR>
imap <leader>gc <esc>:r $FGDIR/DotComment.tpl<CR>
imap <leader>gs <esc>:r $FGDIR/DotSubgraph.tpl<CR>

setlocal omnifunc=python2complete#Complete

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" 使用Vundle来管理Vundle，这个必须要有。
" for bundle
Bundle 'gmarik/vundle'
"接下来是要安装的插件
"格式1：Github上其他用户的仓库（非vim-scripts账户里的仓库，所以要加Github用户名）
Bundle 'mattn/calendar-vim'
Bundle 'sjas/csExplorer'
Bundle 'davidoc/taskpaper.vim'
Bundle 'kovisoft/slimv'
"Bundle 'Valloric/YouCompleteMe'
"Bundle 'scrooloose/syntastic'
"Bundle 'Valloric/ListToggle'
""格式2：vim-scripts里面的仓库，直接打仓库名即可。
Bundle 'a.vim'
"Bundle 'minibufexplorerpp'
Bundle 'matchit.zip'
Bundle 'L9'
"Bundle 'FuzzyFinder'
""Bundle 'genutils'
""Bundle 'SelectBuf'
Bundle 'Auto-Pairs'
Bundle 'taglist.vim'
Bundle 'surround.vim'
Bundle 'repeat.vim'
Bundle 'ctrlp.vim'
Bundle 'auto'
Bundle 'vimwiki'
"Bundle 'c.vim'
Bundle 'DoxygenToolkit.vim'
Bundle 'xptemplate'
Bundle 'Gundo'
"格式3：非Github的Git仓库,需要完整地址
""Bundle 'git://git.wincent.com/command-t.git'
map <S-F1> <Esc>:BundleInstall!<CR>
map <C-F1> <Esc>:BundleInstall<CR>
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"开启文件类型侦测
"根据侦测到的不同类型加载对应的插件
"根据侦测到的不同类型采用不同的缩进格式
filetype plugin indent on


"保存rc自动生效"
autocmd! bufwritepost .vimrc source $MYVIMRC
""autocmd! BufNewFile,BufRead,BufReadPost *.dot inoremap [  [::];h<ESC>i;
""autocmd! BufRead,BufNewFile *.dot inoremap [ [];<esc>i 
"autocmd! BufRead,BufNewFile *.dot :call AutoPairsToggle()
"autocmd! BufRead,BufNewFile *.dot set nonu
autocmd! BufRead,BufNewFile *.pc set ft=cpp
autocmd! BufRead,BufNewFile *.md set ft=vimwiki

if has("cscope")  
"    set csprg=/usr/bin/cscope  
"    set csto=0  
"    set cst  
"    set csverb  
"    set cspc=3  
    "add any database in current dir  
    if filereadable("cscope.out")  
        cs add cscope.out  
    "else search cscope.out elsewhere  
    else  
       let cscope_file=findfile("cscope.out", ".;")  
       let cscope_pre=matchstr(cscope_file, ".*/")  
       if !empty(cscope_file) && filereadable(cscope_file)  
           exe "cs add" cscope_file cscope_pre  
       endif        
     endif  
endif 


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"Set to auto read when a file is changed from the outside
"set autoread ar	
set	autoread

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"Have the mouse enabled all the time:
set mouse=a

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
""diffopt dip
set diffopt+=iwhite "忽略空格和tab"
"cul
autocmd InsertEnter * set nocursorline
autocmd InsertLeave * set cursorline
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"""guioptions go
set guioptions-=T "工具条
set guioptions-=m "菜单栏 
set guioptions-=r "右边的滚动条 
set guioptions-=R "右边的滚动条 
set guioptions-=l "左边的滚动条 
set guioptions-=L "左边的滚动条 
map <silent> <F1> :if &go=~# 'T' <Bar>
    \set guioptions-=T <Bar>
    \set guioptions-=m <Bar>
\else <Bar>
    \set guioptions+=T <Bar>
    \set guioptions+=m <Bar>
\endif<CR>
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""



""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"mousem(ode)
"left click cursor
"left drag start selection
"shift-left extend selection
"right drag -
"middle click  paste
set mousemodel=popup

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"Colors and Fone:
"Enable syntax hl
syntax enable
"guifont

"colorscheme
colorscheme darkblue
colorscheme koehler
colorscheme pablo
colorscheme torte
colorscheme solarized 
colorscheme desert 


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"Set 7 lines to the curors - when moving vertical..
"set scrolloff=7
set scrolloff=7

"Turn on wildmenu
set wildmenu

"""""""""""""""""""""""""""""""""""""""""""""""""""
"Ignore case when searching
set ignorecase "ic"
"set noignorecase "noic"
set smartcase

"""""""""""""""""""""""""""""""""""""""""""""""""""
"Always show current position
"set ruler ru
set ruler

"""""""""""""""""""""""""""""""""""""""""""""""""""
"acd
set autochdir
""""""""""""""""""""""""""""""""""""""""""""""""""
"Show line number
"set number nu
set number

"""""""""""""""""""""""""""""""""""""""""""""""""
"Do not redraw, when running macros.. lazyredraw lz
set lazyredraw

""""""""""""""""""""""""""""""""""""""""""""""""
"Change buffer - without saving
"set hidden hid
set hidden

""""""""""""""""""""""""""""""""""""""""""""""""
"Set backspace
set backspace=indent,eol,start

"Bbackspace and cursor keys wrap to
""""""""""""""""""""""""""""""""""""""""""""""""
set whichwrap+=<,>,h,l

"逐字匹配"
set incsearch

"Set magic on
set magic

"No sound on errors.
set noerrorbells
set visualbell	" when error, flash as visual bell 

"show matching bracet
set showmatch
set matchtime=5	" show matching time 

"How many tenths of a second to blink
set mat=4

""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"Highlight search thing
""set hlsearch hls
set hlsearch
"23456789
    
""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"Set tab stop
set tabstop=4           " ts一个tab显示4个空格
set softtabstop=3       " sts tab和空格混合，优先tab
set shiftwidth=4        " sw写代码时用到,自动缩进为4
set expandtab           ""将tab扩展成空格
"set noexpandtab        "将tab不扩展成空格
set smarttab            ""自动缩进 sta
set cindent             ""cin
set smartindent         ""si

set whichwrap+=b,s,<,>,[,]
set formatoptions=tcrqmB

set splitbelow
set nostartofline
set showcmd         " show (partial) command in status line
set showmode	" show editor mode, such as command, insert or replace, visual as messa 
set confirm		" with dialog support confirm({msg} [, {choices} [, {default} [, {type}]]])

" Make command line two lines high
set cmdheight=1


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Files and backup
"Turn backup off
set backup
set nowritebackup "nowb

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"Indent
set autoindent

"C-style indenting
set cino=:0g0t0(sus  " values control how cindent indent code
    

"Wrap line
set wrap
"fdm
set foldmethod=manual



""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
set laststatus=2
"" 状态栏各个状态
let statusHead ="%-.50f[%{CF_UpdateFunctionNameForStatusBar()}]\ %h%1*%m%*%r" "f 文件相对路径  h 帮助标志  m 修改标志颜色1 r只读标志
let statusBreakPoint ="%<"  "截断"
let statusSeparator =" "
let statusFileType ="%{((&ft\ ==\ \"help\"\ \|\|\ &ft\ ==\ \"\")?\"\":\"[\".&ft.\"]\")}"
let statusFileFormat ="[%{(&ff\ ==\ \"unix\")?\"unix\":\"dos\"}]"
let statusAscii ="\(%b:0x%B\)"
let statusCwd ="%-.50{getcwd()}"
let statusBody =statusFileType.statusFileFormat.statusSeparator.statusAscii.statusSeparator.statusBreakPoint
let statusEncoding ="[%{(&fenc\ ==\ \"\"?&enc:&fenc).(&bomb?\",BOM\":\"\")}]"
let statusBlank ="%="
let statusKeymap ="%k"
let statusRuler ="%-12.(%lL,%c%VC%)\ %P"   "%V是虚拟列号，当有tab键的时候会显示"
let statusTime ="%{strftime(\"%y-%m-%d\",getftime(expand(\"%\")))}"
let statusEnd=statusKeymap."\ ".statusEncoding.statusRuler."\ ".statusTime
"" 最终状态栏的模式字符串
let statusString=statusHead.statusBody.statusBlank.statusEnd
set statusline=%!statusString 
hi User1 guibg=red




"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => TAGLIST
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
""let g:NERDTree_title='[NERD Tree]'
""let g:winManagerWindowLayout='NERDTree|TagList
""function! NERDTree_Start()
""    exec 'NERDTree'
""endfunction
""function! NERDTree_IsValid()
""    return 1
""endfunction
""nmap <F4> :WMToggle<cr>:q<cr>
""nmap <C-F4> :WMToggle<cr>
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"buffer
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
function! BufPos_ActivateBuffer(num)
    let l:count = 1
    for i in range(1, bufnr("$"))
        if buflisted(i) && getbufvar(i, "&modifiable")
            if l:count == a:num
                exe "buffer " . i
                return
            endif
            let l:count = l:count + 1
        endif
    endfor
    echo "No buffer!"
endfunction
function! BufPos_Initialize()
    for i in range(1, 9)
        exe "map <M-" . i . "> :call BufPos_ActivateBuffer(" . i . ")<CR>"
    endfor
    exe "map <M-0> :call BufPos_ActivateBuffer(10)<CR>"
endfunction
autocmd VimEnter * call BufPos_Initialize()

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"a.vim
nnoremap <silent> <F12> :A<CR>


"""""""""""""""""""""""""""""""""""""""""""
"
""""""""""""""""""""""""""""""""""""""""""

set completeopt=longest,menu

let OmniCpp_DisplayMode = 1 "使用“MyClass::”显示类的所有方法和属性，这样比较方便
let OmniCpp_MayCompleteDot = 1 " autocomplete with .
let OmniCpp_MayCompleteArrow = 1 " autocomplete with ->
let OmniCpp_MayCompleteScope = 1 " autocomplete with ::
let OmniCpp_SelectFirstItem = 2 " select first item (but don't insert)
let OmniCpp_NamespaceSearch = 2 " search namespaces in this and included files
let OmniCpp_ShowPrototypeInAbbr = 1 " show function prototype (i.e. parameters) in popup window
let OmniCpp_DefaultNamespaces = ["std", "_GLIBCXX_STD"]

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"""ctags
""set tags+=~/.vim/tags/stdlib/tags
map <C-F12> :!ctags -R --c++-kinds=+px --fields=+iaS --exclude=.svn --extra=+q .<CR>
""taglist
let Tlist_Show_One_File=1
let Tlist_Exit_OnlyWindow=1
let Tlist_Close_On_Select=1
let Tlist_Sort_Type="name"
",tl
map <silent> <leader>tl :TlistToggle<cr><C-w>h
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
""my key mapmaping
""move in split windows            
""nnoremap <C-j> <C-w>j
""nnoremap <C-k> <C-w>k
""nnoremap <C-h> <C-w>h
""nnoremap <C-l> <C-w>l
imap jk <Esc>:w<CR>
",z以括号创建折叠
nmap <silent><leader>z zf%
nmap oo o<esc>
nmap OO O<esc>j
"disable up down right left
""nnoremap <up> <nop>
""inoremap <up> <nop>
""nnoremap <down> <nop>
""inoremap <down> <nop>
""noremap <right> <nop>
""inoremap <right> <nop>
""nnoremap <left> <nop>
""inoremap <left> <nop>
"nnoremap <leader>w <C-w>v<C-w>l
"change word to uppercase, I love this very much  
inoremap <C-u> <esc>gUiw`]a
nnoremap <C-u> gUiw`]a


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"DoxygenToolkit
"let g:DoxygenToolkit_commentType = "C++"
"压缩空行
"let g:DoxygenToolkit_compactDoc = "yes"
"一行显示
let g:DoxygenToolkit_compactOneLineDoc = "yes"
let g:DoxygenToolkit_versionString = "1.0"
let g:DoxygenToolkit_briefTag_className = "no"
let g:DoxygenToolkit_briefTag_pre="@brief "
let g:DoxygenToolkit_paramTag_pre="@param "
let g:DoxygenToolkit_returnTag="@return "
let g:DoxygenToolkit_authorName="zzz@"
let g:DoxygenToolkit_licenseTag="Copyright (c) 2015,companeyname.\<enter>"
let g:DoxygenToolkit_licenseTag=g:DoxygenToolkit_licenseTag . "All rights reserved."
"let g:DoxygenToolkit_blockHeader="----------------------------------------------------------------------"
"let g:DoxygenToolkit_blockFooter="----------------------------------------------------------------------"
map <leader>du <esc>:DoxAuthor<cr>
noremap <leader>dh <esc>:DoxLic<cr>kdd:DoxAuthor<cr><esc>makkddO<esc>gg0r O<esc>0i/*<esc>G'a$a
map <leader>dx <esc>:Dox<cr>
map <leader>db <esc>:DoxBlock<cr>
map <leader>do <Esc>:!doxygen f:\01src\having\Doxyfile<CR><Esc>
map <leader>df <ESC>:e f:\01src\having\Doxyfile<CR>
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""


""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"vimwiki"
"其实diary和css都是在path的相对路径上的"
let g:vimwiki_use_mouse = 1
"let g:vimwiki_debug = 1
let g:vimwiki_list = [
                    \{
                    \ 'path': $VIMWIKIDIR.'/mkd',
                    \ 'path_html': $VIMWIKIDIR.'/mkd2html/',
                    \ 'syntax': 'markdown', 
                    \ 'ext': '.mkd',
                    \ 'list_margin': 3,
                    \ 'diary_link_fmt': '%m-%d',
                    \ 'jobdy_link_fmt': '%Y_%m_%d_jobdy',
                    \ 'diary_rel_path': 'diary/',
                    \},
                    \{
                    \ 'path': $VIMWIKIDIR.'/wiki/',
                    \ 'path_html': $VIMWIKIDIR.'/html/',
                    \ 'template_path': $VIMWIKIDIR.'/templates/',
                    \ 'template_default': 'default',
                    \ 'template_ext': '.tpl',
                    \ 'syntax': 'default',
                    \ 'diary_header': '我的DIARY',
                    \ 'diary_link_fmt': '%m-%d',
                    \ 'css_name': 'css/style.css',
                    \ 'nested_syntaxes': {'python': 'python', 'c++': 'cpp', 'bash': 'bash','perl': 'perl'},
                    \ 'diary_rel_path': 'diary/',
                    \},
                    \]
let g:vimwiki_hl_headers = 1
let g:vimwiki_menu = ''
hi VimwikiHeader1 guifg=#FF0000
hi VimwikiHeader2 guifg=#00FF00
hi VimwikiHeader3 guifg=#0000FF
hi VimwikiHeader4 guifg=#FF00FF
hi VimwikiHeader5 guifg=#00FFFF
hi VimwikiHeader6 guifg=#FFFF00
"let vimwiki_folding='syntax'
"let vimwiki_folding='expr'
""let g:vimwiki_valid_html_tags='b,i,s,u,sub,sup,kbd,br,hr,div,del,code,red,cente,pre'

",n,d,新建日记
map <Leader>n<leader>d <leader>ww<leader>wi<leader>w<leader>w<leader>w<leader>n
"todo list
map gl[ gl-<Plug>VimwikiToggleListItem
"切换todo list
map glx <esc>gxx<Plug>VimwikiToggleListItem<esc>$a<C-r>=GetDateStamp3()<cr><esc>:w<cr>
map dtd <esc>:s/  \*@.*//<esc>gxx<Plug>VimwikiToggleListItem<esc>$a<C-r>=GetDateStamp3()<cr><esc>:w<cr>
map gld <Plug>VimwikiToggleListItem<esc>:w<cr>
"增加markdown格式删除线，用在todo list中
map gxx <esc>0f]la~~<esc>$a~~<esc>:w<cr>
"删除markdown删除线
map gdx <esc>:s/\~\~//g<cr>:w<cr>
"标题加编号"
let g:vimwiki_html_header_numbering = 0
"单行中的换行令起一段"
let g:vimwiki_list_ignore_newline = 0
"禁止驼峰字TuoFeng中样的首字大写的字"
let g:vimwiki_camel_case = 0
let g:vimwiki_use_calendar= 1
nmap <leader>waa :VimwikiAll2HTML<CR>
",tt
nmap <leader>tt <Esc>:VimwikiTable 2 2<CR>ja
",tc
nmap <leader>tc <Esc>:%s/\|--/\|:-/g<CR>:%s/--\|/-:\|/g<CR>
autocmd filetype vimwiki inoremap <buffer> <silent> <CR> <C-R>=VimwikiCR()<CR><C-R>=AutoPairsReturn()<CR> 

",t,d
nmap <silent><leader>t<leader>d ggdG:Mytodo D<CR>ggdd:w<CR>
nmap <silent><leader>t<leader>a ggdG:Mytodo A<CR>ggdd:w<CR>
",j,d
nmap <silent><leader>j<leader>d ggdG:Myjobdiary<CR>ggdd:w<CR>
"nmap <silent><leader>t<leader>d :source $VIM\vimfiles\plugin\mytodo.vim<CR>ggdG:Mytodo<CR>ggdd:w<CR>
"nmap <silent><leader>j<leader>d :source $VIM\vimfiles\plugin\mytodo.vim<CR>ggdG:Myjobdiary<CR>ggdd:w<CR>

"for timestamp
",dl delay标志
map <leader>dl <Plug>VimwikiToggleListItem<esc>$a *@delay*<esc>FXrO:w<CR>
",go on标志
map <leader>go <Plug>VimwikiToggleListItem<esc>$a *@go on*<esc>FXrO:w<CR>
",ti 日期
nmap <leader>ti 0i<C-r>=GetDateStamp2()<cr>
func! GetDateStamp2()
return strftime('%X')
endfunction
",da 日期
nmap <leader>da 0a<C-r>=GetDateStamp1()<cr><esc>ooo
imap <leader>da <esc>0a<C-r>=GetDateStamp1()<cr><esc>ooo
func! GetDateStamp1()
return strftime('# %Y-%m-%d')
endfunction
",dt 插入日期标记，于某年某月某日
imap <leader>dt <C-r>=GetDateStamp()<cr>
nmap <leader>dt $a<C-r>=GetDateStamp()<cr>
func! GetDateStamp()
return strftime('*于%Y年%m月%d日*')
endfunction
"日记的日期标题-自动调用
func! GetDateForDiary()
return strftime('# %m-%d')
endfunction
",dn 添加done标记
nmap <leader>dn <esc>$a<C-r>=GetDateStamp3()<cr>
func! GetDateStamp3()
return strftime('      @done* at *%Y/%m/%d/%X')
endfunction
",jd插入工作日志标题
nmap <leader>jd o<C-r>=GetJobDiaryTitle()<cr><esc>F[a
func! GetJobDiaryTitle()
return strftime('[](%Y_%m_%d_jobdy.html) %Y/%m/%d %X')
endfunction
"日记中插入年和星期
func! GetYearWeek()
return strftime('## %Y %a')
"return strftime('==%Y %a==')
endfunction
let g:EclimBuffersDefaultAction = 'edit'
" Copy from vimwiki.vim s:CR function for CR remapping
function! VimwikiCR()
    let res = vimwiki#lst#kbd_cr()
    if res == "\<CR>" && g:vimwiki_table_mappings
        let res = vimwiki#tbl#kbd_cr()
    endif
    return res
endfunction
"end vimwiki

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
nmap <silent> <leader>sb <Plug>SelectBuf

nmap <Up> <C-W>+
nmap <Down> <C-W>-
nmap <Right>  <C-w>>
nmap <Left>  <C-w><
"""""""""""""""""""""""""""""""""""""""""""""""
"buffer
nmap <A-u>  :bn<CR>
nmap <A-d>  :bp<CR>
"zz 删除buffer
nmap <silent>zz :bd<CR>

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"插入模式在行尾添加分号;
inoremap ;; <ESC>A;<CR>
imap jj <ESC>:w<CR>o

nnoremap ; :
inoremap <S-SPACE> <ESC>la
inoremap <S-CR> <c-r>=SkipPair()<CR>
function! SkipPair()
   if getline('.')[col('.') - 1] == ')'
      return "\<ESC>o"
   else
      normal j
      let curline = line('.')
      let nxtline = curline
      while curline == nxtline
         if getline('.')[col('.') - 1] == '}'
            normal j
            let nxtline = nxtline + 1
            let curline = line('.')
            continue
         else
            return "\<ESC>i"
         endif
        
      endwhile
      return "\<ESC>o"
   endif
endf

""""""""""""""""""""""""""""""""""""""
"for calendar.vim"
map <leader>ca :Calendar<cr>
"""""""""""""""""""""""""""""""""""""""
"for netrw
",v
map <leader>v :Vexplore<CR><C-w>= "垂直分割打开目录"
",e
map <leader>e :Explore<CR>  "打开目录"
",r
map <leader>r :Rexplore<CR>   "回到浏览器"
let g:netrw_liststyle= 1 "list"
let g:netrw_altv= 1 "open to right"
"let g:netrw_liststyle= 2 "宽形"
"let g:netrw_liststyle= 3 "树形"
"let g:netrw_liststyle= 4 "normal"

"""""""""""""""""""""""""""""""""""""""""""

"""""""""""""""""""""""""""""""""""""""""""""""
function! InsertIncludeFileN()
    let sourcefilename=expand("%:t")
    let outfilename=substitute(sourcefilename,'\(\.[^.]*\)$','.h','g')
    call setline('.','#include "'.outfilename.'"')
endfunction

"""""""""""""""""""""""""""""""""""""""""""
function! InsertHeadDef(firstLine, lastLine)
    if a:firstLine <1 || a:lastLine> line('$')
        echoerr 'InsertHeadDef : Range overflow !(FirstLine:'.a:firstLine.';LastLine:'.a:lastLine.';ValidRange:1~'.line('$').')'
        return ''
    endif
    let sourcefilename=expand("%:t")
    let definename=substitute(sourcefilename,' ','','g')
    let definename=substitute(definename,'\.','_','g')
    let definename = toupper(definename)
    exe 'normal '.a:firstLine.'GO'
    call setline('.', '#ifndef _'.definename."_")
    normal ==o
    call setline('.', '#define _'.definename."_")
    normal ==o
    exe 'normal =='.(a:lastLine-a:firstLine+1).'jo'
    call setline('.', '#endif')
    let goLn = a:firstLine+2
    exe 'normal =='.goLn.'G'
endfunction
function! InsertHeadDefN()
    let firstLine = 1
    let lastLine = line('$')
    let n=1
    while n < 20
        let line = getline(n)
        if n==1 
            if line =~ '^\/\*.*$'
                let n = n + 1
                continue
            else
                break
            endif
        endif
        if line =~ '^.*\*\/$'
            let firstLine = n+1
            break
        else
            let n=n+1
            continue
        endif
        "if line =~ '^\/\/\/.*$' || line =~ '^$'
        "    let n=n+1
        "    continue
        "else
        "    let firstLine = n
        "    break 
        "endif
    endwhile
    call InsertHeadDef(firstLine, lastLine)
endfunction
function! SetInclude()
    if expand("%:e") == "h" || expand("%:e") == "hpp"
        call InsertHeadDefN()
    endif
    if expand("%:e") == "pc" || expand("%:e") == "cpp" || expand("%:e") == "cxx" || expand("%:e") == "c"
        call InsertIncludeFileN()
    endif
endfunction
",hh
nmap <silent><leader>hh :call SetInclude()<CR>
autocmd BufNewFile *.cpp,*.[ch] exec ":call ProcessHeader()" 
function! ProcessHeader()
    "加入文件头部"
    normal ,dh
    normal G
    "加入include文件"
    normal ,hh
endfunction


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"ctrlp
let g:ctrlp_map = ',,'
let g:ctrlp_working_path_mode = 'ra'

set wildignore+=*/tmp/*,*.so,*.swp,*.zip
let g:ctrlp_custom_ignore = {
  \ 'dir':  '\v[\/]\.(git)$',
  \ 'file': '\v\.(log|jpg|png|jpeg)$',
  \ }


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"gundo
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"for surround
"给行添加/**/
map <leader>cc <esc>yss*yss/:w<CR>
"删除行的/**/
map <leader>dc <esc>^2x$xx:w<CR>

",wr windows换行符转成unix
nmap <leader>wr <esc>:%s///g<CR>:w<cr>
"转成cp936编码
nmap <leader>tw <esc>:set fenc=cp936<CR>:set ff=dos<cr>:w<CR>
nmap <leader>tu <esc>:set fenc=utf-8<cr>:set ff=unix<CR>:set nobomb<cr>:w<CR>
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"for markdown
"插入图片,mi
map <leader>mi :r $FVWDIR/MarkdownImage.tpl<CR>j12la
imap <leader>mi <esc>:r $FVWDIR/MarkdownImage.tpl<CR>j12la
"将网址改成链接，url,mu
nmap <Leader>mu ^ysW(lxf)hx%i[
"将word改成链接,ml
nmap <Leader>ml ysiw[lxf]hxhyiwf]a(<esc>pa.html<esc>
"将vimwiki链接改成markdown链接,rl
"插入gold表格
map <Leader>g<Leader>d <Esc>:r $FVWDIR/GoldDiary.tpl<CR>
nmap <Leader>rl f]+ds[ysiw(lxf)hxi.html<esc>:w<cr><tab>
"插入日记模板,w,n
map <Leader>w<Leader>n <Esc>ggdd:r $FVWDIR\MarkdownDiary.tpl<CR>jo<C-R>=GetYearWeek()<cr><ESC>o<esc>ggi<c-r>=GetDateForDiary()<cr><esc>o<esc>6j<esc>,jd<esc>gl82la
"创建日记主页的链接,wdl
nmap <silent> <Leader>wdl <Plug>VimwikiDiaryGenerateLinks:%s/\[\[/\[/g<CR>:%s/\.html\|/\](/g<CR>:%s/\]\]/.html)/g<cr>:%s/ \*/*/g<cr>ggddO<!---<leader>wdl更新本页---><esc>:w<cr>:noh<cr>
"nmap <silent> <Leader>wdl <Plug>VimwikiDiaryGenerateLinks:%s/\[\[/\[/g<CR>:%s/\.html\|/\](/g<CR>:%s/\]\]/.html)/g<cr>:%s/ \*/*/g<cr>gg3ddO<!---<leader>wdl更新本页---><esc>oooooo:w<cr>:noh<cr>
"
set nobomb
"autocmd BufNewFile *.mkd  exec "call setline(1,'---------------')"

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"for slimv
let g:slimv_swank_cmd = '! xterm -e sbcl --load /usr/share/common-lisp/source/slime/start-swank.lisp &'
"将调试buffer放在下方
let g:slimv_repl_split = 2
"为了避免快捷键的冲突
let g:slimv_leader = ",l"
autocmd! BufRead,BufNewFile *.lisp let g:AutoPairs = {'(':')', '[':']', '{':'}','"':'"', '`':'`'}

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"for wuziqi
map <leader>wz :r $FVDIR/qp.wzq<CR>8j23l
imap <leader>wz <esc>:r $FVDIR/qp.wzq<CR>8j23l
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"for search
vnoremap <silent> * :<C-U>
    \let old_reg=getreg('"')<Bar>let old_regtype=getregtype('"')<CR>
    \gvy/<C-R><C-R>=substitute(
    \escape(@", '/\.*$^~['), '\_s\+', '\\_s\\+', 'g')<CR><CR>
    \gV:call setreg('"', old_reg, old_regtype)<CR>

vnoremap <silent> # :<C-U>
    \let old_reg=getreg('"')<Bar>let old_regtype=getregtype('"')<CR>
    \gvy?<C-R><C-R>=substitute(
    \escape(@", '?\.*$^~['), '\_s\+', '\\_s\\+', 'g')<CR><CR>
    \gV:call setreg('"', old_reg, old_regtype)<CR>
