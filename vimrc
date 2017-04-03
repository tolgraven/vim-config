scriptencoding utf-8
" ̅ ̅ ̅ ̅ ̅ ̅ ̅ ̅ ̅ ̅ ̅ ̅ ̅ ̅ ̅ ̅ ̅ ̅ ̅ ̅ ̅ ̅ ̅ ̅ ̅ ̅ ̅ ̅ ̅ ̅ ̅ ̅ ̅ ̅ ̅ ̅ ̅ ̅ ̅ ̅
"{{{1 				PLUGIN LOAD
filetype off "{{{2
call plug#begin('~/.vim/plugged') 
"}}}

"{{{2					--- FUZZ ME 'ARD | WIT UR <BAR>
Plug 'ctrlpvim/ctrlp.vim' | Plug 'tacahiroy/ctrlp-funky' | Plug 'sgur/ctrlp-extensions.vim' | Plug 'jasoncodes/ctrlp-modified.vim'
Plug '/usr/local/opt/fzf' | Plug 'junegunn/fzf.vim' "proper way when already have brew fzf. should check if path exists first tho, for linuxbrew etc
Plug 'jeetsukumaran/vim-buffergator'
Plug 'majutsushi/tagbar' ", {'on': 'TagbarToggle'}
Plug 'scrooloose/nerdtree' | Plug 'Xuyuanp/nerdtree-git-plugin'
Plug 'mbbill/undotree' ", {'on': 'UndotreeToggle'}
" Plug 'rupa/v' 															"v - 'z for vim'... 
" Plug 'mileszs/ack.vim'

"{{{2 					--- COLORS N SHIT
Plug 'morhetz/gruvbox' 											"best theme only cunts disagree c/d??
Plug 'vim-airline/vim-airline' | Plug 'vim-airline/vim-airline-themes' "| Plug 'edkolev/tmuxline.vim' mirror airline look in tmux statusline
Plug 'mhinz/vim-startify'  									"nice lil start page/session manager
Plug 'ryanoasis/vim-devicons' 							"emoji bullshit for adult idiots. very pretty
" Plug 'tiagofumo/vim-nerdtree-syntax-highlight' 	"colored devicons - better than other script?

"{{{2					--- SYNTAX B REAL 
"{{{ HONEST HARDWORKING MURICAN SYNTAXES OUT OF A JOB BC POLYGLOT IMGRANTS???
" Plug 'kballard/vim-fish',    		{'for': 'fish'} "more active than 'dag/vim-fish'
" Plug 'xolox/vim-misc' | Plug 'xolox/vim-lua-ftplugin', {'for': 'lua'} "| Plug 'xolox/vim-lua-inspect'
" Plug 'darfink/vim-plist' ", 		{'for': 'plist'} vimplug doesnt recognize plist files
"}}}
Plug 'sheerun/vim-polyglot' 								"shit ton of different languages
Plug 'tmux-plugins/vim-tmux' 								"polyglot has a bullshit one
Plug 'cyberkov/openhab-vim' 								"openhab syntax
Plug 'reedes/vim-pencil' 									"natural text processing
" Plug 'vimperator/vimperator.vim'
" LANG UTILS 
Plug 'Shougo/vinarise.vim', 			{'on': 'Vinarise'}	"hex viewer
Plug 'powerman/vim-plugin-AnsiEsc' 					"view files with ansi escape colors.

Plug 'lambdatoast/elm.vim'   								"elms speak out about oppression from elk
Plug 'stevearc/vim-arduino', 			{'for': 'arduino'} | Plug 'sudar/vim-arduino-snippets', 	{'for': 'arduino'} "arduino upload etc, overlaps platformio i guess, do i need?
Plug 'othree/yajs.vim',						{'for': 'javascript'} | Plug 'othree/es.next.syntax.vim', {'for': 'javascript'} "better javascript syntax inkl ES6+ES7

Plug 'tpope/vim-fireplace', 			{'for': 'clojure'} | Plug 'clojure-vim/vim-cider', 				{'for': 'clojure'}
Plug 'tpope/vim-classpath', 			{'for': ['clojure', 'java']} 	| Plug 'tpope/vim-salve', 	{'for': 'clojure'}	"auto clojure/java classpath
Plug 'guns/vim-clojure-highlight',{'for': 'clojure'} | Plug 'clojure-vim/async-clj-omni', 	{'for': 'clojure'}
Plug 'venantius/vim-eastwood', 		{'for': 'clojure'} | Plug 'venantius/vim-cljfmt', 				{'for': 'clojure'}	"clojure linter + formatter
" Plug 'guns/vim-sexp', {'for': 'clojure'} | Plug 'tpope/vim-sexp-mappings-for-regular-people', {'for': 'clojure'}
Plug 'junegunn/rainbow_parentheses.vim', {'on': 'RainbowParentheses'} "active fork of kien/rainbow_parentheses.vim

" Plug 'klen/python-mode', 				{'for': 'python'}

Plug 'chrisbra/Colorizer', 				{'on': 'ColorToggle'} 	"highlight color names/hex w their actual color. mad slow

"{{{2					--- COME PLEASED
Plug 'ervandew/supertab'
Plug 'honza/vim-snippets'
Plug 'Shougo/neosnippet' | Plug 'Shougo/neosnippet-snippets'
Plug 'w0rp/ale' 																							"neovim lint

" Plug 'roxma/nvim-completion-manager' 													"neovim deoplete alt with fuzzy
" Plug 'roxma/clang_complete' 																	"clang for ncm

" Plug 'autozimu/LanguageClient-neovim', { 'do': ':UpdateRemotePlugins' } 	"unified completion server spec client thingY

Plug 'Shougo/echodoc.vim' 									"show function args in msg area after completing function name
Plug 'davidhalter/jedi-vim'

Plug 'Shougo/deoplete.nvim', 					{'do': ':UpdateRemotePlugins'} 
Plug 'zchee/deoplete-clang', 					{'for': ['C', 'C++']}
Plug 'zchee/deoplete-jedi', 					{'for': 'python'} 
" Plug 'zchee/deoplete-go', 					{'for': 'go', 'do': 'make'} 		"breaking ale lol? 
Plug 'mitsuse/autocomplete-swift', 		{'for': 'swift'}
Plug 'artur-shaik/vim-javacomplete2', {'for': 'java'}  "more moderny than 'cilquirm/javacomplete'
Plug 'carlitux/deoplete-ternjs', 		  {'for': ['javascript', 'javascript.jsx']}
Plug 'ponko2/deoplete-fish',	{'for': 'fish'} | Plug 'Shougo/neco-vim', {'for': 'vim'} | Plug 'zchee/deoplete-zsh', {'for': 'zsh'}
Plug 'SevereOverfl0w/deoplete-github' 				| Plug 'thalesmello/webcomplete.vim' 		 | Plug 'wellle/tmux-complete.vim'
Plug 'Shougo/context_filetype.vim' | Plug 'Shougo/neoinclude.vim' 	"complete from included files?
			

Plug 'ternjs/tern_for_vim',						{'for': ['javascript', 'javascript.jsx'], 'do': 'npm install'}
Plug 'othree/jspc.vim', 							{'for': ['javascript', 'javascript.jsx']}

" Plug 'Shougo/neopairs.vim'      																	"autopairs from shuogo?
" Plug 'neomake/neomake' | Plug 'coddingtonbear/neomake-platformio', {'do': ':UpdateRemotePlugins'}  "koar linting

" Plug 'SirVer/ultisnips' 
" Plug 'scrooloose/syntastic' 		"linting
" Plug 'Valloric/YouCompleteMe' "| Plug 'rdnetto/YCM-Generator'

"{{{2  					--- UTILNTTY 
Plug 'tomtom/tcomment_vim', {'on': 'TComment'} 	"toggle comments better
Plug 'tpope/vim-surround' 											"put stuff around stuff
Plug 'tpope/vim-repeat' 												" . for plugins
Plug 'mhinz/vim-sayonara', 	{'on': 'Sayonara'} 	"kill buffer preserve window
Plug 'jiangmiao/auto-pairs' 										"test if works better than gentle ver
Plug 'ConradIrwin/vim-bracketed-paste' 					"auto paste mode and back
Plug 'bfredl/nvim-miniyank' 										"pro yank like in shell
Plug 'machakann/vim-highlightedyank' 	"is making yank move when doing motions? hmm y0 already moves either way 		highlight yanked region. works with miniyank and without config/mapping in nvim
" Plug 'vim-scripts/highlight.vim' 								"bare fucks shit up. Find alternative 	 hl shit without :hi. toggle mark-highlight current line etc
Plug 't9md/vim-textmanip' 											"move lines around visually
Plug 'tommcdo/vim-exchange' 										"easily flip two words/motions
Plug 'terryma/vim-expand-region' 								"select awesomely
Plug 'tomtom/tinykeymap_vim' 										"for repeating multikey stuff easier (eg. C-w-+)
" Plug 'tpope/vim-rsi' 														"readline bindings
Plug 'vim-utils/vim-husk' 											"less aggro readline bindings?
Plug 'godlygeek/tabular', 	{'on': 'Tabularize'} "align text
Plug 'sbdchd/neoformat' 												"format code 
Plug '907th/vim-auto-save', {'for': 'text'} 		"autosave, for my note popup term
Plug 'MarcWeber/vim-addon-local-vimrc', {'for': 'text'} 	"per folder .localvimrc

Plug 'tpope/vim-tbone' 													"tmux stuff
Plug 'tpope/vim-eunuch' 												"shell tool unix stuff
Plug 'tpope/vim-dispatch', {'on': 'Dispatch'} 	"async shell jobs etc
Plug 'lacombar/vim-mpage', {'on': 'MPageToggle'} "multipage. view buffer over multiple windows, like a book
Plug 'terryma/vim-multiple-cursors' 						"why is this slow as balls?
Plug 'tpope/vim-scriptease' 										"do debug a scriptz (+ :Verbose = auto redir to preview window, hell yeah)
Plug 'kana/vim-textobj-user' 										"custom text objects
" Plug 'vim-scripts/marvim' 											"save macros and shit, maybe when im better with those
" Plug 'vim-scripts/repeatable-motions.vim' 			"repeat movements/motions
" Plug 'nathanaelkane/vim-indent-guides'
" Plug 'kopischke/vim-stay'
" Plug 'lambdalisue/pinkyless.vim' 								"maybe good w a different config
" Plug 'rizzatti/dash.vim', 	{'on': 'Dash'} 			"dash integration

"{{{2					--- SATNAV YOU A GLONASS
Plug 'goldfeld/vim-seek'	 											"easymotion inna line
Plug 'easymotion/vim-easymotion' | Plug 'haya14busa/incsearch-easymotion.vim' "jump to text fast + incsearch integration
Plug 'haya14busa/incsearch.vim'  | Plug 'haya14busa/incsearch-fuzzy.vim' 			"more fancy incsearch than vim's built-in
" Plug 'tpope/vim-unimpaired' 								"shortcuts for stuff via [], would need to rebind
Plug 'szw/vim-maximizer', 			{'on': 'MaximizerToggle'}	"maximize/restore split
Plug 'zhaocai/GoldenView.Vim', 	{'on': 'ToggleGoldenViewAutoResize'}
Plug 'christoomey/vim-tmux-navigator' 			"navigate vim splits and tmux splits with same keys
Plug 'wesQ3/vim-windowswap'
Plug 'Shougo/denite.nvim' | Plug 'Shougo/neomru.vim', {'on': 'Denite'} | Plug 'Shougo/unite.vim' "cant have denite load on-demand bc calling its functions to set up keybinds etc
Plug 'Shougo/neoyank.vim' 									"yank history for unite/denite?
Plug 'tpope/vim-vinegar' 										"something about file browsing
" Plug 'airblade/vim-rooter' 									"auto change dir to proj base.  startify can handle?


"{{{2					--- B THE DIFFERENCED & ASSORTED LALL
Plug 'airblade/vim-gitgutter'
" Plug 'tpope/vim-fugitive'
" Plug 'jreybert/vimagit'
Plug 'lambdalisue/gina.vim'
" Plug 'jaxbot/github-issues.vim' 
Plug 'vim-scripts/yate' 																		"taglist but from manual ctags
Plug 'brettanomyces/nvim-terminus', {'on': 'TerminusOpen'} 	"something something term
Plug 'kassio/neoterm', 							{'on': 'Tnew'} 					"the neovim terminal
Plug 'rkitover/vimpager'

" Plug 'rhysd/nyaovim-popup-tooltip'
"{{{2 					---FANCY JOAN FREGERT's FORKS BECAUSE AM BETTZER THAN ZU CONTRIBUTE, HUH
Plug '~/Documents/CODE/VIM/lista.nvim', 						{'on': ['Lista', 'ListaCursorWord'], 'do': ':UpdateRemotePlugins'}  "my fork of 'lambdalisue/lista.nvim'
" Plug '~/Documents/CODE/VIM/lista.nvim-orig'
Plug '~/Documents/CODE/VIM/semantic-highlight.vim', {'on': 'SemanticHighlightToggle'} 		"incl patch for guicolors 'jaxbot/semantic-highlight.vim'
Plug '~/.config/nvim/scripts/ColDevicons' 			"colored devicons in nerdtree, even prettier
Plug '~/Documents/CODE/VIM/vim-numbertoggle' 		"forked 'jeffkreeftmeijer/vim-numbertoggle' auto switch on rel numbers for normal and visual?
"{{{2 						PLUG END
call plug#end() 
set runtimepath 					 +=~/.vim/bundle/deoplete.nvim

let g:plug_threads 					=96 				"more simult instances when updating plugs
augroup VimPlug | autocmd! 							
	autocmd VimEnter * if len(filter(values(g:plugs), '!isdirectory(v:val.dir)')) | PlugInstall --sync | q | endif "auto install missing plugins on start
augroup END
"}}} }}}
"⸏⸏⸏⸏⸏⸏⸏⸏⸏⸏⸏⸏⸏⸏⸏⸏⸏⸏⸏⸏⸏⸏⸏⸏⸏⸏⸏⸏⸏⸏⸏⸏⸏⸏⸏⸏⸏⸏⸏ 

" ̅ ̅ ̅ ̅ ̅ ̅ ̅ ̅ ̅ ̅ ̅ ̅ ̅ ̅ ̅ ̅ ̅ ̅ ̅ ̅ ̅ ̅ ̅ ̅ ̅ ̅ ̅ ̅ ̅ ̅ ̅ ̅ ̅ ̅ ̅ ̅ ̅ ̅ ̅ ̅
" {{{1 				SETTINGS

if has('nvim') "{{{2
	let $NVIM_TUI_ENABLE_CURSOR_SHAPE=1

	if $TERM_PROGRAM != 'Apple_Terminal'
		set termguicolors 														"24 bit color, no iterm check bc tmux
	endif
	if $TERM_PROGRAM =~? 'iTerm.app'								"some are already handled by NVIM var above
		" set termguicolors 														"24 bit color
		let &t_te 	= "\<Esc>]1337;CursorShape=1\x7" 	"reset cursor on exit (or use autocmd VimLeave)
		" let &t_SI = "\<Esc>]1337;CursorShape=1\x7" " Vertical bar in insert mode
		" let &t_EI = "\<Esc>]1337;CursorShape=0\x7" " Block in normal mode
		" let &t_SR = "\<Esc>]1337;CursorShape=2\x7" " Underline in replace mode
		" t_ti = vim starts, t_te = vim exits
	else
		" let g:webdevicons_enable 			=0 							"disable devicons on mobile etc
	endif

	set noshowcmd 																	"read something somewhere about perf issues with nvim and this?
	set mouse 									=a 									"no longer autoset in neovim 0.2.0 for some reason?

	augroup NeovimSpecific | autocmd!
		" autocmd CursorHold * rshada|wshada
		" autocmd BufWritePost * Neomake 							"getting in the way of ALE
augroup END 
else "{{{2 					REGULAR VIM
	if has('syntax') && !exists('g:syntax_on')
		syntax enable
	endif 
	if has('autocmd') | filetype plugin indent on | endif

	set encoding 							=utf-8
	set undodir								=~/.vim/undo 				"nvim = XDG_DATA_HOME used otherwise which is better anyways
	set backupdir							=~/.vim/backup
	set dir 									=~/.vim/swap
	set viewdir 							=~/.vim/view
	set autoread 																	" auto reload changed file
	set wildmenu 
	set mouse 								=a
	set laststatus						=2 									"2 = statusline even if just one pane/window

endif

"{{{2 			 default dump, supposed already set: 

" set ruler 																	"show position in file, does airline use or redundant?
" set showcmd 																"show cmds as they are entered? + visual mode selection. apparently can cause flaky performance..
" set viewoptions 						=folds,options,cursor  "default
" }}} 

"{{{2 				AUTOCMDS

"{{{3 				generic
" augroup GenericAutocommands | autocmd!
" augroup END
" augroup PluginUserEvents | autocmd!
" 	" autocmd User Gitgutter 
" 	" autocmd User Startified
" augroup END"}}}

augroup VimStart | autocmd!
	autocmd VimEnter,BufRead * call ColDevicons_init()     "init colored devicons script

	autocmd StdinReadPre 		 * let s:std_in=1 "opens nerdtree if vim started bare + ensure startify loads as normal
	autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | Startify | NERDTree | wincmd w | endif 
	autocmd VimEnter * if argc() == 1 && isdirectory(argv()[0]) && !exists("s:std_in") | exe 'NERDTree' argv()[0] | wincmd p | enew | endif "opens nerd if vim started with dir

  " When editing a file, always jump to the last known cursor position.  Don't do it when the position is invalid or when inside an event handler
  autocmd BufReadPost * if line("'\"") >= 1 && line("'\"") <= line("$") | execute "normal! g`\"" | endif
augroup END



"{{{2 				 LOOK
set background 							=dark
set number 																	"show line numbers
set numberwidth 						=3 							"min numcol width incl 1 space. 3 = eg '97 '. if <100 LOC less offset from curr line/surrounding ones when using relativenumber. default=4
set showmatch matchtime 		=3							"quickly jump to highlighted matching bracket, 3 = 0.2s?
set cursorline 															"hmm maybe turn off since iterm already has line? apparently slows
set showtabline 						=2 							"2 = tabline always. 1 = if multiple... tabs, not buffers :/
set noshowmode 															"dont show normal/insert etc, cause airline does
set shortmess               =atTcA 						"abbr cmdline msgs, truncate long ones, no completion info, no ATTENTION swapfile
set fillchars 							+=fold:\ 				" blank space instead of dashes to fill out folds
set foldminlines 						=2 							"dont fold < 3 lines. 1 is default = 2 lines
" set fillchars 							+=vert:│ 				"compare '│' to the '|' default regular pipe which leaves gaps and looks like shit. but no different unless proper font / rendering? both look same on iterm 3.0, but good on nightly/3.1 (with Fira Code / ligatures). also might be the reason shit goes slowwww when using splits, both in vim and tmux..
set fillchars 							+=vert:\ 
set listchars 							=tab:░░,trail:▓
" set list 																	"show tabs and trails. nah, annoying, autocleanup instead 
" }}}

set ttimeout 		ttimeoutlen	=25							"timeout for keycode sequence
set timeoutlen           		=250 						"timeout for mapped sequences
set updatetime							=350 						"time idle before bg shit runs?

set shiftround
set tabstop=2 shiftwidth=2
" set expandtab smarttab										"converts tabs to spaces/inserts spaces instead of tabs at SOL
set textwidth 							=0 							"0 is default so dunno why the fuck mine gets set to 78

set whichwrap              	=<,>,[,],b,s 		"which keys also move past eol. now arrow, b, w etc
set linebreak 															"wraps a bit smarter
set wrapscan 								 								" Wrap search at end
set ignorecase
set smartcase 															" screws with my autocompletion i think
set nostartofline 													" keep cursor on same column even on larger jumps
" set smartindent 														"not sure what difference it makes over regular autoindent.seems to make python kinda retarded?
set virtualedit 						=block,onemore 	"move cursor independent of available characters, in block visual mode. +move one char past EOL

set sessionoptions+=globals,localoptions "blank,buffers,curdir,folds,help,tabpages,winsize,globals,localoptions
set sessionoptions-=blank		"if contains "blank" windows editing a buffer without a name will be restored <-this causing eg nerdtree bs with sessions? lets try
" set sessionoptions=blank,curdir,folds,help,tabpages,winpos "recommended by startify
set undofile 
set undolevels 							=1000 					" cap a bit, seems to make undotree a lil happier
" set noswapfile 														" what no ofc we want a swap file duh, as long as dir is set
set fileformats 						=unix,dos,mac 	" default is mac first, so sort
set hidden 																	" hide buffers instead of unloading them, so can open more
set confirm 																" prompt instead of error for eg :q and :e
" set verbosefile 						=~/.vim/verbosefile "send messages to a file to tail instead of shitty in-vim handling and redir angst?

set splitbelow splitright 									" splits for help etc go below and right...
set switchbuf 							=usetab 				" open prev/next buffer in split if not already visible somewhere?
set scrolloff=5 sidescrolloff=2 						" autoscrolls before hits end
set sidescroll 							=1 							" dont jump a zillion columns when scrolling sideways. HOW not the default??
set winminwidth 						=3 						
set winminheight 						=0 							" fully minimize windows 			=3 "so still see some when maximizing
set previewheight 					=25 						"regular height of preview window unless otherwise specified
set noequalalways 						 							"dont fuck with window sizes when I open and close others
" set eadirection 						='ver' 	"or 'hor', default 'both'. tells when equalalways should apply

"{{{2 COMPLETELY WILD
set completeopt 						=longest,menuone,preview,noinsert,noselect "only correct way to set it
" set complete               -=i 									"i (scan current and included files) isnt in defaults and seems p good anyways, dont get this 
set wildmode    						=list:longest,full "tested: longest,full  longest:full  list:longest
set wildignorecase
set wildignore+=*.o,*.obj,*.pyc,*.so,*.swp,*.pdf,*/.git/*,*/.hg/*,*/.svn/*,bower_components,LICENSE,LICEN*E.*,.DS_Store,.localized,*.zip,*/tmp/*,*/undo/*,*.pyi
"}}}

"----------------------------------------

" {{{1 				SETTINGS FOR PLUGINS
" ###FUN IDEA###: export colorscheme and run statusline etc in lights :D no mistaking the mode
let w:tol_sidebarWidth 										=20
let g:polyglot_disabled 									=['tmux'] "bc tis shit

let g:lista#highlight_group 							='IncSearch'

" let g:maximizer_set_default_mapping 		=0 		"disable maximizer default F3 mapping
let g:maximizer_restore_on_winleave 			=1 		"undo maximizer if leaving window
let g:maximizer_set_mapping_with_bang 		=1
let g:maximizer_default_mapping_key 			='<M-m>'

 "{{{2 				CTRL-P
let g:ctrlp_show_hidden 											=1
let g:ctrlp_by_filename 											=0
let g:ctrlp_follow_symlinks 									=0
let g:ctrlp_default_input 										=0
let g:ctrlp_max_files 												=20000
let g:ctrlp_match_window ='bottom,order:btt,min:1,max:30,results:30' "results 0 == no limit
let g:ctrlp_working_path_mode 								='rw'
let g:ctrlp_clear_cache_on_exit 							=0 										"share cache
let g:ctrlp_cache_dir 												=$HOME.'/.cache/ctrlp'
let g:ctrlp_switch_buffer 										=0 										"disable autojumping to other panes 'Et'
let g:ctrlp_extensions=['dir', 'undo', 'line', 'changes', 'mixed']
			" \ 'tag', 'buffertag', 'quickfix', 'rtscript', 'bookmarkdir'


" {{{2 				FZF
let g:fzf_colors = 
\ { 'fg':      ['fg', 'Normal'],
  \ 'bg':      ['bg', 'Normal'],
  \ 'hl':      ['fg', 'Comment'],
  \ 'fg+':     ['fg', 'CursorLine', 'CursorColumn', 'Normal'],
  \ 'bg+':     ['bg', 'CursorLine', 'CursorColumn'],
  \ 'hl+':     ['fg', 'Statement'],
  \ 'info':    ['fg', 'PreProc'],
  \ 'prompt':  ['fg', 'Conditional'],
  \ 'pointer': ['fg', 'Exception'],
  \ 'marker':  ['fg', 'Keyword'],
  \ 'spinner': ['fg', 'Label'],
  \ 'header':  ['fg', 'Comment']  } 	"match vim colorscheme...
" Enable per-command history. CTRL-N/CTRL-P next-hist/prev-hist instead of down/up. 
" Else bind the keys to down and up in your $FZF_DEFAULT_OPTS
" let g:fzf_history_dir = '~/.local/share/fzf-history'
"{{{2 				 NERDTree
let NERDTreeShowHidden										=1
let NERDTreeWinSize												=w:tol_sidebarWidth
" let NERDTreeHijackNetrw 									=0 	"replace default filebrowser with NERD
let NERDTreeMinimalUI											=1 		"removes help clutter but also .. to go up?
let NERDTreeHighlightCursorline 					=1
let NERDTreeRespectWildIgnore							=1 		"shared filter
let NERDTreeChDirMode											=2 		"change vim cwd with NERDTree root
let NERDTreeMouseMode 										=2 		"open dirs(2) +files(3, annoying) with single-click
let NERDTreeShowBookmarks 								=1 		"auto show bookmarks
let NERDTreeBookmarksSort 								=0
" let NERDTreeBookmarksFile 								=$HOME .'/.vim/.NERDTreeBookmarks'
" let NERDTreeCascadeSingleChildDir 				=1 		"bugs out file open?
let NERDTreeCascadeOpenSingleChildDir 		=1 		"open multi dirs if just one inside
let NERDTreeAutoDeleteBuffer 							=1 		"delete buffer when rm file via nerd menu
" let NERDTreeCreatePrefix 									='silent keepjumps'


let g:NERDTreeDirArrowExpandable 					='' "'▸'   
let g:NERDTreeDirArrowCollapsible 				='' "'▾'   


"{{{2		 			 DEVICONS

let g:WebDevIconsUnicodeDecorateFolderNodes 	=1 	"icons for folders
" let g:DevIconsEnableFoldersOpenClose 					=1  "pretty but buggy offsets
let g:DevIconsEnableFolderExtensionPatternMatching =1 "whatever that means
let g:WebDevIconsUnicodeGlyphDoubleWidth 			=1 "double/single padding, no effect on terminal or guifont font
let g:WebDevIconsNerdTreeAfterGlyphPadding 		='' 	"amount of space after the glyph
"Just fucks up spacing unless git symbol plug is active. should make auto toggle on/off depending on whether in git dir?
" let g:WebDevIconsNerdTreeGitPluginForceVAlign =1 	"1 is supposed to force extra padding so filetype icons line up vertically

"{{{3 					EXTRA MANUAL DEVICONS
" let g:WebDevIconsUnicodeDecorateFileNodesPatternSymbols ={} " needed
" let g:WebDevIconsUnicodeDecorateFileNodesPatternSymbols['.*jquery.*\.js$'] = 'ƛ'

" let g:WebDevIconsUnicodeDecorateFileNodesPatternSymbols['.*rc'] 		=''
" let g:WebDevIconsUnicodeDecorateFileNodesPatternSymbols['.*node'] 	='' "  
" let g:WebDevIconsUnicodeDecorateFileNodesPatternSymbols['.*npm'] 		=''
" let g:WebDevIconsUnicodeDecorateFileNodesPatternSymbols['.*python'] =''
" let g:WebDevIconsUnicodeDecorateFileNodesPatternSymbols['.*pip'] 		=''
" let g:WebDevIconsUnicodeDecorateFileNodesPatternSymbols['.*vim'] 		=''
" let g:WebDevIconsUnicodeDecorateFileNodesPatternSymbols['.*Google'] =''
" let g:WebDevIconsUnicodeDecorateFileNodesPatternSymbols['.*Trash'] 	=''
" let g:WebDevIconsUnicodeDecorateFileNodesPatternSymbols['.*docker'] =''
" let g:WebDevIconsUnicodeDecorateFileNodesPatternSymbols['.local'] 	=''
" let g:WebDevIconsUnicodeDecorateFileNodesPatternSymbols['.config'] 	=''
" let g:WebDevIconsUnicodeDecorateFileNodesPatternSymbols['.cache'] 	=''

"{{{3 					COLORS from unused addon
" let g:NERDTreeFileExtensionHighlightFullName 	=1
" let g:NERDTreeExactMatchHighlightFullName 		=1
" let g:NERDTreePatternMatchHighlightFullName 	=1
" let g:NERDTreeHighlightFolders 								=1 "enables folder icon highlighting using exact match
" let g:NERDTreeHighlightFoldersFullName 				=1 "highlights the folder name
" let g:NERDTreeLimitedSyntax 									=1
"}}}

"{{{2 				 STARTIFY

" let g:startify_disable_at_vimenter 				=1 		"disable autoload, got own mechanism for that+nerdtree
" let g:startify_session_autoload 					=1 		"not working?
" let g:startify_session_persistence    		=0 		"too buggy
let g:startify_session_sort 							=0
let g:startify_session_before_save 	=['silent! NERDTreeClose', 'silent! BufferGatorClose', 'silent! TagbarClose', 'silent! UndotreeHide']
let g:startify_session_savevars 		=['g:startify_session_savevars', 'g:startify_session_savecmds', 'g:gitgutter_diff_base']

let g:startify_files_number 							=10
let g:startify_change_to_dir          		=1
let g:startify_change_to_vcs_root 				=1 		"same as rooter
" let g:startify_use_env 										=1 		"shorten paths with vars. slows down start enough that it looks like shit and isnt worth it
 "let g:startify_relative_path 							=1 		"useless because also get /User/name instead of just ~...
let g:startify_update_oldfiles        		=1
" let g:startify_enable_unsafe 							=1 		"speed up start. breaks shit when paths removed or whatever :/
let g:startify_enable_special 						=0 		"hide info about empty buffer / quit
let g:startify_padding_left 							=1

"{{{3 HEADER

" let g:startify_custom_header=[ '				__  __  /\\\      ___ ___     ',
" 															\'			 /\ \/\ \ \/\ \   /´ __` __`\   ',
" 															\'			 \ \ \_/ | \ \ \ | \ \/\ \/\ \  ',
" 															\'				\ \___/   \ \_\ \ \_\ \_\ \_\ ',
" 															\'				 \/__/     \/_/  \/_/\/_/\/_/ ']

let g:startify_custom_header=[ '				__  __ /\_\    ___ ___     ',
															\'			 /\ \/\ \\/\ \ /´ __` __`\  ',
															\'			 \ \ \_/ |\ \ \︳|\ \/\ \/\ \  ',
															\'				\ \___/  \ \_\ \_\ \_\ \_\ ',
															\'				 \/__/    \/_/\/_/\/_/\/_/ ']
"original
" let g:startify_custom_header=[ '				__  __ /\_\    ___ ___     ',
" 															\'			 /\ \/\ \\/\ \ /' __` __`\  ',
" 															\'			 \ \ \_/ |\ \ \/\ \/\ \/\ \  ',
" 															\'				\ \___/  \ \_\ \_\ \_\ \_\ ',
" 															\'				 \/__/    \/_/\/_/\/_/\/_/ ']

let g:startify_list_order 	=[ ['      '. getcwd()],  'dir',
															\ 											'files',
															\['      sessions'], 		'sessions',
															\ 											'bookmarks',
															\ 											'commands', ]

"{{{3 SKIPLIST AND TRANSFORM
let g:startify_skiplist 		=[
  \ 'plugged/.*/doc',
  \ 'plugged/*/README.md',
  \ "$VIMRUNTIME .'/doc'",
  \ escape(fnamemodify(resolve($VIMRUNTIME), ':p'), '\') .'doc',
  \ '*/doc/*.txt',
  \ '/usr/local/Cellar/neovim/*/share/nvim/runtime/doc',
  \ 'undo/*'
            							 \ ]

" function! s:shit(filename)
"   return fnamemodify(a:filename, ':p')
" endfunction
"
" let g:startify_transformations 	=[
" 	\ ['.*vimrc$', 'vimrc'],
"      													 \ ]
	" \ ['.*', function('s:shit')],
	" \ ['.*.config/fish/', 'fish/'],
"}}}


"{{{2 				 AIRLINE
let g:airline_powerline_fonts 										=1 
let g:airline_skip_empty_sections 								=0   "buggy lol
let g:airline#extensions#tmuxline#enabled 				=0 "0 to set theme manually
let g:airline#extensions#whitespace#enabled 			=0
let g:airline#extensions#whitespace#show_message 	=0

let g:airline#extensions#tabline#enabled 					=1
" let g:airline#extensions#tabline#switch_buffers_and_tabs =1 "no
let g:airline#extensions#tabline#buffer_nr_show 	=1
let g:airline#extensions#tabline#exclude_preview 	=1
let g:airline#extensions#tabline#tabs_label 			=' '	"'T'
let g:airline#extensions#tabline#buffers_label 		=' ' 	"'B' 
" let g:airline#extensions#tabline#fnamecollapse 		=1
let g:airline#extensions#tabline#show_close_button =0
let g:airline#extensions#tabline#middle_click_preserves_windows =1
let g:airline#extensions#tabline#fnamemod 				=':t' 	"Just buf/filename no path in tabs
let g:airline#extensions#tabline#buffer_idx_mode 	=1 			"something about switching buffers not tabs
let g:airline#extensions#tabline#ignore_bufadd_pat =
\'\c\vgundo|undotree|vimfiler|tagbar|nerd_tree|nerdtree|buffergator|ctrlp|fzf|vimplug|preview|previewwindow' "avoids unnessesary redraw
let g:airline#extensions#tagbar#enabled 					=0

" let g:airline#parts#ffenc#skip_expected_string='utf-8[unix]'
let g:airline#extensions#default#layout =[[ 'a', 'b', 'c', 'gutter' ],
																				\ [ 'x', 'z', 'error', 'warning' ] ] 
																					"^^ hide 'y' section showing encoding
" let g:airline_section_z ='%L%{airline#util#wrap(airline#extensions#windowswap#get_status(),0)}%3p%% 
let g:airline_section_z ='%L%{airline#util#wrap(airline#extensions#windowswap#get_status(),0)}%3p%%
\%#__accent_bold#%4l%#__restore__#%{g:airline_symbols.linenr}%#__restore__#%3v%{g:airline_symbols.maxlinenr}'

let g:airline#extensions#default#section_truncate_width = {
		\ 'b': 79,
		\ 'x': 40, 'y': 18, 'z': 45,
		\ 'warning': 80, 'error': 80 }

" let g:airline_section_b 													=expand('%:~:h') "should show just dir
":p full path :h head last component removed, :t tail last only, :r root one ext rm, :e extension only

let g:airline#extensions#tabline#left_sep 				=' '
let g:airline#extensions#tabline#left_alt_sep 		='│' 			"''
let g:airline#extensions#tabline#right_sep 				=' '
let g:airline#extensions#tabline#right_alt_sep 		='│' 			"''

"           –-
let g:airline_left_sep 														='' "'' '' 
let g:airline_left_alt_sep 												='│' 	"'' '' ''
let g:airline_right_sep 													='' "'' ''
let g:airline_right_alt_sep 											='│' 	"'' '' ''

if !exists('g:airline_symbols') | let g:airline_symbols = {} | endif
let g:airline_symbols.linenr 				=''    "''  	''  	''
let g:airline_symbols.maxlinenr 		='' "'' 	''

" let g:airline#extensions#ycm#error_symbol 				=' '
" let g:airline#extensions#ycm#warning_symbol 			=' '
let g:airline#extensions#ale#error_symbol 				=' '
let g:airline#extensions#ale#warning_symbol 			=' '


"shorter mode names. has  for I, put somewhere with check for devicons first i guess
let g:airline_mode_map 	= { '__': '-', 'n': 'N', 'i': '', 'R': 'R', 'c': 'C',
													\ 'v': 'v', 'V': 'V', '': 'V',
													\ 's': 's', 'S': 'S', '': 'S'}

"{{{2 				 ALE
" linters n shit:
" luarocks install luacheck; npm install -g jshint; pip install vim-vint; pip install jedi
let g:ale_warn_about_trailing_whitespace 	=0
let g:ale_sign_warning 									 	=' ' 			"'?' ''
let g:ale_sign_error 										 	=' ' 		"'!' '>>'
let g:ale_set_signs 										 	=1
let g:ale_sign_column_always 						 	=0
let g:ale_open_list 										 	=0 "auto open loclist. too annoying
let g:ale_lint_delay 										 	=250
let g:ale_statusline_format 						 	=['%d  ', '%d ', 'OK']

"{{{2 				 BUFFERGATOR
let g:buffergator_viewport_split_policy 			='B' 	"Use the bottom (LRTB) 
" let g:buffergator_suppress_keymaps 						=1 		"set own keymappings
let g:buffergator_mru_cycle_loop 							=1 		"Loop buffers
let g:buffergator_hsplit_size 								=10
let g:buffergator_vsplit_size 								=25
let g:buffergator_tab_statusline 							=1
let g:buffergator_window_statusline 					=1
let g:buffergator_autoupdate 									=1
"{{{2 				 TAGBAR
let g:tagbar_width 											=18 "w:tol_sidebarWidth
let g:tagbar_zoomwidth 									=0 					"auto
let g:tagbar_autofocus 									=1 					"focus after opening?
let g:tagbar_sort 											=0
let g:tagbar_compact 										=1 					"hide 'press ? for help' etc
let g:tagbar_indent 										=0 					"dont indent contents of sections, just wastes space
let g:tagbar_singleclick 								=1 					"one click to jump
" let g:tagbar_autoshowtag 								=1 					"auto open folds if needed to show current tag
" let g:tagbar_autopreview 								=1 					"auto preview tag under cursor.
let g:tagbar_iconchars 									=['▸', '▾']
let g:tagbar_previewwin_pos 						='aboveleft'
" let g:tagbar_expand 										=2 					"expands window to fit. iterm redraw way too slow though.
"

" function! TagbarStatusFunc(current, sort, fname, flags, ...) abort
"     let colour = a:current ? '%#StatusLine#' : '%#StatusLineNC#'
"     let flagstr = join(a:flags, '')
"     if flagstr != ''
"         let flagstr = '[' . flagstr . '] '
"     endif
"     return colour . '[' . sort . '] ' . flagstr . a:fname
" endfunction
" let g:tagbar_status_func = 'TagbarStatusFunc'


"{{{2 				 UNDOTREE
let g:undotree_SplitWidth											=20 "w:tol_sidebarWidth
let g:undotree_DiffpanelHeight 								=10
let g:undotree_TreeNodeShape 									=''  "'▮' '∞'
let g:undotree_RelativeTimestamp 							=1
let g:undotree_ShortIndicators 								=1
let g:undotree_WindowLayout 									=2
" let g:undotree_HighlightSyntaxAdd 						=DiffAdd
let g:undotree_HighlightSyntaxChange   				='UndotreeChange'
"LastChangedLine "DiffChange

"{{{2 				 GITGUTTER
let g:gitgutter_override_sign_column_highlight 	=0 	"stupid asshole defaults
" let g:gitgutter_eager 									=0 					"check how affects perf
" let g:gitgutter_realtime 								=0
let g:gitgutter_sign_added 							='✚'
let g:gitgutter_sign_modified 					='✹'
let g:gitgutter_sign_removed 						=''
let g:gitgutter_sign_modified_removed 	=''  "'✗'
highlight link GitGutterChangeDelete GruvboxOrangeSign
let g:gitgutter_max_signs 							=500 			"default 500. why do I hit that max when only got like 100 changes tho?

"{{{2 				 MULTIPLE CURSORS
let g:multi_cursor_insert_maps 					={',':1} 		"leader shit in insert mode
let g:multi_cursor_exit_from_insert_mode=0 					"dont instaquit
let g:multi_cursor_exit_from_visual_mode=0

"{{{2 				 ASSORTED RANDOM
" if executable('ag') | let g:ackprg = 'ag --vimgrep' | endif
" let g:rooter_use_lcd =1 														"only auto change cwd local to window
"rm default source .vimrc files in local _or any parent dir _, causing issues in home folder...
let g:local_vimrc = {'names':['.localvimrc'],'hash_fun':'LVRHashOfFile'}

let g:auto_save_silent 										=1  " do not display the auto-save notification
let g:auto_save_events 										=['InsertLeave', 'CursorHold']


let python_highlight_all 									=1 		"some python thing

let g:EasyMotion_smartcase 								=1
let g:EasyMotion_startofline 							=0 " keep cursor column when JK motion

" let g:sexp_mappings 											={}
let g:clj_fmt_autosave 										=0


let g:AutoPairsMultilineClose 						=0
let g:AutoPairsMapCR 											=0 		"manual mapping so works with neosnippets/deoplete etc
let g:AutoPairsMapBS 											=0

" let g:AbsoluteNumberWhenOpening 					=1

let g:goldenview__enable_at_startup 			=0
let g:goldenview__enable_default_mapping 	=0

"{{{2 				 SEMANTIC HL OVERRIDES
let g:semanticBlacklistOverride={ 
\ 'lua': [
\   'function', 'hs', 'local', 'require', 'pairs',
\   'while', 'for', 'if', 'else', 'elseif',  'then', 'end', 'return',
\   'not', 'print', 'self', 'do', 'type', 'assert', 'in',	'or', 'get'
\  ],
\ 'vim': [
\ 	'set', 	'let', 	'Plug',	'augroup', 	'autocmd',	'highlight',
\ 	'function', 'endfunc', 'return', 'if',	'else',	'endif', 'for',	'endfor',
\ 	'execute','call','run','iun','redir','put','setfiletype',
\ 	'source',	'echo',	'in',	'syntax',	'filetype',	'has', 'or','enable','colorscheme',
\ 	'END',
\  ] } 


"{{{2 				 TMUXLINE (OFF)
" let s:powerline_separators = {
"     \ 'left' : '',
"     \ 'left_alt': '',
"     \ 'right' : '',
"     \ 'right_alt' : '',
"     \ 'space' : ''}
"
"  let g:tmuxline_preset = {
"       \'a'    : '#S',
"       \'b'    : ' ',
"       \'c'    : '#W',		
"       \'win'  : ['#I', '#W'],
"       \'cwin' : ['#I', '#W', '#P', '#F'],
"       \'x'    : '#(echo -n (uptime | string split ": ")[-1])',
"       \'y'    : ['%R', '%a', '%Y'],
"       \'z'    : '#H',
"       \'options': {
"  			\		'status-justify': 'centre'
" 			\}, 		
" 			\'win_options': {
" 			\ 	'window-status-activity-attr': 'none'
"   		\},
"  			\ 								}
"}}} "}}}
"⸏⸏⸏⸏⸏⸏⸏⸏⸏⸏⸏⸏⸏⸏⸏⸏⸏⸏⸏⸏⸏⸏⸏⸏⸏⸏⸏⸏⸏⸏⸏⸏⸏⸏⸏⸏⸏⸏⸏ 


" ̅ ̅ ̅ ̅ ̅ ̅ ̅ ̅ ̅ ̅ ̅ ̅ ̅ ̅ ̅ ̅ ̅ ̅ ̅ ̅ ̅ ̅ ̅ ̅ ̅ ̅ ̅ ̅ ̅ ̅ ̅ ̅ ̅ ̅ ̅ ̅ ̅ ̅ ̅ ̅
"{{{1   			ALL-TEXT GUI VISUAL CLI-INTERFACE

let &colorcolumn 										=join(range(100,300),',') "fade bg slightly past 100 cols bc fuck yall

let g:airline_theme 								='bubblegum' "better contrast than gruvbox, looks good but tweak later

"{{{2 				GRUVBOX
let g:gruvbox_italic 				 				=1 				"bold, underline, undercurl already enabled by default
" let g:gruvbox_improved_warnings 		=1
" let g:gruvbox_sign_column 					='bg1' 		"default 'bg1' 'None' makes it hella cranky
" let g:gruvbox_color_column 					='bg1' 		"is default
" let g:gruvbox_number_column 				='bg0' 		"None is  default (equals bg0 i guess)
" let g:gruvbox_hls_cursor 						='orange' "default

colorscheme 												gruvbox 	"let g:tol_gruvbox_fork ='bruvbox' mos def

"{{{2 					BRUVBOX ETC
" function! SetupHighlighting() "build something less messy like this
" 	for line in defs
" 		highlight '. a:group .' cterm='. a:cterm .'  ctermbg='. a:bg .' 		ctermfg='. a:fg .' 
" 												\ 		gui='. a:gui .' 		 guibg='. a:guibg .' 		guifg='. a:guifg '
" 	endfor | endfunction
"
" NOTE: generally need ! when linking? or it will fuck up when reloading vimrc etc, because plugs
" (or at least colorscheme?) doesnt 'see' links and back off like it does with explicit definitions?
"

"cool colors #6D7833 #7f9d4a
"
"IDEA: instead of bg/base gray, turn it (so bg, also comments, etc) ever so faintly bluish hue!! could be shit but suspect might be very pretty?
"BRUVBOX:	bg				red 			green 		yellow 		blue 			purple 		aqua 			gray 		
"normal 	#393939 	#a4ad49 	#939233 	#c6943a 	#4d8487 	#a56784 	#6b976e 					
"bright 						#cb5d4e 	#aaae4a 	#d8ac67 	#829d93 	#c38495 	#8bb47d 					
"" 				bg0_h			bg0 			bg1 			bg2 			bg3 			bg4 			gray 			orange
"bg 			#1d2821  	#282828 	#3c3836 	#505945 	#665c54 	#7c6f64 	#928374 	#c5632c
"fg 								#32302f 	#a89984 	#bdae93 	#d5c4a1 	#ebdbb2 	#fbf1c7 	#d68035
 
"GRUVBOX: bg				red 			green 		yellow 		blue 			purple 		aqua 			gray 		
"normal 	#282828 	#cc241d 	#b8bb26
"bright 		
" 				bg0_h			bg0 			bg1 			bg2 			bg3 			bg4 			gray 			orange
"bg 			#1d2821  	#282828 	#3c3836 	#505945 	#665c54 	#7c6f64 	#928374 	#d68035d0e
"fg 								#32302f 	#a89984 	#bdae93 	#d5c4a1 	#ebdbb2 	#fbf1c7 	#fe8019
"}}}

"{{{2 				 syntax specific settings
let c_comment_strings 							=1 				"highlight strings inside C comments.
let c_no_bracket_error 							=1
let c_curly_error 									=1 				"highlight missing closing braces

let g:clojure_fold 									=1 				"might not work with rainbow-parentheses }}}


"{{{2 				 HIGHLIGHT GROUPS

highlight! Normal ctermbg=None guibg=None

highlight! link StatusLine 		ColorColumn
highlight! link MoreMsg 			GruvboxFg4
highlight! link WildMenu 			airline_tabmod
highlight! link PmenuSel 			airline_tabmod
highlight! link Pmenu 				airline_x_inactive
highlight! link Todo 					GruvboxPurple 				"I like it. Normally white or maybe just bolded


highlight VertSplit 					gui=bold 			guifg=#9999dc
highlight NonText 													guifg=#282828 	"guibg=None 	"the ~ after end of document
" highlight BufTabLineCurrent 								guifg=None			guibg=None
highlight BufTabLineCurrent 								guifg=fg			guibg=bg


highlight Folded    											ctermfg=238 		ctermbg=110 					
highlight Folded 							gui=bold 			guifg=#84a8cd 									"#607eb3 "(usual blue) "#87afd7 #81a5a5 #076678 #83a598 #4d8487 #458588 
highlight FoldColumn 											ctermfg=black		ctermbg=darkblue 					
highlight FoldColumn												guifg=#928374 	guibg=#84a8cd 	"92... = Comment / Number /  bg. gets a bit reddish.  guifg=#7777dd 	guibg=#84a8cd
highlight! FoldOpenedMarker 	         			guifg=#076678 	guibg=#3c3836		"07 = gruv dark from the light palette
highlight! link foldOpenedLine 	GruvboxBg1
highlight foldHelp 												ctermfg=238 		ctermbg=110
highlight foldHelp 													guifg=#7777bb 	guibg=#6488bb 	"guifg=#444444 	guibg=#607eb3
highlight link FoldedUnderline Folded
highlight FoldedUnderline 		gui=underline

highlight MatchParen				cterm=reverse
highlight MatchParen					gui=reverse
highlight IncSearch  				cterm=bold 										ctermbg=green 				
" highlight IncSearch						gui=bold 			guifg=snow			guibg=green
highlight! link IncSearch 	GruvboxBlueSign
" highlight IncSearch 					gui=reverse,bold,underline
highlight IncSearch 					gui=bold,underline
highlight! link IncSearchCursor GruvboxBlueSign 
highlight IncSearchCursor 					gui=reverse,bold,underline

highlight TermCursor 	 			cterm=bold 		ctermfg=red 		
" highlight TermCursor 	 				gui=bold,reverse

highlight CursorLine 	 																			guibg=#424138
augroup CursorLine | autocmd!
	autocmd InsertEnter * 	highlight CursorLine gui=underline,bold
	autocmd InsertLeave * 	highlight CursorLine gui=None
augroup END

syntax match OverLength /\%81v.\+/
highlight OverLength ctermbg=133 ctermfg=254 cterm=bold guibg=#592929

highlight vimrcHashSep   									ctermfg=White
highlight vimrcHashSep   										guifg=White

highlight! link ALEErrorSign 		GruvboxRedSign
highlight! link ALEWarningSign 	GruvboxYellowSign
" highlight ALEErrorSign 
highlight HighlightedyankRegion cterm=reverse  		
highlight HighlightedyankRegion 	gui=reverse

highlight UndotreeAdd 										ctermfg=None		ctermbg=darkgreen
highlight UndotreeAdd 				        			          			guibg=darkgreen
highlight UndotreeChange 		cterm=bold 		ctermfg=None		ctermbg=darkblue
highlight UndotreeChange 			gui=bold 			           			guibg=darkblue
highlight LastChangedLine 	cterm=bold,reverse
highlight LastChangedLine 		gui=bold,reverse
highlight DiffAdd   											guibg=#035a0a
highlight DiffChange   										guibg=#a1612a
highlight DiffDelete 											guibg=#50151a
" gui=None   guifg=None
" gui=None   guifg=None
" gui=None   guifg=None
" syntax match nonascii "[^\x00-\x7F]" containedin=cComment,vimLineComment "some example


" highlight! StartifyPath 			guifg=#999999
" highlight! StartifySlash 			guifg=#333333
" highlight! StartifyFile 			guifg=lightBlue
highlight! link StartifyPath 		GruvboxFg1
highlight! link StartifySlash 	GruvboxBg1
highlight! link StartifyVar 		GruvboxBlueSign
highlight! link StartifyFile 		GruvboxBlueSign



"{{{2 				 PER FILETYPE AUTOCMDS
augroup fileTypeSpecific | autocmd! 

autocmd FileType 	* 			set foldcolumn =0


" autocmd FileType 	java 					setlocal omnifunc=javacomplete#Complete
autocmd FileType 	lisp,clojure 	RainbowParentheses

autocmd BufNewFile,BufRead *.py		setlocal tabstop=4 softtabstop=4 shiftwidth=4 textwidth=79 | let &colorcolumn=join(range(80,120),',')
" autocmd FileType python 

" autocmd BufNewFile,BufRead 	*.applescript 	set filetype 	=applescript "gets loaded as sh??
autocmd BufNewFile,BufRead 	*.fish 	set filetype=fish 			 "same


autocmd FileType vim 			let w:matchmapComment =matchadd('Comment', '|\s*".*')	"HL post-pipe comments in vimrc
autocmd FileType vim 			let w:matchhash 			=matchadd('vimrcHashSep', '#')

autocmd Filetype vim 			let b:AutoPairs={'(':')','[':']','{':'}',"'":"'",'`':'`','<':'>'} "fix comment behavior, pair <>

autocmd FileType vim,lua 	set foldmethod=marker | set foldcolumn=1
autocmd FileType vim,lua 	let w:matchdashes 		=matchadd('Folded', '----------') 	"regular dash
autocmd FileType vim,lua 	let w:matchdashes 		=matchadd('Folded', '          ') 	"spaces
" autocmd FileType vim,lua 	let w:matchdashes 		=matchadd('FoldedUnderline', '                    ')
autocmd FileType vim,lua 	let w:matchunderscore1 =matchadd('Folded', '__________') 	"regular underscore
autocmd FileType vim,lua 	let w:matchunderscore3 =matchadd('Folded', '⸏⸏⸏⸏⸏⸏⸏⸏⸏⸏⸏⸏⸏⸏⸏⸏⸏⸏⸏⸏⸏⸏⸏⸏⸏⸏⸏⸏⸏⸏⸏⸏⸏⸏⸏⸏⸏⸏⸏ ') "weird spacing so 19 chars + 1 space = same len
" autocmd FileType vim,lua 	let w:matchupperscore =matchadd('Folded', '‾‾‾‾‾‾‾‾‾‾') "'regular' overline?
autocmd FileType vim,lua 	let w:matchupperscore =matchadd('Folded', ' ̅ ̅ ̅ ̅ ̅ ̅ ̅ ̅ ̅ ̅')		"combining overline 0x305
autocmd FileType vim,lua	let w:matchopenfolds 	=matchadd('Folded', '{\d\s*.*.*') 	"opened folds same HL style as closed when got digit like { {{2 	
" autocmd FileType vim,lua	let w:matchfoldline=matchadd('foldOpenedLine', '{{{\s*')
" autocmd FileType vim,lua	let w:matchrightbraces 	=matchadd('foldHelp', '}}}')
autocmd FileType vim,lua	let w:matchleftbraces =matchadd('FoldOpenedMarker', '{{{')
autocmd FileType vim,lua	let w:matchrightbraces=matchadd('foldOpenedMarker', '}}}')

augroup END "}}}2


"{{{2 				 NERDTREE REGULAR HIGHLIGHT GROUPS
highlight! NERDTreeOpenable    							guifg=lightblue "#7cafc2
highlight! NERDTreeClosable    							guifg=orange 		"#ab4642
highlight! link  NERDTreeDir 						GruvboxBlue
highlight! link  NERDTreeLinkTarget			Comment				"	Type
highlight! link  NERDTreeLinkFile				GruvboxFg3		"	Macro
highlight! link  NERDTreeLinkDir				GruvboxAqua		"	Macro
highlight! link  NERDTreeDirSlash				Question			"	Identifier
highlight! link  NERDTreeCWD						Question			"	Statement
" highlight! link  NERDTreeCurrentNode		foldHelp			"	Search
" highlight! link	NERDTreeBookmarkName 		Special				"Identifier
highlight! link NERDTreeFlags 					Number 				"? what is
highlight! link NERDTreeUp 							Directory

"{{{2  				 NERDTree-syntax-highlight custom
" let s:brown       ='905532'
" let s:aqua        ='3AFFDB'
" let s:blue        ='689FB6'
" let s:darkBlue    ='44788E'
" let s:purple      ='834F79'
" let s:lightPurple ='834F79'
" let s:red         ='AE403F'
" let s:beige       ='F5C06F'
" let s:yellow      ='F09F17'
" let s:orange      ='D4843E'
" let s:darkOrange  ='F16529'
" let s:pink        ='CB6F6F'
" let s:salmon      ='EE6E73'
" let s:green       ='8FAA54'
" let s:lightGreen  ='31B53E'
" let s:white       ='FFFFFF'
" let s:rspec_red   ='FE405F'
" let s:git_orange  ='F54D27'

" let g:NERDTreeExtensionHighlightColor 								={} "init, else errors
" let g:NERDTreeExtensionHighlightColor['fish'] 				=s:blue "ext color
"
" let g:NERDTreeExactMatchHighlightColor 								={} 	"full match
" let g:NERDTreeExactMatchHighlightColor['.gitignore'] 	=s:git_orange 
" " let g:NERDTreeExactMatchHighlightColor['.'] 					=s:git_orange
" let g:NERDTreePatternMatchHighlightColor 							={}
" let g:NERDTreePatternMatchHighlightColor['.*rc'] 			=s:rspec_red
" let g:NERDTreePatternMatchHighlightColor['.*git*'] 		=s:git_orange 
" " "pattern color


"something for startify dunno
" let entry_format = "'   ['. index .']'. repeat(' ', (3 - strlen(index)))"
" if exists('*WebDevIconsGetFileTypeSymbol')  " support for vim-devicons
"   let entry_format .= ". WebDevIconsGetFileTypeSymbol(entry_path) .' '.  entry_path"
" else | let entry_format .= '. entry_path' | endif
"{{{2  				 NERDTree File highlighting, manual
" function! NERDTreeHighlightBetter(extension, fg, bg, guifg, guibg)
" 	exec 'autocmd filetype nerdtree highlight ' . a:extension .' ctermbg='. a:bg .' ctermfg='. a:fg .' guibg='. a:guibg .' guifg='. a:guifg
" 	exec 'autocmd filetype NERDTree syn match ' . a:extension .' #^\s\+.*'. a:extension .'$#'
" endfunction

" let admin 			=["log", "whatever"]
" let docu 				=["md", "readme", "man", "txt", "text"]
" let values 			=["yml", "config", "conf", "json", "xml", "csv"]
" let real 				=["python", "go", "swift", "c", "c++", "obj-c", "ino"]
" let web 				=["coffee", "js", "php"]
" let shell 			=["fish", "zsh", "sh", "bash", "vim", "rb"]
" let NERDhlGroups={"yellow":admin, "blue":docu, "green":values, "cyan":real, "darkred":web, "red":shell}
" for color in keys(NERDhlGroups)
" 	for filetype in get(NERDhlGroups, color)
" 		" echo filetype color
" 		call NERDTreeHighlightBetter(filetype, color, 'none', color, '#151515')
" 	endfor
" endfor 

" " }}}
"}}}
"⸏⸏⸏⸏⸏⸏⸏⸏⸏⸏⸏⸏⸏⸏⸏⸏⸏⸏⸏⸏⸏⸏⸏⸏⸏⸏⸏⸏⸏⸏⸏⸏⸏⸏⸏⸏⸏⸏⸏ 


" ̅ ̅ ̅ ̅ ̅ ̅ ̅ ̅ ̅ ̅ ̅ ̅ ̅ ̅ ̅ ̅ ̅ ̅ ̅ ̅ ̅ ̅ ̅ ̅ ̅ ̅ ̅ ̅ ̅ ̅ ̅ ̅ ̅ ̅ ̅ ̅ ̅ ̅ ̅ ̅
" {{{1 				COMPLETION STUFF
 

let g:tern#command 													=['tern']
let g:tern#arguments 												=['--persistent']
let g:tern_request_timeout 									=1 

let g:python_host_prog 											='/usr/bin/python'
let g:python3_host_prog 										='/usr/local/bin/python3'


let g:SuperTabClosePreviewOnPopupClose 			=1
let g:SuperTabLongestEnhanced 							=1
let g:SuperTabDefaultCompletionType 				='<C-N>' 								"so it doesnt go backwards lol
let g:SuperTabContextDefaultCompletionType 	='<C-N>'

"{{{2 					JEDI
let g:jedi#auto_vim_configuration 					=0
let g:jedi#use_tabs_not_buffers 						=0
let g:jedi#smart_auto_mappings 							=1
let g:jedi#auto_close_doc 									=1

let g:jedi#completions_enabled 							=0

let g:jedi#goto_command             = ''
let g:jedi#goto_assignments_command = '' 		" setup a ft autocommand...
let g:jedi#goto_definitions_command = ''
let g:jedi#documentation_command    = 'K'
let g:jedi#usages_command           = ''
let g:jedi#completions_command      = ''
let g:jedi#rename_command           = ''

"}}}

"{{{2 			  	DEOPLETE
let g:deoplete#enable_at_startup						=1 
let g:deoplete#auto_complete_start_length   =1
let g:deoplete#enable_camel_case 						=1
let g:deoplete#max_abbr_width								=120
let g:deoplete#max_menu_width								=120
let g:deoplete#auto_complete_delay					=80
let g:deoplete#enable_refresh_always				=1
let g:deoplete#auto_refresh_delay						=50

let g:deoplete#omni#functions 							={}
let g:deoplete#omni#functions.javascript 		=['tern#Complete', 'jspc#omni']

let g:deoplete#sources 											={}
let g:deoplete#sources['javascript.jsx'] 		=['file', 'ultisnips', 'ternjs']
let g:deoplete#sources#clang#libclang_path 	='/Library/Developer/CommandLineTools/usr/lib/libclang.dylib'
let g:deoplete#sources#clang#clang_header 	='/Library/Developer/CommandLineTools/usr/lib/clang'

let g:deoplete#sources#jedi#show_docstring 	=1 				"in preview window


let g:deoplete#keyword_patterns 						={}
let g:deoplete#keyword_patterns.clojure 		='[\w!$%&*+/:<=>?@\^_~\-\.#]*'
"}}}

"{{{2 			 	 NVIM COMPLETION MANAGER TEST
let g:cm_matcher = {'module': 'cm_matchers.fuzzy_matcher', 'case': 'smartcase'} "fuzzy matcher!
let g:cm_complete_delay 										=75 			"ms

let g:cm_completekeys												="\<Plug>(cm_complete)"
"default. or	 "\<Plug>(cm_completefunc)" or "\<Plug>(cm_omnifunc)"
let g:cm_refresh_default_min_word_len 			=[[1,4],[7,2]]			"default [[1,4],[7,3]]  arg[1] min prio, [2] min chars typed before refresh

"NCM version of neosnippet mapping below, think its just a wrapper for the <expr> thing so no need
" inoremap <silent> <CR> <c-r>=cm#sources#neosnippet#trigger_or_popup("\<Plug>(neosnippet_expand_or_jump)")<cr>

"{{{2 				LANGUAGE SERVER CLIENT
let g:LanguageClient_signColumnAlwaysOn 	=0

let g:LanguageClient_serverCommands ={
			\ 'javascript': ['/opt/javascript-typescript-langserver/lib/language-server-stdio.js'],
			\ 'python': ['pyls'],
			\ }
			" \ 'lala': ['fart', '--butt', '--large=True'],
			" \ 'osv': ['/path/to/your/butt'],
			" \ }


"}}}

"{{{3						NCM EXAMPLE CUSTOM SOURCE 
" au User CmSetup call cm#register_source({'name' : 'foo bar',
" 	\ 'abbreviation': 'foo', 
" 	\ 'priority': 8, 
" 	\ 'cm_refresh_patterns': ['fo$'],
" 	\ 'cm_refresh': 'g:Foo_auto_popup',
" 	\ })
"
" func! g:Foo_auto_popup(opt,ctx)
" 	let l:matches = ['foo_bar','foo_baz']
" 	call cm#complete(a:opt['name'], a:ctx, a:ctx['startcol'], l:matches)
" endfunc
"}}}

"{{{2 				 NEOSNIPPET
let g:neosnippet#enable_snipmate_compatibility=1
let g:neosnippet#enable_completed_snippet 		=1




"{{{2 				 TESTS

function! NeoDeo()
	if pumvisible()
		call deoplete#close_popup()
		if neosnippet#expandable() | call neosnippet_expand() | endif
		" <Plug>(neosnippet_expand_or_jump)
	else
		" <CR>
	endif
endfunc

"}}}

"{{{2 				old inactive

" {{{3 				 SYNTASTIC
" let g:syntastic_shell 												='/usr/local/bin/zsh' "cant put fish bc non-posix
" let g:syntastic_always_populate_loc_list 			=1
" let g:syntastic_auto_loc_list 								=1
" let g:syntastic_check_on_open 								=1
" let g:syntastic_check_on_wq 									=0
" let g:syntastic_enable_balloons 							=1
" let g:syntastic_enable_highlighting 					=1
" let g:syntastic_vim_checkers 									=['vint']
" let g:syntastic_loc_list_height 							=10

"{{{3 				 YOUCOMPLETEME
" let g:ycm_allow_changing_updatetime 									=1  	"apparently 2000 ms otherwise...
" let g:ycm_seed_identifiers_with_syntax 								=1
" let g:ycm_autoclose_preview_window_after_completion 	=1
" let g:ycm_autoclose_preview_window_after_insertion 		=1
" let g:ycm_global_ycm_extra_conf='~/.vim/plugged/YouCompleteMe/third_party/ycmd/cpp/ycm/.ycm_extra_conf.py'
"}}}

"}}}
"----------------------------------------

" {{{1 				 FUNCTIONS

" "{{{2 			RELOAD VIMRC
augroup reload_vimrc | autocmd!
    autocmd BufWritePost .vimrc source $MYVIMRC | call RefreshUI() | set foldmethod=marker | syntax sync fromstart
		autocmd BufReadPost .vimrc call ColDevicons_init()
augroup END 
function! RefreshUI()
  if exists(':AirlineRefresh') | AirlineRefresh
	else | redraw! | redrawstatus! | endif
	call ColDevicons_init()
	if exists('g:loaded_webdevicons') | call webdevicons#softRefresh() | endif "helps fix NERDTree window when it shows line numbers and shit post-reload
endfunction " was airline wrecking reload. had to refresh it+reload syntax stuf. now works without? cant remember why
"{{{2 				 RESIZE WINDOW

function! ResizeWindow(sign, amount) 	"resize window by direction instead of +- etc
	let initial = winnr() 	"save the original window index
	if 		 a:sign =~? '<' || a:sign =~? '>' | let movedirection = 'h'
	elseif a:sign =~? '+' || a:sign =~? '-' | let movedirection = 'k' | endif

	execute 'wincmd ' . movedirection
	if winnr() == initial 	"couldnt switch window, try other direction (just to check)
		if 		 movedirection =~? 'h' | wincmd l
		elseif movedirection =~? 'k' | wincmd j | endif
		if winnr() == initial	"def nothing to resize, passing back to tmux
			if 		 a:sign =~? '<' | call system('tmux resize-pane -L 5')
			elseif a:sign =~? '>' | call system('tmux resize-pane -R 5')
			elseif a:sign =~? '+' | call system('tmux resize-pane -D 3')
			elseif a:sign =~? '-' | call system('tmux resize-pane -U 3') | endif
		else 		"switch back, then resize since there are other windows but orig was correct
			execute initial . 'wincmd w' 		
			execute a:amount . 'wincmd' . a:sign
		endif
	else 			"did succeed switching. So resize, then go back to orig win
		execute a:amount . 'wincmd' . a:sign
		execute initial . 'wincmd w'
	endif
endfunction

function! MaximizeWindow()
	let numwindows = winnr('$')
	if numwindows == 1
		call system('tmux resize-pane -Z')
	else
		MaximizerToggle!
	endif
endfunction

"{{{2 				 ROTATE WINDOWS
function! Rotate()
	let initial = winnr() 			"save the original window index, jump to the first window
	exe 1 . 'wincmd w'
	wincmd l
	if winnr() != 1 | wincmd J  "succeeded moving to the right window. make it the bottom window
	else | wincmd H | endif 		"cannot move to the right, so we are at the top. make it the left window. 

	exe initial . 'wincmd w'
	" restore cursor to the initial window
endfunction

"{{{2 				 SCROLL SCREEN NOT CURSOR
function! ScrollToPercent(percent)
    let movelines=winheight(0)*(50-a:percent)/100
    echo movelines
    if movelines<0
        let motion='k'
        let rmotion='j'
        let movelines=-movelines
    elseif movelines>0
        let motion='j'
        let rmotion='k'
    else
        return 0
    endif
    if has('float') && type(movelines)==type(0.0)
        let movelines=float2nr(movelines)
    endif
    execute 'normal! zz'.movelines.motion.'zz'.movelines.rmotion
endfunction

"  {{{2 				 CAPTURE OUTPUT TO BUFFER
function! CaptureOutput(runCmd) "so can search map and other shit that otherwise ends up in more
	tabnew
	setlocal buftype=nofile bufhidden=wipe
	setlocal nobuflisted noswapfile
	redir @a
	silent execute a:runCmd
	put a
	" setfiletype vim
	set syntax=vim
	normal! gg
endfun

function! ShowSyntaxColors() " opens new buff with this shit so dont stuff with the stupid more flood
	tabnew
	setlocal buftype=nofile bufhidden=hide
	setlocal nobuflisted noswapfile
	silent source $VIMRUNTIME/syntax/hitest.vim
endfun

function! ShowNamedColors() " opens new buff with this shit so dont stuff with the stupid more flood
	"Optional: First enter ":let g:rgb_fg=1" to highlight foreground only.
	tabnew
	setlocal buftype=nofile bufhidden=hide
	setlocal nobuflisted noswapfile
	silent source ~/.vim/color-names.vim
endfun

function! TestPerformance()
	let profile_file = '~/.vim/profile.log'

	" if !exists('g:profiling_running')
	if v:profiling == 0
		" let g:profiling_running = 1
		echo "saving profile report in" profile_file

		execute 'profile start ' . profile_file
		profile func *
		profile file *
	else
		" unlet g:profiling_running
		echo "stopping performance profiling"
		" profile pause
		profile stop
		execute 'tabnew ' . profile_file
	endif
	" cmds are :syntime on, move around a bit, :syntime report. shows in current win so need to open new one or run from elsewhere
	" also: nvim --startuptime file " profiles startup...
endfun

" {{{2 				 GET SCRIPT SNR NUMBER
" You can retrieve a script's <SNR> by parsing the output of :scriptnames. The following function will do just that for either the script's full filename, or a fragment of it (as long as it uniquely identifies the one you want).
function! GetScriptNumber(script_name) " Return the <SNR> of a script.
    " Args: script_name : (str) The name of a sourced script.
    " Return: (int) The <SNR> of the script; if the script isn't found, -1.
    redir => scriptnames
    silent! scriptnames
    redir END

    for script in split(l:scriptnames, "\n")
        if l:script =~ a:script_name | return str2nr(split(l:script, ":")[0]) | endif
    endfor

    return -1
endfunction

" {{{2 				 Auto-highlight all instances of word under cursor, when idle.
function! AutoHighlightToggle()
  let @/ = '' 									"doesnt work properly sometimes not all instances actually highlight...
  if exists('#auto_highlight')
    au! auto_highlight
    augroup! auto_highlight
    " setlocal updatetime=4000 --should restore, actually, not do that
    echo 'Highlight current word: OFF'
    return 0
  else
    augroup auto_highlight | autocmd!
      autocmd CursorHold * let @/ = '\V\<'.escape(expand('<cword>'), '\').'\>'
    augroup end
    " setlocal updatetime=250
    echo 'Highlight current word: ON'
    return 1
  endif
endfunction

""{{{2 				 VISUAL SEARCH AND REPLACE

function! EscapeString (string) "Escape special characters in a string for exact matching. This is useful to copying strings from the file to the search tool. Based on http://peterodding.com/code/vim/profile/autoload/xolox/escape.vim
  let string = a:string
  let string = escape(string, '^$.*\/~[]') 					"Escape regex characters
  let string = substitute(string, '\n', '\\n', 'g') "Escape line endings
  return string
endfunction

function! GetVisual() range "Get the current visual block for search and replace, via a string escape function. Based on http://stackoverflow.com/questions/676600/vim-replace-selected-text/677918#677918
  let reg_save = getreg('"') | let regtype_save = getregtype('"')
  let cb_save = &clipboard | set clipboard& 			"Stash current register and clipboard

  normal! ""gvy
  let selection = getreg('"') 										"Put the current visual selection in the \" register
  call setreg('"', reg_save, regtype_save) 				"Put the saved registers and clipboards back
  let &clipboard = cb_save

  let escaped_selection = EscapeString(selection) "Escape any special characters in the selection
  return escaped_selection
endfunction

" {{{2 				 EASYMOTION x INCSEARCH
function! s:incsearch_config(...) abort
  return incsearch#util#deepextend(deepcopy({
  \   'modules': [incsearch#config#easymotion#module({'overwin': 1})],
  \   'keymap': {
  \     "\<CR>": '<Over>(easymotion)'
  \   },
  \   'is_expr': 0
  \ }), get(a:, 1, {}))
endfunction

function! s:config_easyfuzzymotion(...) abort
  return extend(copy({
  \   'converters': [incsearch#config#fuzzyword#converter()],
  \   'modules': [incsearch#config#easymotion#module({'overwin': 1})],
  \   'keymap': {"\<CR>": '<Over>(easymotion)'},
  \   'is_expr': 0,
  \   'is_stay': 1
  \ }), get(a:, 1, {}))
endfunction

function! s:config_fuzzyall(...) abort
  return extend(copy({
  \   'converters': [
  \     incsearch#config#fuzzy#converter(),
  \     incsearch#config#fuzzyspell#converter()
  \   ],
  \ }), get(a:, 1, {}))
endfunction

"}}}

"{{{2 				 UNUSED

" " Damian Conway's Die Blinkënmatchen: highlight matches"{{{
" nnoremap <silent> n n:call HLNext(0.1)<cr>
" nnoremap <silent> N N:call HLNext(0.1)<cr>
"
" function! HLNext (blinktime)
"   let target_pat = '\c\%#'.@/
"   let ring = matchadd('ErrorMsg', target_pat, 101)
"   redraw
"   exec 'sleep ' . float2nr(a:blinktime * 1000) . 'm'
"   call matchdelete(ring)
"   redraw
" endfunction"}}}
"{{{ SCROLLBAR TEST
" sign define scrollbox texthl=Visual text=[]
" fun! ScrollbarGrab()
"     if getchar()=="\<leftrelease>" || v:mouse_col!=1
"         return|en
"     while getchar()!="\<leftrelease>"
"         let pos=1+(v:mouse_lnum-line('w0'))*line('$')/winheight(0)
"         call cursor(pos,1)
"         sign unplace 789
"         exe "sign place 789 line=".(pos*winheight(0)/line('$')+line('w0')).b:scrollexpr
"     endwhile
" endfun
" fun! UpdateScrollbox()
"     sign unplace 789
"     exe "sign place 789 line=".(line('w0')*winheight(0)/line('$')+line('w0')).b:scrollexpr
" endfun
" fun! ToggleScrollbar()
"     if exists('b:opt_scrollbar')
"         unlet b:opt_scrollbar
"         nun <buffer> <leftmouse>
"         iun <buffer> <leftmouse>
"         nun <buffer> <scrollwheelup>
"         nun <buffer> <scrollwheeldown>
"         iun <buffer> <scrollwheelup>
"         iun <buffer> <scrollwheeldown>
"         exe "sign unplace 789 file=" . expand("%:p")
"         exe "sign unplace 788 file=" . expand("%:p")
"     el
"         let b:opt_scrollbar=1
"         nno <silent> <buffer> <leftmouse> <leftmouse>:silent! call ScrollbarGrab()<cr>
"         ino <silent> <buffer> <leftmouse> <leftmouse><c-o>:silent! call ScrollbarGrab()<cr>
"         nno <buffer> <scrollwheelup> <scrollwheelup>:silent! call UpdateScrollbox()<cr>
"         nno <buffer> <scrollwheeldown> <scrollwheeldown>:silent! call UpdateScrollbox()<cr>
"         ino <buffer> <scrollwheelup> <scrollwheelup><c-o>:silent! call UpdateScrollbox()<cr>
"         ino <buffer> <scrollwheldown> <scrollwheeldown><c-o>:silent! hcall UpdateScrollbox()<cr>
"         let b:scrollexpr=" name=scrollbox file=".expand("%:p")
"         exe "sign place 789 line=".(line('w0')*winheight(0)/line('$')+line('w0')).b:scrollexpr
"         exe "sign place 788 line=1".b:scrollexpr
"     en
" endfun "}}}
"}}} }}}
"⸏⸏⸏⸏⸏⸏⸏⸏⸏⸏⸏⸏⸏⸏⸏⸏⸏⸏⸏⸏⸏⸏⸏⸏⸏⸏⸏⸏⸏⸏⸏⸏⸏⸏⸏⸏⸏⸏⸏ 



" ̅ ̅ ̅ ̅ ̅ ̅ ̅ ̅ ̅ ̅ ̅ ̅ ̅ ̅ ̅ ̅ ̅ ̅ ̅ ̅ ̅ ̅ ̅ ̅ ̅ ̅ ̅ ̅ ̅ ̅ ̅ ̅ ̅ ̅ ̅ ̅ ̅ ̅ ̅ ̅
" {{{1 				KEY BINDINGS  
"CANT USE INLINE COMMENTS HERE| 	"but can use fancy trick
nnoremap j              gj| 			"move properly within wrapped lines
nnoremap k              gk| 			"
" nnoremap jh 						5j| 			"good fast 	"actually idiotic terrible bc causes delay in normal movement lollll
" nnoremap kl 						5k| 			"
" nnoremap n 							nlh| 		"shake cursor to auto open folds on search, but dont work need to find alt
" nnoremap <CR>         	:| 			"so obviously the superior choice.  fucks some stuff tho
nnoremap <BS>         	:| 				"good bc BS in normal is just h anyways...

nnoremap zz      			  za| 			" folds quick
nnoremap <Leader>z 			zA| 			"recursive toggle folds
noremap <M-Right> 			za
inoremap jk             <C-c>| 		" exit insert mode more better easier
inoremap jkl            <C-c>:
inoremap jkh            <C-c>/

" nnoremap jj 						5j
" nnoremap kk 						5k

noremap  uu 						:redo<CR>| "quicker redo, super awesome. note U to undo and then U again will redo back and forth photoshop-style

vnoremap <Tab>          >gv| 			" indent with tab in visual and keep selection
vnoremap <S-Tab>        <gv| 			" deindent
noremap <Leader>< 			>>| 			"space-< tiny bit chiller than double shift-< to indent
vnoremap <C-x>          "*d| 			" access system clipboard with systemish shortcuts
vnoremap <C-v>          "*p| 			" dont need insert equivs since cmd-v etc works then
vnoremap <C-c>          "*y
nnoremap Y 							y$| 			"so acts same as D and C.
inoremap <M-p>        	<C-o>p| 	"paste in insert mode (cmd-c to paste system)
noremap ö								p`[| 			"paste without moving cursor
noremap Ö 							P`[j| 		"paste prepend, cursor stay, move down line 
nnoremap <Leader>J 			:m-2<BAR>j<CR>| "like J but join line ABOVE after current. glitches...

nnoremap <Leader>a 			a<space><C-c>| "easy insert space to left or right without changing mode. like 
nnoremap <Leader>i 			i<space><C-c>
nnoremap <Leader>A 			a<space><C-c>h
nnoremap <Leader>I 			i<space><C-c>l
nnoremap <Leader><Tab> 	i<Tab><C-c>l|	 	"insert tabs from normal mode

"FINALLY SANITY GODDAMN. cancels comp incl removing anything already inserted, but stays in normal mode! with completeopt "longest,menuone,preview,noinsert,noselect", guess those last two are the key...
inoremap <expr><Esc> pumvisible() ? "\<C-E>" : "\<Esc>"| "works even though ive rebound C-E, thanks to prior inoremap...

" imap <expr><CR> pumvisible() ? "\<C-Y>" : neosnippet#expandable_or_jumpable() ? "\<Plug>(neosnippet_expand_or_jump)" : "\<CR>"| "\<Plug>AutoPairsReturn" \<CR>"
imap <expr><CR> pumvisible() ? "\<C-Y>" : neosnippet#expandable_or_jumpable() ? "\<Plug>(neosnippet_expand_or_jump)" : "\<CR>\<Plug>AutoPairsReturn"
smap <expr><CR> neosnippet#expandable_or_jumpable() ? "\<Plug>(neosnippet_expand_or_jump)" : "\<CR>"
xmap <expr><CR> neosnippet#expandable_or_jumpable() ? "\<Plug>(neosnippet_expand_or_jump)" : "\<CR>"
" Note: These last few must be "imap" and "smap" for whatever reason.

"{{{2 		  	US layout(ish) for åäö normal
nmap å                  [| 				"åh
" nmap Å                  ] 							
nmap ä 									/|				"search, and works recydled in other binds bc nmap
" nmap ¨ 								^| 				"now via ukelele, ^ on shift-thatbutton, ~ instead of ¨ on reg press
imap Å 									{
imap Ä 									/
imap Ö 									\
"}}} 

map Q               		:q<CR>| "gq|    "unmap ex mode, gq is "format", use quit instead atm

nnoremap <Up> 					{| 				"make arrows useful!:
nnoremap <Down> 				}| 				"move up/down to line with whitespace
nnoremap <S-Left> 			[{
nnoremap <S-Right> 			]}
map <Leader>2 					"
map <Leader>3 					#
map <Leader>4 					$| 				"shortcuts
map <Leader>5 					%| 				"faster than shift-5 to match pair
map <Leader>6 					^| 				"go first non-whitespace char


nnoremap <Leader>vb 		viB

"{{{2 					cmdline readline stuffs
cnoremap <C-A>          <Home>| 	 
cnoremap <C-E>          <End>
cnoremap <C-K>          <C-U>
cnoremap <C-P>          <Up>
cnoremap <C-N>          <Down>
" cnoremap <C-Y> 					| 			"how paste at cmdline?

inoremap <C-A>          <Home>| 	"readline stuffs
inoremap <C-E>          <End>| 		"messes c-e to cancel inserted completion, but using esc for that anyways
inoremap <C-U>        	<C-o>d0| 	"backward-kill-line, doesnt work at EOL, why?
" inoremap <C-Y>        	<C-o>p| 	"yank/paste
inoremap <C-K> 		     	<C-o>D| 	"kill-line
noremap <C-A>           0
noremap <C-E>           $

"{{{2 				 WRITE / QUIT
noremap <M-w>    				:write<CR>
inoremap <M-w>     <C-o>:write<CR>| 								
noremap <M-w><M-a>     	:writeall<CR>
inoremap <M-w><M-a> <C-o>:writeall<CR>| 								
noremap <M-w><M-1> 			:SudoWrite<CR>
inoremap <M-w><M-1> <C-o>:SudoWrite<CR>| 								
noremap <M-x>          	:x<CR>
inoremap <M-x>     <C-o>:x<CR>
noremap <M-q>    				:quit<CR>
inoremap <M-q>     <C-o>:quit<CR>
noremap <M-q><M-1>     	:quit!<CR>| 				"bc got Alt-Shift-Q (M-Q) mapped to totalspaces #5 hmm
noremap <M-q><M-a> 		 	:quitall<CR>


" {{{2   			 USE HJKL FOR ALL THE MOVES. ALLLL THE MOVES!!!!
let g:tmux_navigator_no_mappings =1 													"moves tmux split instead if available
inoremap <silent> <M-h>     <C-O>:TmuxNavigateLeft<CR>| 			"equiv to <C-w><C-h> etc
inoremap <silent> <M-j>     <C-O>:TmuxNavigateDown<CR>
inoremap <silent> <M-k>     <C-O>:TmuxNavigateUp<CR>
inoremap <silent> <M-l>     <C-O>:TmuxNavigateRight<CR>
inoremap <silent> <M-z>     <C-O>:TmuxNavigatePrevious<CR>
noremap <silent> <M-h>           :TmuxNavigateLeft<CR>
noremap <silent> <M-j>           :TmuxNavigateDown<CR>
noremap <silent> <M-k>           :TmuxNavigateUp<CR>
noremap <silent> <M-l>           :TmuxNavigateRight<CR>
noremap <silent> <M-z>           :TmuxNavigatePrevious<CR>
if has('nvim')
	tnoremap <M-h>             <C-\><C-n><C-w><C-h>| 	"term, only way to exit that buff except mouse
	tnoremap <M-j>             <C-\><C-n><C-w><C-j>
	tnoremap <M-k>             <C-\><C-n><C-w><C-k>
	tnoremap <M-l>             <C-\><C-n><C-w><C-l>
endif 

noremap	 	<silent> <M-H> 				:call ResizeWindow('<', 5)<CR>
noremap	 	<silent> <M-J> 				:call ResizeWindow('+', 3)<CR>
noremap 	<silent> <M-K> 				:call ResizeWindow('-', 3)<CR>
noremap 	<silent> <M-L> 				:call ResizeWindow('>', 5)<CR>
inoremap 	<silent> <M-H> 	 <C-O>:call ResizeWindow('<', 5)<CR>
inoremap 	<silent> <M-J> 	 <C-O>:call ResizeWindow('+', 3)<CR>
inoremap 	<silent> <M-K> 	 <C-O>:call ResizeWindow('-', 3)<CR>
inoremap 	<silent> <M-L> 	 <C-O>:call ResizeWindow('>', 5)<CR>


noremap <silent> <Leader>hh 		:call ResizeWindow('<', 20)<CR>
noremap <silent> <Leader>jj 		:call ResizeWindow('+', 12)<CR>
noremap <silent> <Leader>kk 		:call ResizeWindow('-', 12)<CR>
noremap <silent> <Leader>ll 		:call ResizeWindow('>', 20)<CR>

" nnoremap <Leader>8 		|"make all windows 80 cols wide-ish
nnoremap <Leader>min 						<C-w>1<BAR>|"minimize current window...


nnoremap <Leader>mn 						:call Rotate()<CR>



" {{{2 				 UNUSED
" nnoremap <ScrollWheelDown>  j
" nnoremap <ScrollWheelLeft>  h
map <ScrollWheelRight> za| 									"hmm not working
"}}}
" ‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾
" {{{1 				KEY BINDINGS - LEADER/MACRO
let mapleader					=','
map <Space> 					<Leader>| 						"space as leader with showcmd retained...
" map <Space><Space> 	<Leader><Leader>| 			"preserve leader-leader functionality? dun work
map <Leader>y 				ysiW| 								"add surround word shortcut, '"( etc
" nnoremap <Leader>c2 <Plug>surroundblabl	|		"cs'"
nnoremap <Leader>wf 	:set nowrap<CR>| 			"wrap off
nnoremap <Leader>wn 	:set wrap<CR>
nnoremap <Leader>wff 	:windo set nowrap<CR>|"wrap all off
nnoremap <Leader>wnn 	:windo set wrap<CR>

nnoremap <leader>z1 	:<C-u>call ScrollToPercent(20)<CR>
nnoremap <leader>z2 	:<C-u>call ScrollToPercent(50)<CR>
nnoremap <leader>z3 	:<C-u>call ScrollToPercent(80)<CR>

nnoremap <Leader>less :runtime macros/less.vim<CR>| "load less mode lols

" {{{2 				SPLIT AND MAXIMIZE
nnoremap <Leader>m  	:wincmd _<CR>| 							"
nnoremap <Leader>mk 	:wincmd k<CR>:wincmd _<CR>| "maximize window above
nnoremap <Leader>mj		:wincmd j<CR>:wincmd _<CR>| "maximize window below
nmap <Leader>sh  		 	:leftabove  vsp<CR>
nmap <Leader>sl  			:rightbelow vsp<CR>
nmap <Leader>sk 			:leftabove   sp<CR>
nmap <Leader>sj   		:rightbelow  sp<CR>
nmap <Leader>sH 			:topleft   	vsp<CR>
nmap <Leader>sL				:botright  	vsp<CR>
nmap <Leader>sK  		 	:topleft  	 sp<CR>
nmap <Leader>sJ  			:botright 	 sp<CR>
nmap <Leader>= 				<C-w>=| 							"equalize windows }}}
" nmap <MiddleMouse> 	:echo FART FART FART

cmap w!!            	SudoWrite<CR>| 				"aka sudo tee %, via vim.eunuch 
cmap hg 							helpgrep
cmap ft 							set filetype=
nnoremap <Leader>ä 		:nohlsearch<CR>| 			"leader+ä (mapped to /, search) clears hl from search
nnoremap <Leader>7 		:nohlsearch<CR>| 			"and similar leader-7 (/ key) also clears hl
nnoremap <Leader>hil	`[v`]| 								"highlight last inserted text
nnoremap <Leader>hl		:if AutoHighlightToggle()<Bar>set hls<Bar>endif<CR>| "autohl word under cursor
nnoremap <Leader>v  	V`]| 									"Select pasted text
map <Leader>gg      	:vimgrep // **/*.<left><left><left><left><left><left><left>| "grep globbed
map <Leader>g 				:vimgrep // <C-R>%<C-A><right><right><right><right><right><right><right><right><right>| "current file
map <silent><Leader>cc :botright cope<cr>| 	"quickfix across bottom

cnoremap $m       <CR>:m''<CR>| 						"move the found line
cnoremap $d       <CR>:d<CR>``| 						"delete the found line
 
nnoremap <silent><Leader>bh :if &modifiable && !&readonly && &modified<CR>:w<CR>:endif<CR>:bnext<CR>
nnoremap <silent><Leader>bl :if &modifiable && !&readonly && &modified<CR>:w<CR>:endif<CR>:bprevious<CR>

"close buffer, leave window/split. this is bugging out now though, creating extra windows...
" nnoremap <expr><silent> <Leader>x len(filter(range(1, bufnr('$')), 'buflisted(v:val)')) == 1 ? ':bd<CR>' : ':bp<CR>:bd #<CR>'
nnoremap <Leader>x 		:Sayonara!<CR>| 			"same as above, via plug

map <Leader>cdh      	:cd %:p:h<CR>:pwd<CR>|"go to home dir

nnoremap <Leader>ws  	:%s/\s\+$//<cr>:let @/=''<CR>| "Strip EOL whitespace
map <Leader>err      	:cp<cr>| 							"check for errors

nnoremap <Leader>cul 	:set cursorline!<CR>|  "toggle cursorline
nnoremap <Leader>cuc 	:set cursorcolumn!<CR>|"toggle cursorcolumn

nnoremap <Leader>d 		:let g:col=virtcol(".")<CR>YP:TComment<CR>j:call cursor(0, g:col)<CR>| "comment+duplicate line, retain cursor pos
nnoremap <Leader>D 		:let g:col=virtcol(".")<CR>YPj:call cursor(0, g:col)<CR>| 				"duplicate line, retain cursor pos

nnoremap <Leader>zx 	:set foldclose!<CR>| 	"toggle autofold, read up how to do...
nnoremap <Leader>zt 	:set foldenable!<CR>|	"toggle use folds
nnoremap <Leader>zä 	:g//foldopen<CR>| 		"open all folds with search results..

nmap <Leader>ju 			:jumps<CR>| 					"list previous positions
nmap <Leader>ch 			:changes<CR>
nnoremap <Leader>' 		``| 									"go to previous position incl column

nnoremap <Leader>ms 	:mess<CR>

vmap <C-r>		 				<C-c>:%s/<c-r>=GetVisual()<CR>//g<left><left>|"replace all instances of selected text (escape-safe)
map <Leader>gd 				[I:let nr = input("Which one: ")<Bar>exe "normal! " . nr ."[\t"<CR>|"list definitions, then jump

nnoremap <Leader>M 	 	:make<CR>

"{{{2 				UTILITY AND MISC

nnoremap <Leader>pf 	:set paste!<CR>| 										"kill paste mode when gets stuck there

nnoremap <Leader>pro 	:call TestPerformance()<CR>| 				"start :profile, press again to stop
" nnoremap <Leader>prof :profile pause<CR>

nnoremap <Leader>ico 	:call ColDevicons_init()<CR>| 			"when bugs out
nnoremap <Leader>sss 	:syntax sync fromstart<CR>|					"fix when hl bugs out

nnoremap <Leader>co 	:call CaptureOutput('')<left><left>|"yay very nice, show output from something in a new split...
nnoremap <Leader>map 	:call CaptureOutput('map')<CR>| 		"get curr map in new split
nnoremap <Leader>syn 	:call ShowSyntaxColors()<CR>


nnoremap <Leader>ssh 	:setfiletype sh<CR>
nnoremap <Leader>vim 	:setfiletype vim<CR>

nnoremap <Leader>sv 	:mkview<CR>
nnoremap <Leader>lv 	:loadview<CR>

nmap <Leader>vc     	:sp $MYVIMRC<CR>| 		"open vimrc in a new split hmm
nmap <Leader>vr 			:so $MYVIMRC<CR>| 		"manually reload vimrc
nmap <Leader>vs 			:wincmd w<CR>:mkview! 1<CR>:wincmd l<CR>:mkview! 2<CR>:mksession! ~/.vim/sessions/vimrcSession.vim<CR>:!echo "loadview \| wincmd h \| loadview" >> ~/.vim/sessions/vimrcSession.vim<CR>


"{{{2 				DIFF SPECIFIC MAPPINGS
function! SetupDiffMappings()
	if !&diff | return | endif
	" map <Esc>, :call DiffTake("h", "l")<CR>
	" map <Esc>. :call DiffTake("l", "h")<CR>
	map <Leader>1 	:diffg LO<CR>|  "get from LOCAL
	map <Leader>2 	:diffg BA<CR>|  "get from BASE
	map <Leader>3 	:diffg RE<CR>|  "get from REMOTE

	set foldcolumn =0
	set signcolumn =0
		
endfunction
augroup DiffMappings | autocmd!
	autocmd FilterWritePost * call SetupDiffMappings()
augroup END

"{{{2 				MATH CALCULATOR
nnoremap <Leader>* 		diwa<C-R>=<C-R>"*| 								"math: multiply (using expression register)
nnoremap <Leader>/ 		diwa<C-R>=<C-R>"/| 								"math: divide
nnoremap <Leader>+ 		diwa<C-R>=<C-R>"+| 								"math: add
nnoremap <Leader>- 		diwa<C-R>=<C-R>"-| 								"math: subtract
nnoremap <Leader>*2 	diwa<C-R>=<C-R>"*2<CR><C-C>| 			"math: *2
nnoremap <Leader>/2 	diwa<C-R>=<C-R>"/2<CR><C-C>| 			"math: /2
nnoremap <Leader>++ 	<C-A>| 														"math: increment
nnoremap <Leader>-- 	<C-X>| 														"math: decrement


" {{{2 				 UNUSED
" map <Leader>tag  		:sp tags<CR>:%s/^\([^	:]*:\)\=\([^	]*\).*/syntax keyword Tag \2/<CR>:wq! tags.vim<CR>/^<CR><Leader>ugh<CR>
" map <Leader>ugh  		:so tags.vim<CR>
" map <Leader>co      ggVGy:tabnew<cr>:set syntax=qf<cr>pgg| "what is this
" vnoremap <silent> * :call VisualSelection('f')<CR>|	"visual mode search, grep, replace
" vnoremap <silent> # :call VisualSelection('b')<CR>
" vnoremap <silent> gv :call VisualSelection('gv')<CR>
" vnoremap <silent> <Lkader>r :call VisualSelection('replace')<CR>
" smooth scrolling but doesnt work bc rebinds and also doesnt work anyways
" map <C-U> <C-Y><C-Y><C-Y><C-Y><C-Y><C-Y><C-Y><C-Y><C-Y><C-Y><C-Y><C-Y><C-Y><C-Y><C-Y><C-Y>
" map <C-D> <C-E><C-E><C-E><C-E><C-E><C-E><C-E><C-E><C-E><C-E><C-E><C-E><C-E><C-E><C-E><C-E>
"using vim-surround for this instead...
" nnoremap <Leader>" viw<esc>a"<esc>hbi"<esc>lel| 					" surround word  with ""
" nnoremap <Leader>' viw<esc>a'<esc>hbi'<esc>lel| 					" surround word  with ''
" nnoremap <Leader>( viw<esc>a)<esc>hbi(<esc>lel| 					" surround word  with ()
" nnoremap <Leader>[  viw<esc>a]<esc>hbi[<esc>lel| 					" surround word  with [] 
" nnoremap <Leader>)  viw<esc>a}<esc>hbi{<esc>lel| 					" surround word  with {}. not trigger ) not { latter bugs out for some reason 
" }}} " }}}

"{{{1 				 KEY BINDINGS - FILETYPE SPECIFIC
augroup PerFileTypeBindings | autocmd!

autocmd FileType 	clojure 	nmap <Leader>r :write<CR>:Require<CR>| 		"reload clojure in REPL
autocmd FileType  elm 			nnoremap <Leader>el :ElmEvalLine<CR>
autocmd FileType  elm 			vnoremap <leader>es :<C-u>ElmEvalSelection<CR>
autocmd FileType  elm 			nnoremap <Leader>em :ElmMakeCurrentFile<CR>
autocmd FileType 	javascript nnoremap <silent><buffer> gb :TernDef<CR>
autocmd FileType 	c,cpp 		nmap gd	 <Plug>(clang_complete_goto_declaration)
autocmd FileType 	c,cpp	 		nmap gdp <Plug>(clang_complete_goto_declaration_preview)
autocmd FileType 	tmux			nnoremap <M-w> :w<CR>:call system('tmux source ~/.tmux.conf')<CR>| "auto-source tmux.conf when writing to it

augroup END "}}}
"⸏⸏⸏⸏⸏⸏⸏⸏⸏⸏⸏⸏⸏⸏⸏⸏⸏⸏⸏⸏⸏⸏⸏⸏⸏⸏⸏⸏⸏⸏⸏⸏⸏⸏⸏⸏⸏⸏⸏ 

" ̅ ̅ ̅ ̅ ̅ ̅ ̅ ̅ ̅ ̅ ̅ ̅ ̅ ̅ ̅ ̅ ̅ ̅ ̅ ̅ ̅ ̅ ̅ ̅ ̅ ̅ ̅ ̅ ̅ ̅ ̅ ̅ ̅ ̅ ̅ ̅ ̅ ̅ ̅ ̅
" {{{1 				KEY BINDINGS FOR PLUGINS

""{{{2 				LANCH DE MAD BARZ
"lots of 'map's here and not nmap or nnoremap i guess bc some of these have their own modes and want to be global or whatever? meh
map <Leader>n      	:NERDTreeToggle<CR>|					"
map <Leader>N       :NERDTreeFocus<CR>| 					"
map <Leader>nn      :NERDTreeClose<CR>|						"
map <Leader>nf 			:NERDTreeFind<CR>
let NERDTreeMapUpdirKeepOpen 			='..'
" let NERDTreeMapActivateNode 			='<Space><Space>'  "['<Space><Space>', 'o']

map <Leader>pp 			:CtrlPBuffer<CR>|							"ctrlp buffer search
map <Leader>p 			:CtrlPMixed<CR>|							"ctrlp mixed search
map <Leader>F 			:FZF<CR>| 										"well
" imap <S-Tab> 	<Plug>(fzf-complete-line)
imap <M-Left> <Plug>(fzf-maps-o)
map <Leader>u 			:UndotreeToggle<CR>| 					"undotree
map <Leader>b  			:BuffergatorToggle<cr>| 			"View the entire list of buffers open
" unmap ,t
" unmap ,T
nmap <Leader>bj 		:BuffergatorMruCyclePrev<cr>|	"Go to the previous buffer open
nmap <Leader>bk 		:BuffergatorMruCycleNext<cr>|	"Go to the next buffer open
nmap <Leader>t 			:TagbarToggle<CR>
nmap <Leader>T 			:TagbarTogglePause<CR>
map <Leader>bt 			:BuffergatorTabsOpen<CR>
map <Leader>bT 			:BuffergatorTabsClose<CR>

nmap <Leader>st 		:Startify<CR>| 								"wah

"{{{2 				INCSEARCH 
map /              		<Plug>(incsearch-forward)
map ?              		<Plug>(incsearch-backward)
map g/             		<Plug>(incsearch-stay)
" noremap <silent><expr> /  				incsearch#go(<SID>incsearch_config())
" noremap <silent><expr> ?  				incsearch#go(<SID>incsearch_config({'command': '?'}))
" noremap <silent><expr> g/ 				incsearch#go(<SID>incsearch_config({'is_stay': 1}))
noremap <silent><expr> <Leader>/ 	incsearch#go(<SID>config_easyfuzzymotion())

noremap <silent><expr> z/ 				incsearch#go(<SID>config_fuzzyall())
noremap <silent><expr> z? 				incsearch#go(<SID>config_fuzzyall({'command': '?'}))
noremap <silent><expr> zg? 				incsearch#go(<SID>config_fuzzyall({'is_stay': 1}))

"{{{2 				EASYMOTION
map  <Leader>f 				<Plug>(easymotion-bd-f)| 		"one char, like f
xmap <Leader>s    		<Plug>(easymotion-s2)
omap <Leader>s    		<Plug>(easymotion-s2)
" nmap <Leader>ss    		<Plug>(easymotion-overwin-f2)|		"s{char}{char} to move to {char}{char}
" nmap <Leader>s 				<Plug>(easymotion-sl)| 			"this is the vim-seeky one?
nmap <Leader>s 				<Plug>(easymotion-s2)
omap z            		<Plug>(easymotion-sn)
map <Leader>L 				<Plug>(easymotion-bd-jk)| 	"move to line
map  <Leader>w 				<Plug>(easymotion-bd-w)| 		"move to word

map <Leader>gj 				<Plug>(easymotion-j)| 			"nive like 30j but with letters. doubtful
map <Leader>gk 				<Plug>(easymotion-k)
"{{{2 				TEXTMANIP
xmap <C-h>        		<Plug>(textmanip-move-left)
xmap <C-j>        		<Plug>(textmanip-move-down)
xmap <C-k>       		 	<Plug>(textmanip-move-up)
xmap <C-l>        		<Plug>(textmanip-move-right)
nmap <Leader>o 				<Plug>(textmanip-blank-below)
nmap <Leader>O 				<Plug>(textmanip-blank-above)
"{{{2 					MULTIPLE CURSORS

nnoremap <silent> <M-N> :MultipleCursorsFind <C-R>/<CR>
vnoremap <silent> <M-N> :MultipleCursorsFind <C-R>/<CR>
let g:multi_cursor_start_key='<C-n>' 	"seperate starting multicursor mode from selecting next

"{{{2 				 REPEAT MOTION
let g:repeatable_motions_default_mappings 	=0
map <Leader>. 				<Plug>RepeatMostRecentMotion|"repeat motion
"below not working very well...
map <Leader><Up> 			<Plug>RepeatMotionUp|				"use arrow keys to repeat motions in directions
map <Leader><Down> 		<Plug>RepeatMotionDown
map <Leader><Right> 	<Plug>RepeatMotionRight
map <Leader><Left> 		<Plug>RepeatMotionLeft
"{{{2 				 TAB NAVIGATION via airline
nmap <leader>t1				<Plug>AirlineSelectTab1
nmap <leader>t2				<Plug>AirlineSelectTab2
nmap <leader>t3				<Plug>AirlineSelectTab3
nmap <leader>t4				<Plug>AirlineSelectTab4
nmap <leader>t5				<Plug>AirlineSelectTab5
nmap <leader>t6				<Plug>AirlineSelectTab6
nmap <leader>t7				<Plug>AirlineSelectTab7
nmap <leader>t8				<Plug>AirlineSelectTab8
nmap <leader>t9				<Plug>AirlineSelectTab9
nmap <leader>t-				<Plug>AirlineSelectPrevTab
nmap <leader>t+				<Plug>AirlineSelectNextTab
nmap <Leader>tn							:tabnew<CR>
"}}}
"{{{2 				GITGUTTER
nnoremap <Leader>ggp 				<Plug>GitGutterPreviewHunk| 					"look at hunk under cursor in preview window
nnoremap <Leader>ggu 				<Plug>GitGutterUndoHunk| 					"
nnoremap <Leader>ggs 				<Plug>GitGutterStageHunk| 					"
nnoremap <Leader>ggd 				:let g:gitgutter_diff_base=''<Left>| 		"gitgutter diff-against. list commits fzf to pick would be good
" nnoremap <Leader>ggm 				:let g:gitgutter_diff_base ='master' \| GitGutter<CR>| 	"diff against master
nnoremap <Leader>ggm 				:call GitGutterDiff('master')<CR>| 			"test
nnoremap <Leader>ggh 				:let g:gitgutter_diff_base ='head' \| GitGutter<CR>| 		"diff against head
nnoremap <Leader>ggi 				:let g:gitgutter_diff_base ='' \| GitGutter<CR>| 				"diff against last commit/default
nnoremap <Leader>ggb 				:let g:gitgutter_diff_base =system("git merge-base master $(git rev-parse head)") \| GitGutter<CR>
function! GitGutterDiff(diff)
	let g:tol_gitgutter_diff_base_orig=g:gitgutter_diff_base 			"stash so can go back quickly...
	let g:gitgutter_diff_base 				=a:diff
	GitGutter
endfunction "}}}

nnoremap <Leader>shl 				:SemanticHighlightToggle<CR>| 			"toggle semantic highlight for vars..
nnoremap <silent><Leader>ct :silent Dispatch! ctags_gen<cr>| 		"noneed really cause tagbar handles auto

map p               <Plug>(miniyank-autoput)| 		"miniyank replaces normal paste
map P               <Plug>(miniyank-autoPut)| 		"(imap paste rebound in normal section)
map <M-y>           <Plug>(miniyank-cycle)| 			"which works because reg map here not noremap
map pp 							<Plug>(miniyank-cycle)| 			"so much faster hey 			
" nnoremap <M-p> 			<Plug>(miniyank-cycle)| 			"just a lil extra

map <M-->           			:TComment<CR>| 					"comment/uncomment curr line
map -           					:TComment<CR>| 					"comment/uncomment curr line even more better easier
imap <M-->     			 <C-o>:TComment<CR>| 					"while in insert
map + 							<Plug>(expand_region_expand)
map ++							<Plug>(expand_region_shrink)
let g:AutoPairsShortcutToggle 		='<Leader>ap' 	"clear autopairs default binds (to free up M-p)
let g:AutoPairsShortcutFastWrap 	='<Leader>apw'
let g:AutoPairsShortcutJump 			='<Leader>apj'
let g:AutoPairsShortcutBackInsert ='<Leader>api'

" nnoremap <silent><M-m> 	 	:MaximizerToggle!<CR>| 	"maximize/restore window
nnoremap <silent><M-m> 	 	:call MaximizeWindow()<CR>| 	"maximize/restore window
nmap <silent><Leader>gv 	:ToggleGoldenViewAutoResize<CR>

nmap <silent><Leader>ek 	<Plug>(ale_previous_wrap)
nmap <silent><Leader>ej 	<Plug>(ale_next_wrap)
" nnoremap <Leader>pio 			:call SetupPlatformioEnvironment(expand("%:p:h"))<CR>

nnoremap <Leader>de 			:Denite | "
call denite#custom#map('insert', '<C-j>', '<denite:move_to_next_line>', 'noremap')
call denite#custom#map('insert', '<C-k>', '<denite:move_to_previous_line>', 'noremap')


nnoremap # 								:Lista<CR>
" nnoremap #3 							:ListaResume<CR>
nnoremap ## 							:ListaResume<CR>
nnoremap ** 							:ListaCursorWord<CR>
nnoremap *** 							:ListaResumeCursorWord<CR>
nnoremap <Leader>w# 			:sp<CR>:ListaResumeCursorWord<CR>

"{{{2 				MULTIPAGE
function! MultiPage() "TODO: set some register to current line pos
	split | wincmd T "create split, move window to new tab
	MPageToggle
	windo set wrap! | call DisableRelativeNumbers()
	10wincmd l 		"move to rightmost window bc scrolling only works from that end for some reason
endfun
nnoremap <Leader>mp 			:call MultiPage()<CR>| 	"}}}

let g:NumberToggleTrigger	='<Leader>rn'
nnoremap <Leader>rnf 			:call DisableRelativeNumbers()<CR>

nnoremap <Leader>color 		:ColorToggle<CR>:ColorSwapFgBg<CR>| 	"highlight color names/codes with their color
nnoremap <Leader>nocolor 	:ColorClear<CR>| 									"off	



nnoremap <Leader>PI 			:w<CR>:PlugUpgrade<CR>:sleep<CR>:PlugClean!<CR>:sleep<CR>:PlugInstall<CR>:3sleep<CR>:PlugUpdate<CR>| "vim-plug install+update+upgrade
nnoremap <Leader>pi 			:w<CR>:PlugInstall<CR>

"Language Client Server completion thingy mapping yooe
nnoremap <silent> <Leader>K 	:call LanguageClient_textDocument_hover()<CR>
nnoremap <silent> <Leader>gd 	:call LanguageClient_textDocument_definition()<CR>
nnoremap <silent> <Leader>re 	:call LanguageClient_textDocument_rename()<CR>

nnoremap <Leader>lc 			:LanguageClientStart<CR>

"{{{2 				 VIM-PLUG EXTRAS


function! VimAwesomeComplete() abort 			"vimawesome.com
let prefix = matchstr(strpart(getline('.'), 0, col('.') - 1), '[.a-zA-Z0-9_/-]*$')
echohl WarningMsg | echo 'Downloading plugin list from VimAwesome' | echohl None
ruby << EOF
require 'json'
require 'open-uri'

query = VIM::evaluate('prefix').gsub('/', '%20')
items = 1.upto(max_pages = 3).map do |page|
	Thread.new do
		url  = "http://vimawesome.com/api/plugins?page=#{page}&query=#{query}"
		data = open(url).read
		json = JSON.parse(data, symbolize_names: true)
		json[:plugins].map do |info|
			pair = info.values_at :github_owner, :github_repo_name
			next if pair.any? { |e| e.nil? || e.empty? }
			{word: pair.join('/'),
				menu: info[:category].to_s,
				info: info.values_at(:short_desc, :author).compact.join($/)}
		end.compact
	end
end.each(&:join).map(&:value).inject(:+)
VIM::command("let cands = #{JSON.dump items}")
EOF
if !empty(cands)
	inoremap <buffer> <c-v> <c-n>
	augroup _VimAwesomeComplete
		autocmd!
		autocmd CursorMovedI,InsertLeave * iunmap <buffer> <c-v> | autocmd! _VimAwesomeComplete
	augroup END

	call complete(col('.') - strchars(prefix), cands)
endif
return ''
endfunction

augroup VimAwesomeComplete | autocmd!
	autocmd FileType vim 		inoremap <c-x><c-v> 	<c-r>=VimAwesomeComplete()<cr>
augroup END


function! s:plug_gx() "open plug under cursor in repo
	let line = getline('.')
	let sha  = matchstr(line, '^  \X*\zs\x\{7}\ze ')
	let name = empty(sha) ? matchstr(line, '^[-x+] \zs[^:]\+\ze:') : getline(search('^- .*:$', 'bn'))[2:-2]
	let uri  = get(get(g:plugs, name, {}), 'uri', '')
	if uri !~ 'github.com' | return | endif
	let repo = matchstr(uri, '[^:/]*/'.name)
	let url  = empty(sha) ? 'https://github.com/'.repo : printf('https://github.com/%s/commit/%s', repo, sha)
	call netrw#BrowseX(url, 0)
endfunction

function! s:vimrc_gx() "vimrc open plug under cursor tol test
	" let line = getline('.')
	let line  	="Plug 'wesQ3/vim-windowswap'"

	let sha  		=matchstr(line, 'Plug*')
	echo sha
	" let name = empty(sha) ? matchstr(line, '^[-x+] \zs[^:]\+\ze:') : getline(search('^- .*:$', 'bn'))[2:-2]
	let uri  = 'github.com'
	" let repo = matchstr(uri, '[^:/]*/'.name)
	let url  		=empty(sha) ? 'https://github.com/'.repo : printf('https://github.com/%s/commit/%s', repo, sha)
	echo url
	" call netrw#BrowseX(url, 0)
endfunction

augroup PlugGx | autocmd!
	autocmd FileType vim-plug  nnoremap <buffer><silent>gx :call <sid>plug_gx()<cr>
	" autocmd BufReadPost .vimrc nnoremap <buffer><silent>gx :call <sid>vimrc_gx()<cr>
augroup END " }}}

" }}}
"⸏⸏⸏⸏⸏⸏⸏⸏⸏⸏⸏⸏⸏⸏⸏⸏⸏⸏⸏⸏⸏⸏⸏⸏⸏⸏⸏⸏⸏⸏⸏⸏⸏⸏⸏⸏⸏⸏⸏ 



"{{{1 				VIMPAGER BS

let g:vimpager = {}
let g:less     = {}
if exists('g:vimpager.enabled') 						"vimpager specific settings...
" if exists('g:vimpager') 						"vimpager specific settings...
	set nocursorline
	set showtabline 			=1
	set nowrap
	sign unplace *
	AirlineToggle

"   if exists('g:vimpager.ptree') && g:vimpager.ptree[-2] == 'wman'
"     set filetype=man
" 	endif
endif
" let g:vimpager.ansiesc = 0
"
function! LessStatusLine() "{{{2
    redir => pos
    silent! file
    redir END
    " remove trailing newline
    let pos = substitute(pos, '[\r\n]\+', '', 'g')
    " remove any beginning quotes
    let pos = substitute(pos, '^"*', '', '')
    " remove tmp dir path
    if exists('a:opts.tmp_dir')
        let pos = substitute(pos, '^/*\V' . a:opts.tmp_dir . '\m/*', '', '')
        let pos = substitute(pos, '^/*\V' . resolve(a:opts.tmp_dir) . '\m/*', '', '')
    else
        let pos = substitute(pos, '^.*/', '', '')
    endif
    " remove possible [readonly] or [Modified] tag
    let pos = substitute(pos, '\[\%(readonly\|Modified\)\]\s\+', '', '')
    " remove closing quote
    let pos = substitute(pos, '"\(\s\+\d*\s*line\)', '\1', '')
    " urldecode
    let pos = substitute(pos, '%\(\x\x\)', '\=nr2char("0x" . submatch(1))', 'g')
    " add help message
    let leader = exists('g:mapleader') ? g:mapleader : '\'
    let pos .= "  [ Press '".leader."h' for BUTT ]"
    " Trim the status line to fit the window width.
    let width = &columns - 12
    let pos = len(pos) >= width ? '<' . pos[-width+1:-1] : pos
    highlight VimpagerStatusLine ctermbg=NONE ctermfg=DarkMagenta guibg=NONE guifg=#FFFFFF
    echohl VimpagerStatusLine
    redraw
    unsilent echo pos
    echohl None

endfunction "}}}

" let g:vimpager = { 'cursorline': 0, 'showtabline': 1, 'wrap': 0 }
let g:vimpager 					={'showtabline': 0}
let g:less 							={'scrolloff': 0 }
" let g:less.statusfunc 	='LessStatusLine' 							"vimpager statusline
let g:less.number =1

function! HideCursorInLessMode() "{{{2
    if exists('g:less.buffers.'.bufnr('%').'.enabled') && g:less.buffers[bufnr('%')].enabled ==# 1
        if &l:t_ve !=# ''
            let s:current_t_ve = &l:t_ve
            setlocal t_ve=
        endif
    else
        if exists('s:current_t_ve') && &l:t_ve ==# ''
            let &l:t_ve = s:current_t_ve
            normal! M
        endif
    endif
endfunction

function! RestoreCursor()
    if exists('s:current_t_ve') && s:current_t_ve !=# ''
        let &t_ve = s:current_t_ve
    endif
endfunction
"}}}
" augroup hide_cursor_for_less
"     autocmd!
"     autocmd BufWinEnter,CursorHold,CursorHoldI,CursorMoved,CursorMovedI * call HideCursorInLessMode()
"     autocmd VimLeave * call RestoreCursor()
" augroup END
"}}}


" ̅ ̅ ̅ ̅ ̅ ̅ ̅ ̅ ̅ ̅ ̅ ̅ ̅ ̅ ̅ ̅ ̅ ̅ ̅ ̅ ̅ ̅ ̅ ̅ ̅ ̅ ̅ ̅ ̅ ̅ ̅ ̅ ̅ ̅ ̅ ̅ ̅ ̅ ̅ ̅
""{{{1 				DEBUG / TROUBLESHOOT / FIXES

"{{{2					 slow scrolling splits on left/right:
" first noticed because having nerdtree etc open would make shit mad laggy
" only happens sideways, a lone horiz split is still fast...
"
" gets exponentially worse with num of splits
"
" NOT RELATED:
" tmux / 24bit in tmux / etc - makes it worse I think but not root cause
" nvim - def same in vim
" termguicolors
" signcolumn
" cursorline / colorcolumn
" lazyredraw
"
" iterm2 --beta / --nightly
"
" MAYBE:
" iterm 
" to reverse lol...
" 
"
" DEFINITELY:
" multiple scrolling regions, something?
" same phenomenom but actually 1000x worse scrolling with two shells open in a couple tmux splits...
" but not in Terminal.app!...
"
"{{{2 				whatever
"
"
"

"}}}
"
"]]]
"________________________________________


"‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾
""{{{1 				NOTES

""{{{2  			TEXT OBJECTS
	"dl"	delete character (alias: "x")		|dl|
	"diw"	delete inner word								*diw*
	"daw"	delete a word										*daw*
	"diW"	delete inner WORD (see |WORD|)	*diW*
	"daW"	delete a WORD (see |WORD|)			*daW*
	"dgn" delete the next search match    *dgn*
	"dd"	delete one line									|dd|
	"dis"	delete inner sentence						*dis*
	"das"	delete a sentence								*das*
	"dib"	delete inner '(' ')' block			*dib*
	"dab"	delete a '(' ')' block					*dab*
	"dip"	delete inner paragraph					*dip*
	"dap"	delete a paragraph							*dap*
	"diB"	delete inner '{' '}' block			*diB*
	"daB"	delete a '{' '}' block					*daB*

"{{{2					SURROUND

" Old text(*=cursor)        Command     New text ~

" "Hello *world!"           ds"         Hello world!
" [123+4*56]/2              cs])        (123+456)/2
" "Look ma, I'm *HTML!"     cs"<q>      <q>Look ma, I'm HTML!</q>
" if *x>3 {                 ysW(        if ( x>3 ) {
" my $str = *whee!;         vllllS'     my $str = 'whee!';	
" DELETE:::
" "Hello *world!"           ds"         Hello world!
" (123+4*56)/2              ds)         123+456/2
" <div>Yo!*</div>           dst         Yo!
" CHANGE:::
" "Hello *world!"           cs"'        'Hello world!'
" "Hello *world!"           cs"<q>      <q>Hello world!</q>
" (123+4*56)/2              cs)]        [123+456]/2
" (123+4*56)/2              cs)[        [ 123+456 ]/2
" <div>Yo!*</div>           cst<p>      <p>Yo!</p>

"""""""   *ys* takes a valid Vim motion or text object as the first object, and wraps it using the second argument as with |cs|.  (It's a stretch, but a good mnemonic for "ys" is "you surround".)
" Hello w*orld!             ysiw)       Hello (world)!

"""""""   As a special case, *yss* operates on the current line, ignoring leading whitespace.
"       Hello w*orld!       yssB             {Hello world!}

"""""""   There is also *yS* and *ySS* which indent the surrounded text and place it on a line of its own.

""{{{2  			 FOLDS
"			zf#j 	 		 creates a fold from the cursor down # lines.
"			zf/string  creates a fold from the cursor to string.
"			zj				 moves the cursor to the next fold.
"			zk				 moves the cursor to the previous fold.
"			zo				 opens a fold at the cursor.
"			zO				 opens all folds at the cursor.
"			zm				 increases the foldlevel by one.
"			zM				 closes all open folds.
"			zr				 decreases the foldlevel by one.
"			zR				 decreases the foldlevel to zero -- all folds will be open.
"			zd				 deletes the fold at the cursor.
"			zE				 deletes all folds.
"			[z				 move to start of open fold.
"			]z				 move to end of open fold.


"ctrl + w _ "Max out the height of the current split"{{{2
"ctrl + w | "Max out the width of the current split"
"ctrl + w = "Normalize all split sizes, which is very handy when resizing terminal
"Ctrl+W R "Swap top/bottom or left/right split
"Ctrl+W T "Break out current window into a new tabview
"Ctrl+W o "Close every window in the current tabview but the current one"}}}

" normal mode {  } = move to prev/next empty line
"
" [I list all lines containing word under cursor! remap to something?
" or reimplement / find version that retains highlighting and actually highlights search
"
" C-o / C-i = go back to prev locations _including in other buffers_. NICE! so works for help etc..
"
" q: and q/  	= highlighted command window with list of prev cmds/searches
" <C-X><C-L> = complete entire lines, p cool!

" gf open file under cursor (+ gd go to definition)
" gx = open url under cursor (not from plugin, is part of vim)
"
" from scriptease: K does viml help, zS show highlighting group under cursor,
" :Verbose auto redir to preview window, etc... good.
"
" gp / gP = paste without moving cursor
"
" !!!!! tab/s-tab navigates matches while searching, without having to press enter and 'commit'... 
" not sure if vim or from some plug, but def awesome!

" explains weird <expr> '' "" differences: 			use double-quotes and "\..." notation |expr-quote|
" feedkeys("\<CR>") simulates pressing of the <Enter> key
" feedkeys('\<CR>') pushes 5 characters.

" Toggle case "HellO" to "hELLo"		g~	   then a movement.
" Uppercase "HellO" to "HELLO" 			gU	   then a movement.
" Lowercase "HellO" to "hello" 			gu	   then a movement.
" Alternatively, you can visually select text then press 
" ~ to toggle case, U uppercase, u lowercase.


" Finding help stuff - each help topic has a context:
" Prefix	Example				Context
" :				:h :r					ex command (starting with a colon)
" none		:h r					normal mode
" v_			:h v_r				visual mode
" i_			:h i_CTRL-W		insert mode
" c_			:h c_CTRL-R		ex command line
" /				:h /\r				search pattern (in this case, :h \r also works)
" '				:h 'ro'				option
" -				:h -r					Vim argument (starting Vim)
"

"not vim but | pipe is or in fzf, dun forget

"no specific setting to toggle the sign column. clear it with:
" :sign unplace *

" step back and forth in history purely time-wise (ignoring branches):
" 10g-
" 10g+
" combine it 

"}}}
"⸏⸏⸏⸏⸏⸏⸏⸏⸏⸏⸏⸏⸏⸏⸏⸏⸏⸏⸏⸏⸏⸏⸏⸏⸏⸏⸏⸏⸏⸏⸏⸏⸏⸏⸏⸏⸏⸏⸏ 
