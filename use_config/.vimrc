" Base setting
syntax enable
syntax on
filetype plugin indent on
set nu
filetype on
set tabstop=4
set shiftwidth=4
set softtabstop=4
set textwidth=79
"set colorcolumn=80
set expandtab
set history=1000
set autoindent
set cindent
set smartindent
set nobackup
set showcmd
set ruler
set cursorline
set laststatus=2
let mapleader=","
nmap <leader>w :wa<CR>
nmap <Leader>q :<ECS>
nmap <Leader>WQ :wa<CR>:q<CR>
nmap <Leader>Q :qa!<CR>
set wildmenu
set cursorline
set nohlsearch
set sidescroll=5
set listchars+=precedes:<,extends:>
set rnu
set foldmethod=indent
set nofoldenable
set scrolljump=5
set scrolloff=3

set tags+=~/Workspace/blog/tags

" wrap setting
set nowrap 
" set wrap
" set nolinebreak
" set breakat-=_.
" set showbreak=--> 

"noremap j (v:count==0 ? 'gj':'j')
"noremap k (v:coount==0 ? 'gk':'k')

" Vundle Section
set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

" The following are examples of different formats supported.
" Keep Plugin commands between vundle#begin/end.
" plugin on GitHub repo
" Plugin 'tpope/vim-fugitive'
" plugin from http://vim-scripts.org/vim/scripts.html
" Plugin 'L9'
" Git plugin not hosted on GitHub
" Plugin 'git://git.wincent.com/command-t.git'
" git repos on your local machine (i.e. when working on your own plugin)
" Plugin 'file:///home/gmarik/path/to/plugin'
" The sparkup vim script is in a subdirectory of this repo called vim.
" Pass the path to set the runtimepath properly.
" Plugin 'rstacruz/sparkup', {'rtp': 'vim/'}
" Install L9 and avoid a Naming conflict if you've already installed a
" different version somewhere else.
" Plugin 'ascenator/L9', {'name': 'newL9'}
" pl-flg plugins

Plugin 'hail2u/vim-css3-syntax' " CSS highligh
Plugin 'mattn/emmet-vim' " HTML
Plugin 'pangloss/vim-javascript' " js highligh
Plugin 'ervandew/supertab'
Plugin 'fatih/vim-go' " for GoTo & import
Plugin 'lervag/vimtex'
" Plugin 'vim-latex/vim-latex'
Plugin 'scrooloose/nerdtree'
Plugin 'jiangmiao/auto-pairs'
Plugin 'scrooloose/syntastic'  
Plugin 'vim-airline/vim-airline'
Plugin 'majutsushi/tagbar'
Plugin 'lboulard/cscope'
Plugin 'fholgado/minibufexpl.vim'
Plugin 'a.vim'
Plugin 'grep.vim'
Plugin 'tacahiroy/ctrlp-funky' " function easy move 
Plugin 'Lokaltog/vim-powerline'
Plugin 'kien/ctrlp.vim'
Plugin 'Lokaltog/vim-easymotion'
Plugin 'scrooloose/nerdcommenter'
Plugin 'vim-scripts/TaskList.vim'
Plugin 'vim-scripts/indentpython.vim'
Plugin 'suan/vim-instant-markdown'
Plugin 'SirVer/ultisnips'
Plugin 'honza/vim-snippets' " ultisinps repos
Plugin 'tomasr/molokai'
Plugin 'Valloric/YouCompleteMe'
Plugin 'derekwyatt/vim-protodef'
Plugin 'derekwyatt/vim-fswitch'
Plugin 'rdnetto/YCM-Generator'
Plugin 'godlygeek/tabular'
Plugin 'plasticboy/vim-markdown'
"Plugin 'vim-vdebug/vdebug'

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
" To ignore plugin indent changes, instead use:
filetype plugin on
"
" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
" Vundle Section End

" Solarized theme
syntax enable 
set background=dark
colorscheme solarized

" auto-pairs
au FileType php let b:AutoPairs = AutoPairsDefine({'<?php': '?>','<': '>'})

" NERDTree
let NERDTreeWinSize=15
let NERDTreeIgnore=['\.swp$', '\.class$']
nmap <F3> :NERDTreeToggle<CR>
let NERDTreeShowHidden=1
let NERDTreeMinimalUI=1
let NERDTreeAutoDeleteBuffer=1

" tagbar
nmap <F4> :TagbarToggle<CR>
"let g:tagbar_ctags_bin='ctags'
let g:tagbar_width=30
let g:tagbar_sort=0
" autocmd BufReadPost *.cpp,*.c,*.h,*.hpp,*.cc call tagbar#autoopen()

" cscope
set cscopequickfix=s-,c-,d-,i-,t-,e-
nmap <C-_>s :cs find s <C-R>=expand("<cword>")<CR><CR>
nmap <C-_>g :cs find g <C-R>=expand("<cword>")<CR><CR>
nmap <C-_>c :cs find c <C-R>=expand("<cword>")<CR><CR>
nmap <C-_>t :cs find t <C-R>=expand("<cword>")<CR><CR>
nmap <C-_>e :cs find e <C-R>=expand("<cword>")<CR><CR>
nmap <C-_>f :cs find f <C-R>=expand("<cfile>")<CR><CR>
nmap <C-_>i :cs find i ^<C-R>=expand("<cfile>")<CR>$<CR>
nmap <C-_>d :cs find d <C-R>=expand("<cword>")<CR><CR>

" miniBufExpl
let g:miniBufExplMapWindowNavVim= 1
let g:miniBufExplMapWindowNavArrows=1
map <Leader>bl :MBEToggel<CR>
map <C-Tab> :MBEbn<CR>
map <C-S-Tab> :MBEbp<CR>
" s 上下排列 v 左右排列

" a.vim
nnoremap <silent><F12> :A<CR>
nmap <Leader>sch :AS<CR>

" grep.vim
nnoremap <silent><F9> :Grep<CR>

" TaskList
map <leader>td <Plug>TaskList

" syntasitc
" set statusline+=%#warningmsg#
" set statusline+=%{SyntasticStatuslineFlag()}
" set statusline+=%*

" let g:syntastic_always_populate_loc_list = 1
" let g:syntastic_auto_loc_list = 1
" let g:syntastic_check_on_open = 1
" let g:syntastic_check_on_wq = 0

" ycm
let g:ycm_complete_in_comments=1
let g:ycm_complete_in_strings=1
let g:ycm_collect_indentifiers_form_tags_files=1
let g:ycm_min_num_of_chars_for_completion=1
let g:ycm_cache_omnifunc=0
let g:ycm_cache_indentifiers_with_syntax=1
let g:ycm_global_ycm_extra_conf='~/.vim/.ycm_extra_conf.py'
let g:ycm_confirm_extra_conf=0
let g:ycm_autoclose_preview_window_after_completion=1
let g:EclimFileTypeValidate = 0
let g:sytastic_java_checkers = []
nnoremap <F7> :YcmForceCompileAndDiagnostics<CR>
inoremap <Leader>; <C-x><C-o>
nnoremap <Leader>dc :YcmCompleter GoToDeclaration<CR>
nnoremap <Leader>df :YcmCompleter GoToDefinition<CR>
nnoremap <Leader>in :YcmCompleter GoToInclude<CR>
nnoremap <Leader>go :YcmCompleter GoTo<CR>
nnoremap <Leader>rf :YcmCompleter GoToReferences<CR>
nnoremap <Leader>gt :YcmCompleter GetType<CR>
nnoremap <Leader>fx :YcmCompleter FixIt<CR>
nnoremap <Leader>gd :YcmCompleter GetDoc<CR>
nmap <F10> :YcmDiags<CR>
nnoremap <Leader>ycm :YcmGenerateConfig<CR>

" make YCM compatible with UltiSnips (using supertab)
let g:ycm_key_list_select_completion = ['<C-n>', '<Down>']
let g:ycm_key_list_previous_completion = ['<C-p>', '<Up>']
let g:SuperTabDefaultCompletionType = '<C-n>'

" better key bindings for UltiSnipsExpandTrigger
let g:UltiSnipsExpandTrigger = "<tab>"
let g:UltiSnipsJumpForwardTrigger = "<tab>"
let g:UltiSnipsJumpBackwardTrigger = "<s-tab>"

" pullproto
let g:protodefprotogetter='~/.vim/bundle/vim-protodef/pullproto.pl'
let g:disable_protodef_sorting=1
" <Leader>PP to auto make frame

" easymotion
nmap s <Plug>(easymotion-sn)

" CtrlPFunky  find function in file
nnoremap <Leader>fu :CtrlPFunky<Cr>
" narrow the list down with a word under cursor
nnoremap <Leader>fU :execute 'CtrlPFunky ' . expand('<cword>')<Cr>

" Enable folding
set foldmethod=indent
set foldlevel=99
nnoremap <space> za

" Quickly Run
map <F5> :call CompileRun()<CR>

func! CompileRun()
    exec "w"
    if &filetype == 'c'
        exec '!gcc % -o %<'
        exec 'time ./%<'
    elseif &filetype == 'cpp'
        exec '!gcc % -o %<'
        exec 'time ./%<'
    elseif &filetype == 'java'
        exec '!runjava.py %:p'
    endif
endfunc

map <F6> :call DebugRun()<CR>

func! DebugRun()
    exec "w"
    if &filetype == 'java'
        exec '!debugjava.py %:p'
    endif
endfunc
