"General stuff
syntax on
set nocompatible
filetype off
set pastetoggle=<F2>				"paste mode shortcut
set cursorline cursorcolumn			"crosshair where cursor is
set nobackup nowritebackup noswapfile autoread	"no cruft.
set ruler					"always show ruler in statusline
set noexpandtab					"tabs > spaces.
set textwidth=120 				"deal with it.
set nofoldenable				"folding kills bunnies.
set mouse=a mousemodel=popup			"don't mess with my right click paste.

"Search & complete
set omnifunc=syntaxcomplete#Complete
set wildmenu
set wildmode=list:longest
set incsearch ignorecase smartcase hlsearch

"Colors
set t_Co=256
set colorcolumn=80				"hilight at 80 col
let &colorcolumn="80,".join(range(120,999),",")	"hilight harder at 120 col
colorscheme mustang

"Hilight trailing spaces
set list
set listchars=tab:\ \ ,trail:.

"Open file @ last position
if has("autocmd")
  au BufReadPost * if line("'\"") > 1 && line("'\"") <= line("$") | exe "normal! g'\"" | endif
endif

"Vundle plugin manager
set rtp+=~/.vim/bundle/vundle/
call vundle#rc()

Plugin 'gmarik/vundle'
Plugin 'Lokaltog/vim-easymotion'	"Easier search
Plugin 'ctrlp.vim'			"ctrlp <files in path>
Plugin 'taglist-plus'			"ctags
Plugin 'matchit.zip'			"matches more with %
Plugin 'snipMate'			"autoprecomplete code snippets
Plugin 'Syntastic'			"show more syntax errors inline
Plugin 'gnupg'				"auto enc/dec gpg files
" RST editor thing (can't inline comments with bundles, go figure)
Bundle 'Rykka/riv.vim'
let g:riv_fold_auto_update=0		"for the bunnies.

" has to be after plugins
filetype plugin indent on
