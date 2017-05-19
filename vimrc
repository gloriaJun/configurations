set expandtab
set autoindent
set cindent
set smartindent

set ts=4 sw=4 sts=4 smarttab expandtab
set textwidth=79
set history=1000
set ruler
set hls
set backspace=2
set laststatus=2
set tags=$TB_HOME/src/tags
set path+=$TB_HOME/src/**
set bg=dark

"fetched from /usr/share/vim/vim61/macros/vimrc
set term=$TERM
if &term == "screen"
    set term=xterm-color
    set t_ti=
endif

set fileencoding=korea
set visualbell
set matchtime=1
set showmatch
set showcmd
set ts=4

"set foldmethod=marker

"colorscheme koehler

map C I/**/CR>
map X ^xx$xx<CR>

nmap <f2> :make<CR>
nmap <f5> :prev<CR>
nmap <f6> :next<CR>
map <Leader>- :set nocin<CR>:set nosi<CR>:set noai<CR>
map <Leader>+ :set cin<CR>:set si<CR>:set ai<CR>
map <f9> <c-w>+
map <f10> <c-w>-
map <f11> <c-w>=
map <f12> <c-w>_

map <INS> <c-w>s:e ~/template<CR>

function! FoldDoxygenComments()
  normal gg
  while search("/\\*\\*", "W") > 0
    normal mb
    if searchpair("/\\*", "", "\\*/", "W") > 0
      :'b,.fold
    endif
  endwhile
endfunction

function! FoldFunctionBodies()
  call FoldDoxygenComments()
  normal gg
  while search("^{", "W") > 0
    normal mb
    if searchpair("{", "", "}", "W") > 0
      :'b,.fold
    endif
  endwhile
endfunction

command! -nargs=0 F call FoldFunctionBodies()

ab /*= /*=========================
ab =*/ =========================*/

if has("syntax")
     syntax on
endif

hi comment ctermfg=DarkCyan
hi preproc ctermfg=Brown
hi tbAssert ctermfg=DarkGray
hi tbType ctermfg=DarkGreen

