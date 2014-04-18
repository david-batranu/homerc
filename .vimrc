"call pathogen#infect()

" start Vundle init

set nocompatible
filetype off
set rtp+=~/.vim/bundle/vundle/
call vundle#rc()


Bundle 'kien/ctrlp.vim'
Bundle 'scrooloose/syntastic'
Bundle 'vim-scripts/AutoComplPop'
Bundle 'Yggdroot/indentLine'
Bundle 'groenewege/vim-less'
Bundle 'Lokaltog/vim-powerline'
Bundle 'amiorin/vim-project'
Bundle 'zeis/vim-kolor'
"Bundle 'Valloric/YouCompleteMe'

" end Vundle init


set completeopt=menu,menuone


filetype on
filetype plugin on
filetype plugin indent on
syntax on
set background=dark
"set background=light
"colorscheme colorful
"colorscheme kolor
"colorscheme beauty256
"colorscheme tutticolori
"colorscheme blackboard
"colorscheme rdark
"colorscheme wombat
"colorscheme espresso
"colorscheme solarized
"colorscheme zenburn
"colorscheme github
"colorscheme slate
"colorscheme codeschool
colorscheme grb256
set hls
set nu
set hid
set wildmenu
set ruler
set showmatch
set backspace=eol,start,indent
set whichwrap+=<,>,h,l
set nolazyredraw
set smartindent
set autoindent
set smarttab
set expandtab
set tabstop=4
set softtabstop=4
set shiftwidth=4
set incsearch
set encoding=utf-8
set fileencoding=utf-8
set clipboard=unnamedplus

set nocompatible
let g:Powerline_symbols = 'fancy'
let g:indentLine_char = '┊'

" powerline fix (probably for buffer stuff)
set laststatus=2
" 256 color support
set t_Co=256

nnoremap ; :
nnoremap t :CtrlP $pwd<CR>
nnoremap T :CtrlPBuffer<CR>
nnoremap <C-]> :execute 'tj' expand('<cword>')<CR>zv

set wildmenu
set wildmode=list:longest,full
set mouse=a

" disable backup and swap
set nobackup
set nowb
set noswapfile

"set guifont=Droid\ Sans\ Mono\ 11
"set guifont=Monaco\ 10
set guifont=Consolas\ 14
set guifont=M+\ 1mn\ 12,light\ 12
"set guifont=Inconsolata\ 12
"set guifont=Anka/Coder\ Narrow\ 10
"set guifont=Anka/Coder\ 10
"set guifont=Consolas\ 10
"set guifont=Terminus\ 11
"set guifont=Terminus\ 9
"set guifont=Ubuntu\ Mono\ 12
"set guifont=Terminus\ 10
"set guifont=Menlo\ for\ Powerline\ 10
"set guifont=Mutex\ 10
"set guifont=Pointfree\ 10
"set guifont=GohuFont\ 10


set tags+=./tags;$HOME

au BufRead,BufNewFile jquery.*.js set ft=javascript syntax=jquery
au BufRead,BufNewFile *.json set ft=javascript syntax=javascript
au BufRead,BufNewFile *.zcml set ft=xml syntax=xml
au BufRead,BufNewFile *.pt,*.zpt set ft=xhtml syntax=xhtml
au BufRead,BufNewFile *.vpy set ft=python syntax=python


let Tlist_Use_Right_Window = 1

map <F2> s<span lang="en" class="multilang">
map <F3> s<span lang="fr" class="multilang">
map <F4> s<span lang="es" class="multilang">
"map <F5> :set filetype=htmldjango<CR>
map <F6> oimport pdb; pdb.set_trace()<ESC>
map <s-F6> oimport rpdb2; rpdb2.start_embedded_debugger("000123")<ESC>
map <F8> :Bclose<CR>
map <F9> :NERDTreeToggle<CR>
map <F10> \be
"map <F11> :!ctags -R -f ./tags `python -c "from distutils.sysconfig import get_python_lib; print get_python_lib()"`<CR>


autocmd FileType python set omnifunc=pythoncomplete#Complete
autocmd FileType javascript set omnifunc=javascriptcomplete#CompleteJS
autocmd FileType javascript setlocal ts=2 sts=2 sw=2
autocmd FileType rst setlocal ts=2 sts=2 sw=2
autocmd FileType html set omnifunc=htmlcomplete#CompleteTags
autocmd FileType html setlocal ts=2 sts=2 sw=2
autocmd FileType css set omnifunc=csscomplete#CompleteCSS
autocmd FileType xml setlocal ts=2 sts=2 sw=2



" save registers
set viminfo=%,'50,\"100,n~/.viminfo

""let g:miniBufExplMapWindowNavVim = 1
""let g:miniBufExplMapWindowNavArrows = 1
""let g:miniBufExplMapCTabSwitchBufs = 1
""let g:miniBufExplModSelTarget = 1



"buftabs
noremap <f1> :bprev<CR>
noremap <f2> :bnext<CR>


" Strip trailing whitespace
function! <SID>StripTrailingWhitespaces()
    " Preparation: save last search, and cursor position.
    let _s=@/
    let l = line(".")
    let c = col(".")
    " Do the business:
    %s/\s\+$//e
    " Clean up: restore previous search history, and cursor position
    let @/=_s
    call cursor(l, c)
endfunction
autocmd BufWritePre * :call <SID>StripTrailingWhitespaces()



python << EOF
import os
import sys
import vim
for p in sys.path:
    if os.path.isdir(p):
        vim.command(r"set path+=%s" % (p.replace(" ", r"\ ")))
# for the omelette zc.buildout recipe
if os.path.isdir('parts/omelette'):
    vim.command(r"set path+=%s" % 'parts/omelette')
EOF

command! -nargs=? Filter let @a='' | execute 'g/<args>/y A' | new | setlocal bt=nofile | put! a
