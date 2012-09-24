set nocompatible               " be iMproved
filetype off                   " required!

set rtp+=~/.vim/bundle/vundle/
call vundle#rc()

" let Vundle manage Vundle
" required! 
Bundle 'gmarik/vundle'

"自定义插件
Bundle "Shougo/neocomplcache"
""NerdTree
Bundle "scrooloose/nerdtree"
""NerdCommenter
Bundle "scrooloose/nerdcommenter"
""Sudo plugin
Bundle "sudo.vim"
""Session manager
"Bundle "sessionman.vim"
""erlang
Bundle "oscarh/vimerl"
Bundle "aerosol/vim-erlang-skeletons"
""L9 library
Bundle "vim-scripts/L9"
""easy-motion
"Bundle "Lokaltog/vim-easymotion"
""Status bar
Bundle "Lokaltog/vim-powerline"
""Markdown
Bundle "plasticboy/vim-markdown"
""Better number control
Bundle "myusuf3/numbers.vim"
""Highlighting css color
Bundle "skammer/vim-css-color"
""Golang
Bundle "jnwhiteh/vim-golang"
Bundle "nsf/gocode", {'rtp': 'vim/'}
""vimtips plugin
Bundle "vim-scripts/Fortune-vimtips"
"Bundle "vim-scripts/vim-pad"
""indent manually
Bundle "godlygeek/tabular"
""visual undo plugin
Bundle "sjl/gundo.vim"
""powerfull finder
Bundle "FuzzyFinder"
""project plugin
Bundle "project.tar.gz"
"snippet
Bundle "SirVer/ultisnips"
"vimwiki
Bundle "vim-scripts/vimwiki"
"html fast coding
Bundle "mattn/zencoding-vim"
"gist.github.com
Bundle "mattn/webapi-vim"
Bundle "mattn/gist-vim"
""git
Bundle "tpope/vim-fugitive"
""indent object
Bundle "michaeljsmith/vim-indent-object"
"yankring
Bundle "vim-scripts/YankRing.vim"
"text object for argument
Bundle "argtextobj.vim"
""auto-complete for quote
Bundle "Raimondi/delimitMate"
""CamelCaseMotion
Bundle "bkad/CamelCaseMotion"
""Gold ratio
"Bundle "roman/golden-ratio"
""Snippets
"Bundle "MarcWeber/vim-addon-mw-utils"
"Bundle "tomtom/tlib_vim"
"Bundle "honza/snipmate-snippets"
"Bundle "garbas/vim-snipmate"
""SuperTab
"Bundle "ervandew/supertab"
""vimfiler, let you manage file in vim
Bundle "Shougo/unite.vim"
Bundle "Shougo/vimfiler"
""outline
Bundle "h1mesuke/unite-outline"
""Indent guide
Bundle "mutewinter/vim-indent-guides"
""unimpaired
Bundle "tpope/vim-unimpaired"
""search and substitute
Bundle "tpope/vim-abolish"
""text object for column
Bundle "coderifous/textobj-word-column.vim"
""surround
Bundle "tpope/vim-surround"
""Align
Bundle "tsaleh/vim-align"
""syntastic
Bundle "scrooloose/syntastic"
""zoomwin
Bundle "ZoomWin"
""Command-T
" Install ruby-dev first !important
" Then go to Command-T/ruby/command-t/, run: ruby extconf.rb && make
Bundle "wincent/Command-T"
""Match Tag
Bundle "gregsexton/MatchTag"
""tagbar
Bundle "majutsushi/tagbar"
""Jslint
""sudo apt-get install node.js first
Bundle "hallettj/jslint.vim"
""Highlight multi words in different colors
Bundle "Mark--Karkat"
""Multi search
Bundle "multisearch.vim"
""Conque execute external program
"Bundle "Conque-Shell"
""haml
Bundle "tpope/vim-haml"
""Narrow region
Bundle "chrisbra/NrrwRgn"
""taglist
Bundle "taglist.vim"
""Colorscheme
Bundle "vim-scripts/xoria256.vim"
Bundle "altercation/vim-colors-solarized"
Bundle "Lucius"
Bundle "tomasr/molokai"
Bundle "pyte"
Bundle "Zenburn"
Bundle "oceandeep"
Bundle "Ambient-Color-Scheme"
Bundle "Liquid-Carbon"
Bundle "rslate"
Bundle "tpope/vim-vividchalk"
Bundle "wgibbs/vim-irblack"
Bundle "chriskempson/tomorrow-theme", {'rtp': 'vim/'}
Bundle "sjl/badwolf"

"SuperTab config
"let g:SuperTabRetainCompletionType=2
"let g:SuperTabDefaultCompletionType="context"
"let g:SuperTabMappingForward = '<nul>'
"let g:SuperTabMappingBackward = '<s-nul>'
"let g:SuperTabMappingForward = '<c-space>'
"let g:SuperTabMappingBackward = '<s-c-space>'
"let g:SuperTabMappingForward="<c-Tab>" 
"let g:SuperTabMappingBackward="<s-c-Tab>"

filetype plugin indent on     " required!

if has('gui_running')
    set background=light
else
    set background=dark
endif
colorscheme solarized

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
set listchars=tab:»-,nbsp:¬,trail:█,extends:»,precedes:«
set whichwrap+=<,>
set showcmd
set showmode
set wildmenu
set t_Co=256
"let g:pad_dir="/home/fisher/notepad"

"自动进入上次退出时候的光标位置
autocmd BufReadPost *
                    \ if line("'\"") > 1 && line("'\"") <= line("$") |
                    \ exe "normal! g`\"" |
                    \ endif
autocmd BufEnter * lcd %:p:h

" key mapping
let mapleader=','
let maplocalleader=','

"wiki
nmap <Leader>wk <Plug>VimwikiTabIndex

"gist
let g:gist_detect_filetype = 1
"let g:gist_open_browser_after_post = 1
"let g:gist_browser_command = 'chromium-browser %URL%'
let g:gist_post_private = 1
let g:gist_get_multiplefile = 1

"Fast editing of the .vimrc file
noremap <leader>rc :tabe $MYVIMRC<CR>

"Tabular setting
noremap <leader>, :Tabularize /,<CR>
noremap <leader>,= :Tabularize /,/r1c1l0<CR>
noremap <leader>= :Tabularize /=<CR>
noremap <leader>== :Tabularize /=/r1c1l0<CR>
noremap <leader>; :Tabularize /;<CR>
noremap <leader>;= :Tabularize /;/r1c1l0<CR>

"gundo
nnoremap <silent> <F4> :GundoToggle<CR>

"yankring
nnoremap <silent> <F9> :YRShow<CR>

"taglist
nnoremap <silent> <F8> :TlistToggle<CR>
let Tlist_Use_Right_Window = 1

"Narrow region设置
let g:nrrw_topbot_leftright = 'botright'

"Tagbar设置
nnoremap <silent> <F7> :TagbarToggle<CR>

"Command-T setting
nnoremap <silent> <Leader>t :CommandT<CR>
nnoremap <silent> <Leader>f :CommandTBuffer<CR>


imap <C-f> <Right>
imap <C-b> <Left>
map <S-CR> O<ESC>
map <CR> o<ESC>
"autocmd FileType qf noremap <buffer> <CR> <CR>

nmap <Tab> gt
nmap \ gT

"imap "" ""<LEFT>
"imap '' ''<LEFT>
"imap <> <><LEFT>
"imap () ()<LEFT>
"imap {} {}<LEFT>
"imap [] []<LEFT>
"cmap "" ""<LEFT>
"cmap '' ''<LEFT>
"cmap <> <><LEFT>
"cmap () ()<LEFT>
"cmap {} {}<LEFT>
"cmap [] []<LEFT>

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

"indent guide设置
let g:indent_guides_start_level = 2
let g:indent_guides_guide_size = 1

"Vimerl设置
set tags+=/usr/local/lib/erlang/tags
"let erlang_man_path="/usr/local/lib/erlang/man/" "This is for jimenezrick/vimerl
let g:erlangManPath="/usr/local/lib/erlang/man/"

""Golden ratio设置
"nnoremap <leader>g :GoldenRatioResize<CR>

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

"set guifont=DejaVu\ Sans\ Mono\ for\ Powerline\ 10
let g:Powerline_symbols = 'fancy'

command W w !sudo tee % > /dev/null

let g:UltiSnipsExpandTrigger="<tab>"
let g:UltiSnipsJumpForwardTrigger="<tab>"
let g:UltiSnipsJumpBackwardTrigger="<s-tab>"
