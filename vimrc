"#++++++<<<<<<<MADE BY BONREM>>>>>>
"infect with pathogen for plugins
execute pathogen#infect()

""+++>>>>>>appearance and utilities 
set nocompatible
set nu
syntax on
set mouse=a
set t_Co=256
set ttyfast
set hidden

set pastetoggle=<F2> ""for large texts 
set nobackup  "" use modern methods to prevent data loss, will you!
set noswapfile
set history=1000         " remember more commands and search history
set undolevels=1000      " number  of undo levels 
set nowrap        " don't wrap lines
set tabstop=4     " a tab is four spaces
set backspace=indent,eol,start 
							" allow backspacing over everything in insert mode
set autoindent    " always set autoindenting on
set copyindent    " copy the previous indentation on autoindenting
set number        " always show line numbers
set shiftwidth=4  " number of spaces to use for autoindenting
set shiftround    " use multiple of shiftwidth when indenting with '<' and '>'
set showmatch     " set show matching parenthesis
set ignorecase    " ignore case when searching
set smartcase     " ignore case if search pattern is all lowercase,
                    "    case-sensitive otherwise
set smarttab      " insert tabs on the start of a line according to
                    "    shiftwidth, not tabstop
set hlsearch      " highlight search terms
set incsearch     " show search matches as you type
set tabpagemax=15 " max number of tabs 
set showtabline=2 
"set spell
"""""cursor to previous position
	augroup resCur 
		autocmd!
		autocmd BufReadPost * call setpos(".",getpos("'\""))
	augroup END
  """"""PLUGINS
"""indent on 
"++++++++++++++<<<<Plugin management >>>>>>
    """""nerdtree
let NERDTreeIgnore = ['\.pyc$','\.mp3$','\.mp4$','\.beam$','\.o$','\.pdf$','\.exe$','\.gz','\.tar','\.rar'] 
let NERDTreeQuitOnOpen = 1  "closes  nerd tree after file open 
let NERDTreeAutoDeleteBuffer = 1
let NERDTreeMinimalUI = 0
let NERDTreeDirArrows = 0   
"++++++++++++<<< KEY MAPPING >>>>
let mapleader="`"
" Easy window navigation
map <leader><left> <C-w>h 
map <leader><down> <C-w>j
map <leader><up> <C-w>k 
map <leader><right> <C-w>l 
"mapping for plugins below 
"<silent> here prevents verbose 
nnoremap <leader>w :w<CR>  
inoremap <leader>w <c-o>:w<CR>
nmap <leader>q 	   :qa!<CR>
""Tag_list
nnoremap <silent><leader>l :TlistToggle<CR>
let Tlist_Compact_Format = 1 
let Tlist_GainFocus_On_ToggleOpen = 1 
let Tlist_Close_On_Select = 1   
	""end tag_list
nnoremap <silent><F4>  :NERDTreeToggle<CR> 
nnoremap <silent><leader>g :GitGutterToggle<CR> 
nmap <silent> <leader>/ :nohlsearch<CR>
nmap <silent><leader>s  :split<CR>
nmap <silent><leader>v  :vsplit<CR>
"nmap <silent><leader>t  :tabnew<CR>
"nmap <silent><s-a> 		:tabnext<CR>
"nmap <silent><s-b> 	:tabprev<CR>
