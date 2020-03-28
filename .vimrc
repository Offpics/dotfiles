
 " Call the .vimrc.plug file
 if filereadable(expand("~/.vimrc.plug"))
     source ~/.vimrc.plug
 endif

syntax on

set number

:map <F2> :NERDTreeToggle<CR>
:map <C-p> :Files<CR>
