set nocompatible               " be iMproved
filetype off                   " required!

set rtp+=~/.vim/bundle/vundle/
call vundle#rc()

" let Vundle manage Vundle
" required! 
Bundle 'gmarik/vundle'

"自定义插件
"Bundle "altercation/vim-colors-solarized"
Bundle "Shougo/neocomplcache"
Bundle "scrooloose/nerdtree"
Bundle "oscarh/vimerl"
Bundle "vim-scripts/L9"
Bundle "Lokaltog/vim-easymotion"
Bundle "Lokaltog/vim-powerline"
Bundle "jnwhiteh/vim-golang"
Bundle "nsf/gocode", {'rtp': 'vim/'}
Bundle "vim-scripts/Fortune-vimtips"
Bundle "vim-scripts/vim-pad"
Bundle "FuzzyFinder"
Bundle "project.tar.gz"


filetype plugin indent on     " required!

"if has('gui_running')
"    set background=light
"else
"    set background=dark
"endif

"colorscheme solarized
set winaltkeys=no
set nobackup
set ignorecase
set smartcase
set laststatus=2
set shiftwidth=4
set tabstop=4
set softtabstop=4
set expandtab
set autoindent
set smartindent
set hlsearch
set incsearch
set noshowmatch "输入括号时候会跳转到匹配的括号一定时间
set scrolloff=3
"set scrolljump=4
set cursorline "当前行高亮，如果需要列高亮的话，使用 cursorcolumn
set number "设置行号
set ruler
"set foldenable  "开始折叠
set list
"set listchars=tab:»-,trail:-,extends:»,precedes:«,nbsp:%
set listchars=tab:»-
set whichwrap+=<,>
let g:pad_dir="/home/fisher/notepad"

"自动进入上次退出时候的光标位置
autocmd BufReadPost *
                    \ if line("'\"") > 1 && line("'\"") <= line("$") |
                    \ exe "normal! g`\"" |
                    \ endif
autocmd BufEnter * lcd %:p:h

" key mapping
let mapleader=','
let maplocalleader=','

"Fast editing of the .vimrc file
noremap <leader>rc :tabe $MYVIMRC<CR>

imap <C-f> <Right>
imap <C-b> <Left>
map <S-CR> O<ESC>
map <CR> o<ESC>
"autocmd FileType qf noremap <buffer> <CR> <CR>

nmap <Tab> gt
nmap \ gT

imap "" ""<LEFT>
imap '' ''<LEFT>
imap <> <><LEFT>
imap () ()<LEFT>
imap {} {}<LEFT>
imap [] []<LEFT>
cmap "" ""<LEFT>
cmap '' ''<LEFT>
cmap <> <><LEFT>
cmap () ()<LEFT>
cmap {} {}<LEFT>
cmap [] []<LEFT>

"cancel search highlight
nnoremap <leader><CR> :noh<CR>

"to line start and end
nnoremap gh ^
vnoremap gh ^
nnoremap gl $
vnoremap gl $
nnoremap <leader>ff :FufFile<CR>
nnoremap <leader>fb :FufBuffer<CR>
nnoremap <leader>ft :FufTag<CR>
nnoremap <leader>fj :FufJumpList<CR>

"quick search
"nnoremap // /^[\s\t]*
"nnoremap <Space>/ /\<\><left><left>

"自动完成设置
set completeopt=longest,menu


"Vimerl设置
set tags+=/usr/local/lib/erlang/tags
"let erlang_man_path="/usr/local/lib/erlang/man/" "This is for jimenezrick/vimerl
let g:erlangManPath="/usr/local/lib/erlang/man/"


"neocomplcache设置
let g:neocomplcache_enable_at_startup=1
let g:neocomplcache_enable_smart_case=1
let g:neocomplcache_enable_auto_select=1

"NerdTree设置
nnoremap <silent> <F5> :NERDTreeToggle<CR>
nnoremap <silent> <Leader>nt :NERDTree<CR>
nnoremap <silent> <Leader>nf :NERDTreeFind<CR>
let NERDTreeWinPos = "right"
let NERDTreeMinimalUI = 1
let NERDTreeWinSize = 38
