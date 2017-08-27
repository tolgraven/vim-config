scriptencoding utf-8
" vim: set shiftwidth=2 tabstop=2 softtabstop=2 ft=vim fdm=marker:
" if &shell =~# 'fish$' | set shell=zsh | endif		"some stuff apparently still iffy about this? obvs fucks fish with :terminal etc tho, workaround?

"{{{1 				PLUGIN LOAD
filetype off "{{{2
call plug#begin('~/.vim/plugged')
"}}}

"{{{2					 --- FUZZ ME 'ARD | WIT UR <BAR>-LINE 	  					PLUG
Plug 'ctrlpvim/ctrlp.vim' | Plug 'tacahiroy/ctrlp-funky' | Plug 'sgur/ctrlp-extensions.vim' | Plug 'jasoncodes/ctrlp-modified.vim'
Plug '/usr/local/opt/fzf' | Plug 'junegunn/fzf.vim' "proper way when already have brew fzf. should check if path exists first tho, for linuxbrew etc
Plug 'Shougo/denite.nvim' "| Plug 'Shougo/neomru.vim', {'on': 'Denite'} | Plug 'Shougo/unite.vim' "if loading denite on demand would need to check if exists before calling setup funcs...
Plug 'francoiscabrol/ranger.vim'
" Plug 'tiagofumo/vim-nerdtree-syntax-highlight' 	"colored devicons - better than other script?

Plug 'morhetz/gruvbox' 											"second best theme only cunts disagree c/d??
if !exists('g:pager_mode_so_fuckoff_all_fatasses')
Plug 'vim-airline/vim-airline' | Plug 'vim-airline/vim-airline-themes'
Plug 'mhinz/vim-startify'  									"nice lil start page/session manager
Plug 'mbbill/undotree' ", {'on': 'UndotreeToggle'}
Plug 'majutsushi/tagbar' ", {'on': 'TagbarToggle'}
Plug 'scrooloose/nerdtree'
" Plug 'Xuyuanp/nerdtree-git-plugin'				 "on-again off-again slowdown issues ugh
Plug 'ryanoasis/vim-devicons' 							"post-emoji bullshit for adult idiots. so fucking pretty
endif

Plug 'padde/jump.vim'												"autojump in vim
" Plug 'mileszs/ack.vim'
" Plug 'rking/ag.vim'                       "nvim stallign on this leading to the 100% cpu bs, questionmark
Plug 'gcmt/taboo.vim' 											"rename tabs and stuff
" Plug 'bling/vim-bufferline'                 "buffer list in cmd bar? sounds nifty, mostly just random spew there anyways. But ugly and too aggro. Fork and fix?
"{{{2					 --- SYNTAX B REAL COLERFULL												PLUG
Plug 'sheerun/vim-polyglot' 								"shit ton of different languages
let g:polyglot_disabled=['tmux', 'json', 'python', 'clojure', 'fish'] "have better replacements
"{{{ HONEST HARDWORKING MURICAN SYNTAXES OUT OF A JOB BC POLYGLOT IMGRANTS???
" Plug 'xolox/vim-misc' | Plug 'xolox/vim-lua-ftplugin', {'for': 'lua'} "| Plug 'xolox/vim-lua-inspect'
" Plug 'darfink/vim-plist' ", 		{'for': 'plist'} vimplug doesnt recognize plist files
"}}}
Plug 'wilriker/vim-fish',    		{'for': 'fish'} "more active than 'dag/vim-fish' and kballard fork
Plug 'tmux-plugins/vim-tmux' 								"polyglot has a bullshit one
Plug 'jez/vim-github-hub'                   "github ft
Plug 'elzr/vim-json'												"proper json hl
Plug 'cyberkov/openhab-vim' 								"openhab syntax
Plug 'reedes/vim-pencil' 										"natural text processing
Plug 'jceb/vim-orgmode' | Plug 'tpope/vim-speeddating'  "orgmode a la emacs + date incr/decr support plug so it'll stop complaining...
" Plug 'junegunn/goyo.vim' | Plug 'junegunn/limelight.vim'
Plug 'hdima/python-syntax' 									"better python syntax def

Plug 'tweekmonster/nvim-api-viewer'
" LANG UTILS
Plug 'bfredl/nvim-ipy'											"ipython integration
" Plug 'klen/python-mode', 				{'for': 'python'}
Plug 'Shougo/vinarise.vim', 			{'on': 'Vinarise'}	"hex viewer
Plug 'powerman/vim-plugin-AnsiEsc' 					"view files with ansi escape colors.
Plug 'chrisbra/Colorizer' 		"no {'on': 'ColorToggle'} bc use others first already, cant lazy-load 	highlight color names/hex w their actual color. mad slow, ugh

Plug 'diepm/vim-rest-console'
Plug 'stevearc/vim-arduino', 			{'for': 'arduino'} | Plug 'sudar/vim-arduino-snippets', 	{'for': 'arduino'} "arduino upload etc, overlaps platformio i guess, do i need?
Plug 'othree/yajs.vim',						{'for': 'javascript'} | Plug 'othree/es.next.syntax.vim', {'for': 'javascript'} "better javascript syntax inkl ES6+ES7

Plug 'tpope/vim-fireplace', 			{'for': 'clojure'} | Plug 'clojure-vim/vim-cider', 				{'for': 'clojure'}
Plug 'guns/vim-clojure-highlight',{'for': 'clojure'} | Plug 'clojure-vim/async-clj-omni', 	{'for': 'clojure'}
Plug 'venantius/vim-eastwood', 		{'for': 'clojure'} | Plug 'venantius/vim-cljfmt', 				{'for': 'clojure'}	"clojure linter + formatter
Plug 'tpope/vim-classpath', 			{'for':['clojure', 'java']} 	| Plug 'tpope/vim-salve', 	{'for': 'clojure'}	"auto clojure/java classpath
" Plug 'guns/vim-sexp', {'for': 'clojure'} | Plug 'tpope/vim-sexp-mappings-for-regular-people', {'for': 'clojure'}
Plug 'junegunn/rainbow_parentheses.vim', {'on': 'RainbowParentheses'} "active fork of kien/rainbow_parentheses.vim

" Plug 'jeaye/color_coded'										"fancy clang highlighting...no neovim support yet :/
" Plug 'arakashic/chromatica.nvim'

"{{{2					 --- COME PLEASED																PLUG
" Plug 'ervandew/supertab'
Plug 'honza/vim-snippets'
Plug 'Shougo/neosnippet' | Plug 'Shougo/neosnippet-snippets'

Plug 'w0rp/ale' 														"neovim lint

" Plug 'joonty/vdebug'												"adds itself to path again and again it seems

" Plug 'roxma/nvim-completion-manager' 			 	"neovim deoplete alt with fuzzy
" Plug 'roxma/clang_complete' 							 	"clang for ncm
" Plug 'autozimu/LanguageClient-neovim', { 'do': ':UpdateRemotePlugins' } 	"unified completion server spec client thingY

"{{{3  						DEOPLETE SOURCES
Plug 'Shougo/deoplete.nvim', 					{'do': ':UpdateRemotePlugins'}
Plug 'tweekmonster/deoplete-clang2', 	{'for': ['c', 'cpp', 'ObjC']}
Plug 'zchee/deoplete-jedi', 					{'for': 'python'}
Plug 'zchee/deoplete-go', 						{'for': 'go', 'do': 'make'} 		"breaking ale lol?
Plug 'mitsuse/autocomplete-swift', 		{'for': 'swift'}
Plug 'carlitux/deoplete-ternjs', 		  {'for': ['javascript', 'javascript.jsx']}
Plug 'ponko2/deoplete-fish',					{'for': 'fish'}
Plug 'Shougo/neco-vim', 							{'for': 'vim'}
Plug 'zchee/deoplete-zsh', 						{'for': 'zsh'}
" Plug 'Shougo/neco-syntax'           "super broken keeps adding dup autocmds... filetype syntax completion
Plug 'Shougo/context_filetype.vim'    | Plug 'Shougo/neoinclude.vim' 	"complete from included files?
Plug 'wellle/tmux-complete.vim'
" Plug 'SevereOverfl0w/deoplete-github'
" Plug 'thalesmello/webcomplete.vim'
"}}}

" Plug 'Shougo/neopairs.vim'      				"autopairs from shuogo?
" Plug 'neomake/neomake' | Plug 'coddingtonbear/neomake-platformio', {'do': ':UpdateRemotePlugins'}  "koar linting

Plug 'artur-shaik/vim-javacomplete2', {'for': 'java'}  "more moderny than 'cilquirm/javacomplete'
Plug 'davidhalter/jedi-vim', 					{'for': 'python'}
Plug 'ternjs/tern_for_vim',						{'for': ['javascript', 'javascript.jsx'], 'do': 'npm install'}
Plug 'othree/jspc.vim', 							{'for': ['javascript', 'javascript.jsx']}

Plug 'Shougo/echodoc.vim' 							"show function args in msg area after completing function name

Plug 'chrisbra/unicode.vim'							"unicode char completion

"{{{2  				 --- UTILNTTY																		PLUG
" Plug 'Khouba/indent-detector.vim'
" Plug 'marcweber/vim-addon-mw-utils'   					"tinyfunc and utils. noneed?
Plug 'tomtom/tcomment_vim', {'on': 'TComment'} 	"toggle comments better
Plug 'tpope/vim-surround' 											"put stuff around stuff
Plug 'tpope/vim-repeat' 												" . for plugins
Plug 'kana/vim-arpeggio'												"key chord support		
Plug 'jiangmiao/auto-pairs' 										"test if works better than gentle ver
" Plug 'tpope/vim-endwise'												"auto endif endfunc etc
Plug 'ConradIrwin/vim-bracketed-paste' 					"auto paste mode and back. not needed for nvim?
Plug 'bfredl/nvim-miniyank' 										"pro yank like in shell
Plug 'machakann/vim-highlightedyank'						"should be part of default vim
" Plug 'vim-scripts/highlight.vim' 								"bare fucks shit up. Find alternative 	 hl shit without :hi. toggle mark-highlight current line etc
Plug 't9md/vim-textmanip' 											"move lines around visually
Plug 'AndrewRadev/splitjoin.vim'								"break up single-line statements into multi-line ones, and vice versa
Plug 'tommcdo/vim-exchange' 										"easily flip two words/motions
Plug 'terryma/vim-expand-region' 								"select awesomely
Plug 'tomtom/tinykeymap_vim' 										"for repeating multikey stuff easier (eg. C-w-+)
" Plug 'tpope/vim-rsi' 														"readline bindings
Plug 'vim-utils/vim-husk' 											"less aggro readline bindings?
Plug 'junegunn/vim-easy-align' 									"easier more better text align than tabular
Plug 'sbdchd/neoformat' 												"format code
Plug '907th/vim-auto-save', {'for': 'text'} 		"autosave, for my note popup term
Plug 'MarcWeber/vim-addon-local-vimrc', {'for': 'text'} 	"per folder .localvimrc
Plug 'tpope/vim-tbone' 													"tmux stuff
Plug 'benmills/vimux'  | Plug 'julienr/vimux-pyutils'
Plug 'tpope/vim-eunuch' 		 										"shell tool unix stuff
Plug 'justinmk/vim-dirvish'											"aardKORE rename...dir viewer heuh
Plug 'tpope/vim-dispatch', {'on': 'Dispatch'} 	"async shell jobs etc
Plug 'tpope/vim-scriptease' 										"do debug a scriptz (+ :Verbose = auto redir to preview window, hell yeah)
Plug 'kana/vim-textobj-user' | Plug 'kana/vim-textobj-line'	| Plug 'kana/vim-textobj-entire'	| Plug 'kana/vim-textobj-indent'								"custom text objects
Plug 'vimtaku/vim-textobj-keyvalue' | Plug 'thinca/vim-textobj-between' | Plug 'saaguero/vim-textobj-pastedtext'
Plug 'jceb/vim-textobj-uri' | Plug 'kana/vim-textobj-syntax' | Plug 'rhysd/vim-textobj-continuous-line'
" Plug 'vim-scripts/marvim' 											"save macros and shit, maybe when im better with those
" Plug 'vim-scripts/repeatable-motions.vim' 			"repeat movements/motions
Plug 'nathanaelkane/vim-indent-guides'
" Plug 'kopischke/vim-stay', {'branch': 'release/1.4.0'}  "auto-persist position, folds etc on :e etc. bugs in nvim, fix
Plug 'kopischke/vim-fetch'                      "open file to line/col using format from stack traces and similar
" Plug 'lambdalisue/pinkyless.vim' 								"maybe good w a different config
Plug 'blueyed/vim-diminactive'                  "dim inactive windows
" Plug 'mtth/cursorcross.vim'
Plug 'mhinz/vim-halo'														"helper thing sorta to blink current line on timer. incorporate into meta etc...

Plug 'gfontenot/vim-xcode'

Plug 'mhinz/vim-galore'													"not actually a plug, but bunch of good vim infoz
Plug 'lifepillar/vim-cheat40'										"quick-reference

"{{{2					 --- SATNAV YOU A GLONASS															PLUG
" Plug 'itchyny/vim-cursorword'								"lighter than matchmaker.
Plug 'justinmk/vim-sneak'                   "best parts of vim-seek and easymotion in one basically
" Plug 'haya14busa/incsearch.vim'   				"atm using own version bc they refuse to fix nvim bug
Plug 'haya14busa/incsearch-fuzzy.vim'					"fuzzysearch for incsearch
Plug 'bronson/vim-visual-star-search'				"search for selection with *
Plug 'terryma/vim-multiple-cursors' 				"why is this slow as balls? fantastic, either way
Plug 'tpope/vim-unimpaired' 							"shortcuts for stuff via [], would need to rebind
" Plug 'zhaocai/GoldenView.Vim', 	{'on': 'ToggleGoldenViewAutoResize'} "buggier than a motherfucker
Plug 'szw/vim-maximizer', 			{'on': 'MaximizerToggle'}	"maximize/restore split
Plug 't9md/vim-choosewin'										"navigate to windows like tmux overlays, including windowswap functionality. Not actually slow, was only feeling problematic bc of binding and timeouts
Plug 'lacombar/vim-mpage', {'on': 'MPageToggle'} "multipage. view buffer over multiple windows, like a book
Plug 'mhinz/vim-sayonara', 	{'on': 'Sayonara'} 	"kill buffer preserve window
Plug 'Shougo/neoyank.vim' 									"yank history for unite/denite?
Plug 'tpope/vim-vinegar' 										"netrw betterer
" Plug 'airblade/vim-rooter' 								"auto change cwd to proj base.  startify can handle?
Plug 'Konfekt/FastFold' 										"make folds easier lighter on sys
Plug 'chrisbra/NrrwRgn'											"narrow region, like metabuffer but for babies I guess
Plug 'kshenoy/vim-signature'                "put marks n shit, yo
Plug 'blueyed/vim-qf_resize'

"{{{2					 --- B THE DIFFERENCED & ASSORTED LALL									PLUG
Plug 'airblade/vim-gitgutter'
Plug 'tpope/vim-fugitive'
" Plug 'jreybert/vimagit'
Plug 'lambdalisue/gina.vim'
" Plug 'jaxbot/github-issues.vim'
Plug 'vim-scripts/yate' 																		"taglist but from manual ctags
" Plug 'brettanomyces/nvim-terminus' ", {'on': 'TerminusOpen'} call nvim from term inside nvim, with :. Can't lazy load, errors
Plug 'kassio/neoterm', 							{'on': 'Tnew'} 					"the neovim terminal
" Plug 'rkitover/vimpager'
Plug 'lambdalisue/vim-pager' "| Plug 'lambdalisue/vim-manpager'
if !has('nvim') | Plug 'lambdalisue/vim-rplugin' | endif

"{{{2 				 --- FANCY JOAN FREGERT's FORKS and originals					PLUG
Plug '~/Documents/CODE/VIM/forks--/incsearch.vim' "some minor nvim bugfix, prob sorted in main now? OTHER THING: sort so does zv to open folds when tabbing through hits...
Plug '~/Documents/CODE/VIM/forks--/vim-manpager'
Plug '~/Documents/CODE/VIM/forks--/semantic-highlight.vim', {'on': 'SemanticHighlightToggle'} 		"incl patch for guicolors 'jaxbot/semantic-highlight.vim'
Plug '~/.config/nvim/scripts/ColDevicons' 			"colored devicons in nerdtree, even prettier
Plug '~/Documents/CODE/VIM/forks--/vim-numbertoggle' 		"forked 'jeffkreeftmeijer/vim-numbertoggle' auto switch on rel numbers for normal and visual?
Plug '~/Documents/CODE/VIM/forks--/vim-cursorword'

" Plug '~/Documents/CODE/VIM/forks--/webcomplete.vim'		"quick fix to not auto-launch chrome if not launched, before proper webcomplete implemented...
Plug '~/Documents/CODE/VIM/COLORS/bruvbox' 			"eventual bruvbox
Plug '~/Documents/CODE/VIM/proper-smooth.vim'
Plug '~/Documents/CODE/VIM/LISTA/metabuffer.nvim'
" Plug 'tolgraven/metabuffer.nvim'
Plug '~/Documents/CODE/VIM/proper-vim-tmux-nav'
" Plug 'tolgraven/proper-vim-tmux-nav'
"{{{2					 LAST IN ORDER
Plug 'arakashic/chromatica.nvim',	{'for': ['c', 'cpp', 'ObjC']}		"like color_coded but for nvim

"{{{2 						PLUG END
call plug#end()
" set runtimepath 					 +=~/.vim/bundle/deoplete.nvim	"this doesnt even exist so def not needed lol

let g:plug_threads 					=96 				"more simult instances when updating plugs
augroup VimPlug | autocmd!
	" autocmd VimEnter * if len(filter(values(g:plugs), '!isdirectory(v:val.dir)')) | PlugInstall --sync | q | endif	"auto install missing plugins on start
augroup END
"}}}
"⸏⸏⸏⸏⸏⸏⸏⸏⸏⸏⸏⸏⸏⸏⸏⸏⸏⸏⸏⸏⸏⸏⸏⸏⸏⸏⸏⸏⸏⸏⸏⸏⸏⸏⸏⸏⸏⸏⸏

"
" {{{1 				SETTINGS

"{{{2					COLORSCHEME - SET EARLY so vimrc errors dont look gross

let g:bruvbox_number_column 				='bg0_h' 	"
let g:bruvbox_sign_column 					='bg0_m'
let g:bruvbox_color_column          ='bg0_s'  "'bg0_h'
let g:bruvbox_fold_column						='bg0_m'  "test
let g:bruvbox_vert_split            ='bg1'
let g:bruvbox_italic 				 				=1 				"bold, underline, undercurl already enabled by default
" let g:bruvbox_italicize_strings			=1 				"bold, underline, undercurl already enabled by default
" let g:bruvbox_inverse               =0
let g:bruvbox_invert_selection			=1
" let g:bruvbox_invert_tabline        =0
let g:bruvbox_underline_cursorline	=1
let &background = get(g:, 'bg_forced', 'dark')
colorscheme														bruvbox		"gruvbox
let g:airline_theme 								='bruvbox'
"}}}

if has('nvim') "{{{2
	" let $NVIM_TUI_ENABLE_CURSOR_SHAPE=1						"deprecated in >0.2.0, use guicursor, default is:
	" set guicursor=n-v-c-sm:block,i-ci-ve:ver25,r-cr-o:hor20
	let $VISUAL =	'nvr --remote-wait'								"--remote-wait-silent

	if $TERM_PROGRAM != 'Apple_Terminal'
		set termguicolors 														"24 bit color, no iterm check bc tmux
	endif
	if $TERM_PROGRAM =~? 'iTerm.app'								"some are already handled by NVIM var above
		let &t_te 	= "\<Esc>]1337;CursorShape=1\x7" 	"reset cursor on exit (or use autocmd VimLeave)
		" let &t_SI = "\<Esc>]1337;CursorShape=1\x7" " Vertical bar in insert mode
		" let &t_EI = "\<Esc>]1337;CursorShape=0\x7" " Block in normal mode
		" let &t_SR = "\<Esc>]1337;CursorShape=2\x7" " Underline in replace mode
		" t_ti = vim start, t_te = vim exit
	else
		" let g:webdevicons_enable 			=0 							"disable devicons on mobile etc
	endif

	set noshowcmd 													"something about nvim + tmux flickering issues...
	set mouse 									=a 					"no longer autoset in neovim 0.2.0 for some reason? $TERM thing?
	set mousemodel							=popup_setpos

	set inccommand							=split			"like incsearch but for eg :substitute, showing results on the fly. 'nosplit' same but only for curr visible / without preview window. nvim exclusive feature...

augroup NeovimSpecific | autocmd!
autocmd BufEnter term://*		startinsert				 "check how we arrived, first. if from other tab page or something, dont...
	" autocmd TermOpen
		" autocmd CursorHold * rshada|wshada
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
	set laststatus						=2 									"2 = statusline even if just one pane/window

endif

"{{{2					 use iterm decslrm outside tmux
"if !'$TMUX'
  " let &t_ti = &t_ti . "\e[?69h"
  " let &t_te = "\e[?69l" . &t_te
  " let &t_CV = "\e[%i%p1%d;%p2%ds"
" endif

"{{{2 				AUTOCMDS

"{{{3 				generic
function! SignScrollbarUpdate()
	"use the extended signs function thing or like?
	" let l:height = winheight(0)
	" let l:po

	" let percent =

endfunction

augroup Focus | autocmd!
  autocmd FocusGained,BufEnter * silent! checktime  "make autoread actually read automatically... once return to window, but that's enough

	" autocmd WinEnter * normal! ze			"dirty hack test, fix so horiz view doesnt stay all shitty after windows are resized
	"way better than nothing, esp since gets triggered by my secret window-hopping while resizing
	"tho that triggering is actually problematic in itself, all those autocmds prob slowing shit down.
	" also curr making it shit itself jumping to prev pos when switching windows. weird.

	" also craps out depending on direction one is switching from? weird
	" ah, happens if other window is covering cursor before switching from right
	autocmd BufEnter		*			normal! ze

	" autocmd CursorHold				call SignScrollbarUpdate()

	"so basically does as well as is possible without moving cursor, but better ways, probably
	" at least check first if current view is actually reasonable, only act if not
	"	- compare line len, cursor pos etc
augroup END
"}}}

augroup VimStart | autocmd!
" autocmd StdinReadPre * 		 let s:std_in=1 "opens nerdtree if vim started bare + ensure startify loads as normal
" how can i get it to not run this when loading a session? and why doesnt that count as args anyways? makes no sense
" XXX also needs a check for how large curr dir is. so dont open tree if > 30 or something...
" autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | Startify | NERDTree | wincmd w | endif
" autocmd VimEnter * if argc() == 1 && isdirectory(argv()[0]) && !exists("s:std_in") | exe 'NERDTree' argv()[0] | wincmd p | enew | endif "opens nerd if vim started with dir

autocmd VimEnter		* 	call DeopleteInit()		| call ColDevicons_init()
autocmd InsertEnter *		call deoplete#enable()
" autocmd BufReadPost * 		let &colorcolumn=join(range(100,300),',') "fade bg slightly past not 80 but 100 cols bc fuck yall, 43in display innit

 " When editing a file, jump to the last known valid cursor pos, unless inside an event handler		"is this fucking me? nope something else...
autocmd BufReadPost *		if line("'\"") >= 1 && line("'\"") <= line("$") | execute "normal! g`\"" | endif

" USER EVENTS
" autocmd User Gitgutter
" autocmd User Startified				call ColDevicons_init()
autocmd User AirlineAfterInit  AirlineRefresh "need extra redraw to put my mods in

"below only triggers on exit, not on <C-z>. how hook on that?
autocmd VimLeave		*		!echo "\<Esc>]1337;CursorShape=1\x7"


augroup END

"}}}

"{{{2 				 LOOK
" set background 							=dark
set number 															"show line numbers
set numberwidth 						=3 					"min numcol width incl 1 space. 3 = eg '97 '. if <100 LOC less offset from curr line/surrounding ones when using relativenumber. default=4
set showmatch matchtime 		=3					"quickly jump to highlighted matching bracket, 3 = 0.2s?
set cursorline 													"hmm maybe turn off since iterm already has line? apparently slows
set showtabline 						=2 					"2 = tabline always. 1 = if multiple... tabs, not buffers :/
set noshowmode 													"dont show normal/insert etc, cause airline does
set shortmess               =atTcA 			"abbr cmdline msgs, truncate long ones, no completion info, no ATTENTION swapfile
set foldminlines 						=3 					"dont fold < 3 lines. 1 is default = 2 lines
set foldopen							 +=jump				"open folds on jumps duh
set foldlevelstart          =1          " default -1. 1 == open first level
set foldcolumn              =0          "enable per filetype, where relevant
set fillchars 							=fold:\ 		" blank space instead of dashes to fill folds. = not += lest get multiple
set fillchars 						 +=vert:│ 		"compare '│' to the '|' default regular pipe which leaves gaps and looks like shit. but no different unless proper font / rendering? both look same on iterm 3.0, but good on nightly/3.1 (with Fira Code / ligatures). also might be the reason shit goes slowwww when using splits, both in vim and tmux..
" set fillchars 						 +=vert:\ 		"test...

set list 															"show tabs and trails. nah, annoying, autocleanup instead
" set listchars 							=tab:░░,trail:▓
" set listchars							 +=eol:↵
let &listchars							='tab:· ,trail:·,eol:↵'
" extends:❯,precedes:❮, <- fuck these, just waste ONE ENTIRE CHAR of INFORMATION

let &colorcolumn=join(range(100,240),',') "fade bg slightly past not 80 but 100 cols bc fuck yall, 43in display innit

"}}}
set ttimeout 		ttimeoutlen	=10					"timeout for keycode sequence
set timeoutlen           		=300 				"timeout for mapped sequences
set updatetime							=250 				"time idle before bg shit runs, CursorHold etc
set redrawtime							=500				"default 2000. abort hlsearch, inccommand, :match highlighting if takes more than a sec. might help with Colorizer?
" set lazyredraw 													"less crazy glitchy spasms but overall even slower?
set shiftround
set tabstop=2 shiftwidth=2
" set expandtab smarttab								"converts tabs to spaces/inser spaces instead of tatebs at SOL
set textwidth 							=0 					"0 is default so dunno why the fuck mine gets set to 78

set belloff									=mess,spell,wildmode

set nowrap                              "no wrap by default, def right call, just toggle on with keybind
set whichwrap            	 =<,>,[,],b,s "which keys also move past eol. now arrow, b, w etc
set linebreak 													"wraps a bit smarter
set ignorecase smartcase 								"use case when explicit
set nostartofline 											"keep cursor on same column even on larger jumps
" set smartindent 												"apparently not recommended because something something deprecated and cindent blabla. not sure what difference it makes over regular autoindent.seems to make python kinda retarded?
set autoindent													"whatever the difference is supposed to be
set virtualedit 				 =block,onemore "move cursor independent of available characters, in block visual mode. +move one char past EOL
set wrapscan 								 						"Wrap search at end
set incsearch
set gdefault														"assume /g on :s/
set formatoptions						=jc,ro,ql		"various but vim default =jcroql? py tcqj so nuke t add rol?...
" j = rm comment ch on J, l = ignore if already longer, r = put comment ch on enter, o = ditto on o/O, q = format comments with gq (super fucked with or without, for inline comments...)

" set sessionoptions+=globals,localoptions "blank,buffers,curdir,folds,help,tabpages,winsize,globals,localoptions
set sessionoptions          +=globals   "blank,buffers,curdir,folds,help,tabpages,winsize,globals
set sessionoptions          -=blank	  	"if contains "blank" windows editing a buffer without a name will be restored <-this causing eg nerdtree bs with sessions? lets try
" set sessionoptions=blank,curdir,folds,help,tabpages,winpos "recommended by startify
set undofile
set undolevels 							=1000 			"cap a bit, seems to make undotree a lil happier
set noswapfile 													"nope, swap's too annoying. how actally disable the stupid warning?		" what no ofc we want a swap file duh, as long as dir is set
set autowriteall
set fileformats 					=unix,dos,mac "default is mac first, so sort
set hidden 															"
set confirm 														"prompt instead of error for eg :q and :e
" set verbosefile 		=~/.vim/verbosefile "send messages to a file to tail instead of shitty in-vim handling and redir angst?

set synmaxcol								=300				"default 3000, stop syntax highlighting after x cols... should prob toggle it based on linewrap?
set conceallevel=2 concealcursor=niv		"for neosnippet, according to readme? hmm shouldn't it be switching that on and off automatically like?
" set splitbelow													" splits for help etc go below XXX how enable this for everything except preview window? because preview becomes useless when covered by pumenu...
set splitright													"and to the right... meaning 'back... and to the left' has finally lost its staying power. I blame bee movie
set switchbuf 							=usetab 		"open prev/next buffer in split if not already visible somewhere?
set scrolloff=4 sidescrolloff=2 				"autoscrolls before hits end
set sidescroll 							=1 					"dont jump a zillion columns when scrolling sideways. HOW not the default??
set winminwidth 						=0 					"fully minimize to side
set winminheight 						=0 					"fully minimize windows 			=3 "so still see some when maximizing
set previewheight 					=15 				"regular height of preview window unless otherwise specified
set noequalalways 						 					"dont fuck with window sizes when I open and close others. better this way, then can just equalize w <C-w>= if needed
set eadirection 						=ver 	      "ver or hor, default 'both'. tells when equalalways should apply
set cmdwinheight						=15
if executable('ag') " Use ag over grep
  set grepprg=ag\ --nogroup\ --nocolor
endif

let mapleader								="\<Space>"	"MUST BE SET BEFORE ANY LEADER MAPPINGS ARE DEFINED
let maplocalleader					=',' 				"localleader if I ever get on using that... might be good

"{{{2 				 COMPLETELY WILD
                                        
" set completeopt             =longest,menuone,preview,noinsert,noselect "only correct way to set it
set completeopt             =menu,preview,noinsert,noselect    "skip longest since deoplete fuzzy fucking that anyways
" set complete               -=i                   "i (scan current and included files) isnt in defaults and seems p good anyways, dont get this
set wildmode                =list:longest,full "tested: longest,full  longest:full  list:longest
set wildignorecase                      
set wildignore+=*.o,*.obj,*.pyc,*.so,*.swp,*.pdf,*/.git/*,*/.hg/*,*/.svn/*,bower_components,LICENSE,LICEN*E.*,.DS_Store,.localized,*.zip,*/tmp/*,*/undo/*,*.pyi,__pycache__
"}}}
"{{{2 			 default dump, supposed already set:

" set ruler 																	"show position in file, redundant with airline
" set showcmd 																"show cmds as they are entered? + visual mode selection. apparently fucks nvim/tmux a bit
" set viewoptions 						=folds,options,cursor  "default
" }}}
"}}}
"
" {{{1 				SETTINGS FOR PLUGINS
" ###FUN IDEA###: export colorscheme and run statusline etc in lights :D no mistaking the mode
let w:tol_sidebarWidth 								=20

let g:meta#highlight_group						='IncSearch'  "default matched text highlight. set up more options!

"{{{2					 ASSORTED
let g:maximizer_restore_on_winleave		=0					"undo maximizer if switching from maximized window
" let g:maximizer_set_mapping_with_bang 		=1    "set default action to restore to pre-maximized state even if changed (not really relevant when vimleave opt set...)
let g:maximizer_default_mapping_key		='<M-m>'		"shared with tmux through integration. <prefix>z to force tmux zoom from inside vim

let g:colorizer_colornames						=0					"dont hl regular color names, only hex. use below instead to fix regular colors...
" let g:colorizer_custom_colors = {
" 			\ 'blue': ''
" 			\}
" 			^ map em to bruvbox. actually, just do it within bruvbox...


let g:taboo_tabline										=0					"dont fuck with the tabline, just handle tab naming
let g:taboo_renamed_tab_format        =' %l%m '  "default ' [%l]%m'


let g:choosewin_label									='123456789'
let g:choosewin_tablabel							='ABCDEFGHIJKL'
let g:choosewin_label_fill						=1
let g:choosewin_overlay_enable				=0		"cool in theory but SUPER DANGEROUS as it fucks with undolevels and fails to restore it properly and also fucking lands you in fucking insert mode = FUCKKK
hi! link  ChooseWinLabel          BruvboxBlueSign   
hi! link  ChooseWinLabelCurrent   BruvboxOrangeSign 
hi! link  ChooseWinLand           Visual
hi! link  ChooseWinOther          BruvboxOrangeSign 
hi! link  ChooseWinOverlay        BruvboxBlueSign   
hi! link  ChooseWinOverlayCurrent BruvboxOrangeSign 
hi! link  ChooseWinShade          BruvboxFg4        
augroup ChooseWinColors | autocmd!
	au VimEnter hi! link  ChooseWinLabel          BruvboxBlueSign
	au VimEnter hi! link  ChooseWinLabelCurrent   BruvboxOrangeSign
	au VimEnter hi! link  ChooseWinLand           BruvboxAquaBg
	au VimEnter hi! link  ChooseWinOther          BruvboxOrangeSign
	au VimEnter hi! link  ChooseWinOverlay        BruvboxBlueSign
	au VimEnter hi! link  ChooseWinOverlayCurrent BruvboxOrangeSign
	au VimEnter hi! link  ChooseWinShade          BruvboxFg4
augroup END
" let g:choosewin_color_label          ={'gui':['DarkGreen', 'white', 'bold'], 'cterm': [ 22, 15,'bold'] }
" let g:choosewin_color_label_current  ={'gui':['LimeGreen', 'black', 'bold'], 'cterm': [ 40, 16, 'bold'] }
" let g:choosewin_color_other          ={'gui':['gray20', 'black'], 'cterm': [ 240, 0] }
" let g:choosewin_color_land           ={'gui':[ 'LawnGreen', 'Black', 'bold,underline'], 'cterm': ['magenta', 'white'] }
" let g:choosewin_color_overlay          { 'gui': ['DarkGreen', 'DarkGreen' ], 'cterm': [ 22, 22 ] },
" let g:choosewin_color_overlay_current  { 'gui': ['LimeGreen', 'LimeGreen' ], 'cterm': [ 40, 40 ] },
" let g:choosewin_color_shade          ={'gui':[ '', '#777777'], 'cterm': ['', 'grey'] }

let g:diminactive_enable_focus				=1				"dim every window when vim doesnt have focus
let g:diminactive_max_cols            =100
let g:diminactive_buftype_blacklist		=['nofile', 'nowrite', 'acwrite', 'quickfix'] ", 'help']
let g:diminactive_filetype_blacklist  =['startify']

let g:indent_guides_indent_levels					=7
let g:indent_guides_auto_colors           =0
let g:indent_guides_enable_on_vim_startup =1
let g:indent_guides_start_level           =3
let g:indent_guides_guide_size            =2		"doesnt work with tabs ugh.
let g:indent_guides_exclude_filetypes			=['help', 'nerdtree', 'undotree', 'tagbar', 'startify', 'nofile', 'quickfix']
let g:indent_guides_color_change_percent	=5



let g:neoterm_repl_python             ='ptipython'
let g:neoterm_autoinsert              =1
" let g:neoterm_keep_term_open          =0        "
let g:neoterm_automap_keys						=0
let g:neoterm_split_on_tnew						=0	"do manual ting for now

let g:nvim_ipy_perform_mappings				=0



let g:easy_align_ignore_comment				=0				"dont skip aligning comments

let g:SignatureEnabledAtStartup				=0

let g:cursorcross_dynamic							='c'			"c = auto cursorline, dont touch abything else. w = disable for other windows. l = fuckoff
let g:cursorcross_mappings						=0
" let g:cursorcross_exceptions					=[]

let g:ranger_map_keys									=0

let g:indent_detector_echolevel_write =0				"don't spew every fucking write ugH
let g:indent_detector_echolevel_write =0				"don't spew ever actually. just set the setsings and stfu

"}}}

"{{{2 				 AIRLINE
let g:airline_powerline_fonts 										=1      "otherwise, if doc is utf8 it uses crappy unicode ones
let g:airline_left_sep 														=''    "  vs ⮀ ''
let g:airline_left_alt_sep 												=' '    "'│' 	
let g:airline_right_sep 													=''     "''
let g:airline_right_alt_sep 											=''     "'│'
let g:airline_skip_empty_sections 								=1      "only for active window, so pretty much requires either not having right sep or like making fg=bg otherwise
let g:airline_exclude_preview                     =0			"(dont) let preview window be
let g:airline_inactive_collapse										=0
"{{{3          TABLINE EXTENSION
let g:airline#extensions#tabline#enabled 					=1
let g:airline#extensions#tabline#left_sep 				='  '      "' ' '  
let g:airline#extensions#tabline#left_alt_sep 		='  '    "'  ' '│'
let g:airline#extensions#tabline#right_sep 				=' '     "' '
let g:airline#extensions#tabline#right_alt_sep 		=' '       "'  ' '│'
let g:airline#extensions#tabline#tabs_label 			=' '	"'T'
let g:airline#extensions#tabline#buffers_label 		='B' 	"'' 
let g:airline#extensions#tabline#show_splits			=1
let g:airline#extensions#tabline#tab_nr_type      =1      "show both tab nr and amount of splits
let g:airline#extensions#tabline#show_tab_type 		=1			"shows whether is displaying tabs or buffers
let g:airline#extensions#tabline#fnamecollapse 		=1			"collapse parent dirs (if shown)
" let g:airline#extensions#tabline#fnamemod 				=':~:.'  "gross
let g:airline#extensions#tabline#fnamemod 				=':t' 	"Just buf/filename no path in tabs
" let g:airline#extensions#tabline#formatter 				='unique_tail_improved'
" let g:airline#extensions#tabline#buffer_idx_format={
" 			\ '0': '⁰',
"       \ '1': '¹',
"       \ '2': '²',
"       \ '3': '³',
"       \ '4': '⁴',
"       \ '5': '⁵',
"       \ '6': '⁶',
"       \ '7': '⁷',
"       \ '8': '⁸',
"       \ '9': '⁹'
"       \ }							"is original but stopped working for some reason? Inc now when explicitly def'd
let g:airline#extensions#tabline#show_close_button=0
" let g:airline#extensions#tabline#middle_click_preserves_windows =1
let g:airline#extensions#tabline#buffer_nr_show 	=1
" let g:airline#extensions#tabline#buffer_nr_format ='%s '   "'%s  '
let g:airline#extensions#tabline#buffer_nr_format ='%s-'
" let g:airline#extensions#tabline#buffer_idx_mode 	=1 			"something about switching buffers not tabs, sux
let g:airline#extensions#tabline#exclude_preview	=1
let g:airline#extensions#tabline#excludes         =['NERD_Tree_1', '__Tagbar__.1']		"only works in buffer mode, not when got multiple tabs...
let g:airline#extensions#tabline#ignore_bufadd_pat=
\'\c\vgundo|undotree|vimfiler|tagbar|nerd_tree|nerdtree|buffergator|ctrlp|fzf|vimplug|preview|previewwindow' "avoids unnessesary redraw
"}}}

"shorter mode names. has  for I, put somewhere with check for devicons first i guess
let g:airline_mode_map 	= { '__': '-', 'n': 'N', 'i': '', 'R': 'R', 'c': 'C',
													\ 'v': 'v', 'V': 'V  ', '': 'V ▢ ',
													\ 's': 's', 'S': 'S  ', '': 'S ▢ '}

" let g:airline#extensions#default#formatter 				='unique_tail_imroved'
let g:airline#extensions#default#formatter 				='default'
let g:airline#extensions#default#layout=[['a', 'c', 'b', 'gutter'],
																				\['error', 'warning', 'x', 'z']] "hide section y with filetype bs bc doesnt seem to stick when I try to repurpose it?
" let g:airline#extensions#default#section_truncate_width ={
"     \ 'a': 5, 'c': 10, 'b': 50,
" 		\ 'x': 70, 'y': 80, 'z': 60,  'warning': 50, 'error': 40 }
" let g:airline#extensions#default#section_use_groupitems =1  "test if helps colors
let g:airline#extensions#whitespace#enabled 			=0
let g:airline#extensions#tagbar#enabled 					=0
let g:airline#extensions#ale#warning_symbol 			=' '
let g:airline#extensions#ale#error_symbol 				=' '
let g:airline#extensions#hunks#non_zero_only      =1
let g:airline#extensions#branch#enbled						=0			"temp test if can avoid git bug until i figure it out
function! AirlineHunksColored()
	call airline#parts#define_function('hunk_added',    'AirlineHunkAdded')
	call airline#parts#define_function('hunk_changed',  'AirlineHunkChanged')
	call airline#parts#define_function('hunk_deleted',  'AirlineHunkDeleted')
	call airline#parts#define_accent(  'hunk_added',    'green')
	call airline#parts#define_accent(  'hunk_changed',  'yellow')
	call airline#parts#define_accent(  'hunk_deleted',  'red')
	let g:airline_section_b = airline#section#create(['hunk_added', 'hunk_changed', 'hunk_deleted'])	", 'branch', ' '])
endfunction
function! AirlineHunkAdded()
	let g:hunk_summary = GitGutterGetHunkSummary()      "this works but feels... uh, hacky
	if g:hunk_summary[0] == 0 | return '' | endif
	return g:hunk_summary[0] .' '
endfunction
function! AirlineHunkChanged()
	if g:hunk_summary[1] == 0 | return '' | endif
	return g:hunk_summary[1] .' '
endfunction
function! AirlineHunkDeleted()
	if g:hunk_summary[2] == 0 | return '' | endif
	return g:hunk_summary[2] .' '
endfunction

" let g:airline#parts#ffenc#skip_expected_string='utf-8[unix]'

if !exists('g:airline_symbols') | let g:airline_symbols = {} | endif
let g:airline_symbols.linenr 				=' '    " 	''
let g:airline_symbols.maxlinenr 		=''
let g:airline_symbols.paste         ='ρ'       "curr 'PASTE'
let g:airline_symbols.spell         ='Ꞩ'       " 'SPELL'
let g:airline_symbols.modified      ='◈ '      "'+'     was trying some emoji symbols but they cause bg to bug out so no


let g:airline#extensions#branch#format   =2  "truncate non-tail of branch
let g:airline#extensions#branch#displayed_head_limit=15
let g:airline#extensions#branch#format   ='AirlineCustomBranchName'
function! AirlineCustomBranchName(name)
	if		 a:name == 'master'		| let name = 'm'
	elseif a:name == 'develop'  | let name = 'd'
	elseif a:name == 'stable'		| let name = 's'
	else    | let name = a:name | endif   | return name
endfunction
function! AirlineWindowNumber(...)          "adds window number to the left of section A, in style of section c...
		let builder = a:1 | let context = a:2
		call builder.add_section('airline_c', ' %{tabpagewinnr(tabpagenr())} ')
		return 0
endfunction
function! AirlineInit()
	let g:airline_section_z = airline#section#create_right(['%L', '%2c'])
	call AirlineHunksColored()

	" call airline#parts#define_function('cwd', 'AirlineStatusLineCWD') {{{3 testing/examples
	" call airline#parts#define_condition('cwd', 'getcwd() =~ "work_dir"')
	" call airline#parts#define_minwidth('cwd', 50)
	" let g:airline_section_c = airline#section#create_left(['cwd', '%t'])
	" let g:airline_section_c = airline#section#create_left(['%{getcwd()}', '%t'])
	" let g:airline_section_b = airline#section#create_left(['hunks', 'branch'])
	" let g:airline_section_b 													=expand('%:~:h') "should show just dir
	":p full path :h head last component removed, :t tail last only, :r root one ext rm, :e extension only
	" let g:airline_section_y = airline#section#create(['%p'])
	" let g:airline_section_z ='
	" 			\%#__accent_bold#%p%#__restore__#
	" 			\%L
	" 			\%{airline#util#wrap(airline#extensions#windowswap#get_status(), 0)}
	" 			\%#__accent_bold#%4l%#__restore__#
	" 			\%{g:airline_symbols.linenr}%#__restore__#
	" 			\%3v
	" 			\%{g:airline_symbols.maxlinenr}'
" call airline#add_statusline_func('AirlineTolStatusline_Right') }}}
endfunction


"{{{3  testing
function! AirlineTolStatusline_Right(...)
	let builder = a:1 " first variable is the statusline builder WARNING: the API for the builder is not finalized and may change
	" call builder.add_section('Normal', '%f')
	" call builder.add_section('WarningMsg', '%{getcwd()}')
	call builder.split()
	call builder.add_section('airline_z', '**%p%%')

	"%{v:register} put in statusline somewhere, shows curr active register.
	" also want latest/curr activated search, maybe? good yo know what happens on ctrl-m
	" GOOD TO REMEMBER:
	" can honestly use both the low tmux statusbar, but also pane statusbars as proxy dumping ground for extra info, should I need it.
	" Thinking like showing maybe the first ~10-15 chars of what's currently in the os clipboard / vim unnamed general.
	return 1 " tell the core to use the contents of the builder
endfunction

function! AirlineStatusLineCWD()
	let l:pwd = exists('$PWD') ? $PWD : getcwd()
	return substitute(fnamemodify(l:pwd, ':~'), '\(\~\?/[^/]*/\).*\(/.\{20\}\)', '\1...\2', '')
endfunction
function! AirlineThemePatch(palette)
	if g:airline_theme == 'bubblegum'
		" for colors in values(a:palette.inactive)
		" 	let colors[3] = 245
		" endfor
	endif
endfunction
let g:airline_theme_patch_func = 'AirlineThemePatch'

" function! AccentDemo()
"   let keys = ['+','~','-']
"   for k in keys | call airline#parts#define_text(k, k) | endfor
"   call airline#parts#define_accent('+', 'green')
"   call airline#parts#define_accent('~', 'yellow')
"   call airline#parts#define_accent('-', 'red')
"   " call airline#parts#define_accent('g', 'bold')
"   " call airline#parts#define_accent('h', 'italic')
"   let g:airline_section_b = airline#section#create(keys)
" endfunction
" autocmd VimEnter * call AccentDemo()

" "}}}

augroup AirlineMods | autocmd!
	autocmd User AirlineAfterInit call airline#add_statusline_func('AirlineWindowNumber')
	autocmd User AirlineAfterInit call airline#add_inactive_statusline_func('AirlineWindowNumber')

	" autocmd VimEnter * if !exists('g:pager_mode_so_fuckoff_all_fatasses') | call AirlineInit() | endif
	autocmd User AirlineAfterInit call AirlineInit()
augroup END

"}}}

"{{{2					 NETRW
let g:netrw_banner												=0		"no top help bs
let g:netrw_browse_split									=4		"open files in prev window
let g:netrw_silent												=1
let g:netrw_liststyle											=3		"tree view

"{{{2 				 NERDTree
let NERDTreeShowHidden										=1
let NERDTreeWinSize												=w:tol_sidebarWidth
let NERDTreeHijackNetrw 									=0 	"replace default filebrowser with NERD. apparently fucks with startify
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
let NERDTreeCreatePrefix 									='silent keepjumps'


let g:NERDTreeDirArrowExpandable 					='' "'▸'   
let g:NERDTreeDirArrowCollapsible 				='' "'▾'   


"{{{2		 			 DEVICONS

let g:WebDevIconsUnicodeDecorateFolderNodes 	=1 	      "icons for folders
" let g:DevIconsEnableFoldersOpenClose 				=1        "pretty but buggy offsets
let g:DevIconsEnableFolderExtensionPatternMatching =1   "whatever that means
let g:WebDevIconsUnicodeGlyphDoubleWidth 			=1        "double/single padding, no effect on terminal or guifont font
let g:WebDevIconsNerdTreeAfterGlyphPadding 		=' ' 	    "amount of space after the glyph
"Just fucks up spacing unless git symbol plug is active. should make auto toggle on/off depending on whether in git dir?
" let g:WebDevIconsNerdTreeGitPluginForceVAlign =1 	      "1 is supposed to force extra padding so filetype icons line up vertically


"{{{3 					COLDEVICONS
let g:coldevicons_filetypes  									='nerdtree,startify,ctrlp,denite'     "default: '*'

"}}}
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
" let g:WebDevIconsUnicodeDecorateFileNodesPatternSymbols['.Trash'] 	=''
" let g:WebDevIconsUnicodeDecorateFileNodesPatternSymbols['.*docker'] =''
" let g:WebDevIconsUnicodeDecorateFileNodesPatternSymbols['.config'] 	=''

"{{{3 					COLORS from unused addon
let g:NERDTreeFileExtensionHighlightFullName 	=0
let g:NERDTreeExactMatchHighlightFullName 		=0
let g:NERDTreePatternMatchHighlightFullName 	=0
" let g:NERDTreeHighlightFolders 								=1 "enables folder icon highlighting using exact match
let g:NERDTreeHighlightFoldersFullName 				=0 "highlights the folder name
" let g:NERDTreeLimitedSyntax 									=1 "chill out checking for uncommon file extensions
let g:NERDTreeExtensionHighlightColor = {}
"}}}
"{{{2 				 STARTIFY

let g:startify_disable_at_vimenter 				=1 		"disable autoload when got own mechanism for that+nerdtree
let g:startify_session_autoload 					=1 		"not working afaict?
let g:startify_session_persistence    		=1 		"too buggy? works but weird errors often enough
let g:startify_session_sort 							=0
let g:startify_session_before_save=['silent! NERDTreeClose', 'silent! TagbarClose', 'silent! UndotreeHide']	"'silent! BufferGatorClose', 
let g:startify_session_savevars 	=['g:startify_session_savevars', 'g:startify_session_savecmds', 'g:gitgutter_diff_base']
let g:startify_session_remove_lines =['setlocal scrollback=-1'] "some nvim terminal bug

let g:startify_files_number 							=10
let g:startify_change_to_dir          		=1
let g:startify_change_to_vcs_root 				=1 		"same as rooter
" let g:startify_use_env 										=1 		"shorten paths with vars. slows down start enough that it looks like shit and isnt worth it
"let g:startify_relative_path 							=1 		"useless because also get /User/name instead of just ~...
" let g:startify_update_oldfiles        		=1
" let g:startify_enable_unsafe 							=1 		"speed up start. breaks shit when paths removed or whatever :/
let g:startify_enable_special 						=0 		"hide info about empty buffer / quit
let g:startify_padding_left 							=1

"{{{3 HEADER

"original
" let g:startify_custom_header=[ '				__  __ /\_\    ___ ___     ',		"  ||¯¯¯\ ||¯¯|' 
" 															\'			 /\ \/\ \\/\ \ /' __` __`\  ',    "  ||  	 \||  |' 
" 															\'			 \ \ \_/ |\ \ \/\ \/\ \/\ \  ',   "  ||   . \|  |' 
" 															\'				\ \___/  \ \_\ \_\ \_\ \_\ ',   "  ||  |\ `   |' 
" 															\'				 \/__/    \/_/\/_/\/_/\/_/ ']   "  ||__|\\ ___|' 
" let g:startify_custom_header=[ ' ||¯¯\ ||¯|	__  __ /\_\    ___ ___     ',
" 															\' ||	 	\|| |/\ \/\ \\/\ \ /´ __` __`\   ',
" 															\' ||	|\ \| |\ \ \_/ |\ \ \︳|\ \/\ \/\  ',
" 															\' ||	|\\   | \ \___/  \ \_\ \_\ \_\ \_\ ',
" 															\' ||_|	\\ _|  \/__/    \/_/\/_/\/_/\/_/ ']
" let g:startify_custom_header=[ '     _____     __          ___                  ',
"                               \'   /[___  \  /[__]__   __ / _\     __   __     ',
" 															\'  //|  |\  \ ||  |\ \ / /\\/\  \  /´ _\`\__`\   ',
" 															\' *|-|  |\\  \||  | \ \_/ / \ \  \| \/\ \/\ \ \  ',
" 															\'  \\|__|`\\  \\__|\ \___/   \ \ _\\ \_\ \_\ \_\ ',
" 															\'   \[__] `\\_____] \/__/     \/_ / \/_/\/_/\/_/ ']

let g:startify_custom_header=[ '	  /|\     |\							                  ',
                              \'	 /\| \    | \   ___				                  ',
															\'	|  \	\	  |  | |   				 \      /         ',
															\'	|  |\  \  |  | |__ 				  \    / .  .  .  ',
															\'	|  | \  \ |  | |   				   \  /  |  |\/|  ',
															\'	|  |  \  \|  | |___				    \/   |  |´`|   ',
															\'	 \ |   \  |\/      				         |         ',
															\'	  \|    \_|/       				                   ']
 
" / \
" \_/

let g:startify_list_order 	=[ ['      '. getcwd()],  'dir',
															\['      MRU'],
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
	\ $HOME .'/.vim/session/*',
	\ 'profile.log',
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


"{{{2 				 ALE
" linters n shit:
" luarocks install luacheck
" npm install -g jshint eslint "prettier-eslint(?)
" pip install -U vim-vint yamllint
" pip3 install -U flake8 mypy yapf pylint
" gem install reek rubocop
let g:ale_warn_about_trailing_whitespace 	=0
let g:ale_sign_warning 									 	=' ' 			"'?' ''
let g:ale_sign_error 										 	=' ' 		"'!' '>>'
let g:ale_set_signs 										 	=1
let g:ale_sign_column_always 						 	=0
let g:ale_open_list 										 	=0 "auto open loclist. too annoying
let g:ale_lint_delay 										 	=250
let g:ale_statusline_format 						 	=['%d  ', '%d ', 'OK']
let g:ale_python_flake8_args 							='--ignore=E501,C0111'
let g:ale_python_flake8_executable 				='python3'

let g:ale_python_pylint_executable 				='python3'   " or 'python' for Python 2
" let g:ale_python_pylint_options = '-rcfile /path/to/pylint.rc'
let g:ale_python_mypy_options 						='--silent-imports'

"{{{2 				CTRL-P
let g:ctrlp_user_command											='ag %s -l --nocolor -g ""' "Use ag in CtrlP for listing files. Lightning fast and respects .gitignore
let g:ctrlp_use_caching												=0			"ag is fast enough that CtrlP doesn't need to cache
let g:ctrlp_show_hidden 											=1
let g:ctrlp_by_filename 											=0
let g:ctrlp_follow_symlinks 									=0
let g:ctrlp_default_input 										=0
let g:ctrlp_max_files 												=20000
let g:ctrlp_match_window ='bottom,order:btt,min:1,max:30,results:30' "results 0 == no limit
let g:ctrlp_working_path_mode 								='rw'
" let g:ctrlp_clear_cache_on_exit 							=0 										"share cache
let g:ctrlp_clear_cache_on_exit 							=1 										"is annoying bc _never_ auto updates ugh, so wipe I guess...
let g:ctrlp_cache_dir 												=$HOME.'/.cache/ctrlp'
let g:ctrlp_switch_buffer 										=0 										"disable autojumping to other panes 'Et'
let g:ctrlp_extensions=['dir', 'undo', 'line', 'changes', 'mixed', 'tag', 'buffertag'] ", 'quickfix', 'rtscript', 'bookmarkdir'
"{{{3 					PROMPT BINDINGS
let g:ctrlp_prompt_mappings = {
										\ 'PrtBS()':              ['<bs>', '<c-]>'],
										\ 'PrtSelectMove("j")':   ['<c-j>', '<down>'],
										\ 'PrtSelectMove("k")':   ['<c-k>', '<up>'],
										\ 'PrtSelectMove("t")':   ['<Home>', '<kHome>'],
										\ 'PrtSelectMove("b")':   ['<End>', '<kEnd>'],
										\ 'PrtSelectMove("u")':   ['<PageUp>', '<kPageUp>'],
										\ 'PrtSelectMove("d")':   ['<PageDown>', '<kPageDown>'],
										\ 'PrtHistory(-1)':       ['<c-n>'],
										\ 'PrtHistory(1)':        ['<c-p>'],
										\ 'AcceptSelection("e")': ['<cr>', '<2-LeftMouse>'],
										\ 'AcceptSelection("h")': ['<c-x>', '<c-cr>', '<c-s>'],
										\ 'AcceptSelection("t")': ['<c-t>'],
										\ 'AcceptSelection("v")': ['<c-v>', '<RightMouse>'],
										\ 'ToggleFocus()':        ['<s-tab>'],
										\ 'ToggleRegex()':        ['<c-r>'],
										\ 'ToggleByFname()':      ['<c-d>'],
										\ 'ToggleType(1)':        ['<c-f>', '<c-up>'],
										\ 'ToggleType(-1)':       ['<c-b>', '<c-down>'],
										\ 'PrtExpandDir()':       ['<tab>'],
										\ 'PrtInsert("c")':       ['<MiddleMouse>', '<insert>'],
										\ 'PrtInsert()':          ['<c-\>'],
										\ 'PrtClearCache()':      ['<F5>'],
										\ 'CreateNewFile()':      ['<M-n>'],
										\ 'MarkToOpen()':         ['<Space>'],
										\ 'OpenMulti()':          ['<c-o>', '<M-CR>'],
										\ 'PrtExit()':            ['<esc>', '<c-c>', '<c-g>'],
										\ 'PrtDeleteEnt()':       ['<M-x>'],
							\ }
											" 1 delete buffer
											" 2 etc
											"-4 marktoopen - good binding bc space is useless in ctrlp anyways (gets matched hard so only things remaining are files from Google\ Drive etc, lol)
											"}}}

" {{{2 				FZF
let g:fzf_colors =
\ { 'fg':      ['fg', 'Normal'],
	\ 'bg':      ['bg', 'Normal'],
	\ 'hl':      ['fg', 'IncSearch'],
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
"{{{2 				 TAGBAR
let g:tagbar_width 											=28					"w:tol_sidebarWidth
let g:tagbar_zoomwidth 									=0 					"auto
let g:tagbar_autofocus 									=1 					"focus after opening
let g:tagbar_sort 											=0
let g:tagbar_compact 										=1 					"hide 'press ? for help' etc
let g:tagbar_indent 										=0 					"dont indent contents of sections, just wastes space
let g:tagbar_singleclick 								=1 					"one click to jump
let g:tagbar_autoshowtag 								=1 					"auto open folds if needed to show current tag
let g:tagbar_autopreview 								=0 					"auto preview tag under cursor.
" let g:tagbar_autoclose									=1 					"auto close window on tag select
let g:tagbar_iconchars 									=['▸', '▾']
let g:tagbar_previewwin_pos 						='aboveleft'
" let g:tagbar_expand 										=2 					"expands term window to fit. iterm redraw way too slow though.

" function! TagbarStatusFunc(current, sort, fname, flags, ...) abort
"     let colour = a:current ? '%#StatusLine#' : '%#StatusLineNC#'
"     let flagstr = join(a:flags, '')
"     if flagstr != ''  | let flagstr = '[' . flagstr . '] '  | endif
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
" highlight! link GitGutterChangeDelete 	GruvboxYellowSign
let g:gitgutter_max_signs 							=500 			"default 500. why do I hit that max when only got like 100 changes tho?
let g:gitgutter_log                     =0          "massive-ass file goes straight in plugged dir lols
" let g:gitgutter_grep_command            ='rg'
"{{{2 				 MULTIPLE CURSORS
let g:multi_cursor_insert_maps 					={',':1} 		"leader shit in insert mode
let g:multi_cursor_exit_from_insert_mode=0 					"dont instaquit
let g:multi_cursor_exit_from_visual_mode=0


"{{{2 				 SNEAK
let g:sneak#use_ic_scs  =1    "respect smartcase etc
let g:sneak#s_next      =1    "just mash s to navigate further...
" let g:sneak#label				=1		"easymotion style

"{{{2 				 ASSORTED RANDOM
" if executable('ag') | let g:ackprg = 'ag --vimgrep' | endif
" let g:rooter_use_lcd =1 														"only auto change cwd local to window
"rm default source .vimrc files in local _or any parent dir _, causing issues in home folder...
let g:local_vimrc = {'names':['.localvimrc'],'hash_fun':'LVRHashOfFile'}
let g:auto_save_silent 										=1  " do not display the auto-save notification
let g:auto_save_events 										=['InsertLeave', 'CursorHold']



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

let g:sayonara_filetypes = {
		\ 'nerdtree': 'NERDTreeClose',
		\ 'undotree': 'UndotreeHide',
		\ 'tagbar':		'TagbarClose',
		\ }

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
"}}}
"⸏⸏⸏⸏⸏⸏⸏⸏⸏⸏⸏⸏⸏⸏⸏⸏⸏⸏⸏⸏⸏⸏⸏⸏⸏⸏⸏⸏⸏⸏⸏⸏⸏⸏⸏⸏⸏⸏⸏


"
"{{{1   			ALL-TEXT VISUAL GUI CLI-INTERFACE
"{{{2 				 syntax specific settings
let c_comment_strings 							=1 				"highlight strings inside C comments.
let c_no_bracket_error 							=1
let c_curly_error 									=1 				"highlight missing closing braces

let g:clojure_fold 									=1 				"might not work with rainbow-parentheses

let python_highlight_all 						=1 		" enable all extra python syntax highlighting
"}}}

"{{{2 				 HIGHLIGHT GROUPS

if has('nvim')
	highlight! Normal cterm=None gui=None guibg=None  "ctermbg=None
endif

highlight! FoldOpenedMarker 	         			guifg=#076678 	guibg=#3c3836		"07 = gruv dark from the light palette
highlight foldHelp 												ctermfg=238 		ctermbg=110
highlight foldHelp 													guifg=#7777bb 	guibg=#6488bb 	"guifg=#444444 	guibg=#607eb3
highlight! link FoldedUnderline Folded
highlight FoldedUnderline 		gui=underline

highlight vimrcHashSep   	ctermfg=White			guifg=White

augroup ModeChange | autocmd!
	autocmd InsertEnter * 	highlight CursorLine gui=underline,bold   | highlight! link CursorLineNr BruvboxRedSign
	" autocmd InsertEnter *   "set timeoutlen like, super short for insert mode. Then can have a bunch of leader etc shit, and all kinds of other stuff, that doesnt delay shown output from typing, but shit still working! As long as key sequence is esoteric enough not to actually be typed otherwise.
	autocmd InsertLeave * 	highlight CursorLine gui=None             | highlight! link CursorLineNr BruvboxCursorLineNr
	" autocmd ModeChange
augroup END

" syntax match OverLength /\%81v.\+/
" highlight OverLength ctermbg=133 ctermfg=254 cterm=bold guibg=#592929

" syntax match nonascii "[^\x00-\x7F]" containedin=cComment,vimLineComment "some example

"}}}


"{{{2 				 PER FILETYPE AUTOCMDS
augroup SyntaxAutocmds | autocmd!
" autocmd FileType 	java 					setlocal omnifunc=javacomplete#Complete
autocmd FileType 	lisp,clojure 	RainbowParentheses
autocmd FileType  help          let &colorcolumn=join(range(80,240),',')

" autocmd BufNewFile,BufRead *.py		setlocal tabstop=4 softtabstop=4 shiftwidth=4 textwidth=79 | let &colorcolumn=join(range(80,200),',')
autocmd BufNewFile,BufRead *.py		setlocal softtabstop=2 shiftwidth=2 textwidth=79 | let &colorcolumn=join(range(80,240),',')

" autocmd BufNewFile,BufRead 	*.applescript 	set filetype 	=applescript "gets loaded as sh??
autocmd BufNewFile,BufRead 	*.fish 	set filetype=fish 			 "same, wtf?
autocmd BufNewFile,BufRead 	*.tmux 	set filetype=tmux 			 "ffs?
autocmd FileType	fish			compiler fish | setlocal foldmethod=expr

autocmd FileType vim,fish,lua,python,ruby,go,clojure,sh,javascript    IndentGuidesEnable

autocmd FileType vim,lua		set foldmethod=marker "| set foldcolumn=1
autocmd Filetype vim				let b:AutoPairs={'(':')','[':']','{':'}',"'":"'",'`':'`','<':'>'} "fix comment behavior, pair <>

" autocmd FileType vim 			let w:matchmapComment		=matchadd('Comment', '|\s*".*')	"HL post-pipe comments in vimrc
" autocmd FileType vim 			let w:matchhash					=matchadd('vimrcHashSep', '#')
autocmd FileType vim				if !exists('w:loaded_matchadds_vim')		| call SetupMatchaddsVim()		| endif
autocmd FileType vim,lua		if !exists('w:loaded_matchadds_folds')	| call SetupMatchaddsFolds()	| endif
" autocmd FileType vim,lu 	let w:matchfoldlevel		=matchadd('BruvboxRedSign', '+---')
" autocmd FileType vim,lua 	let w:matchdashes				=matchadd('Folded', '----------') 	"regular dash
" " autocmd FileType vim,lua 	let w:matchdashes 		=matchadd('Folded', '                                        ') 	"spaces
" autocmd FileType vim,lua 	let w:matchunderscore1	=matchadd('Folded', '__________') 	"regular underscore
" autocmd FileType vim,lua 	let w:matchunderscore3	=matchadd('Folded', '⸏⸏⸏⸏⸏⸏⸏⸏⸏⸏⸏⸏⸏⸏⸏⸏⸏⸏⸏⸏⸏⸏⸏⸏⸏⸏⸏⸏⸏⸏⸏⸏⸏⸏⸏⸏⸏⸏⸏  ') "weird spacing so 19 chars + 1 space = same len
" autocmd FileType vim,lua 	let w:matchupperscore		=matchadd('Folded', ' ̅ ̅ ̅ ̅ ̅ ̅ ̅ ̅ ̅ ̅')		"combining overline 0x305
" autocmd FileType vim,lua	let w:matchopenfolds		=matchadd('Folded', '{\d\s*.*.*') 	"opened folds same HL style as closed when got digit like { {{2
" autocmd FileType vim,lua	let w:matchleftbraces		=matchadd('FoldOpenedMarker', '{{{')
" autocmd FileType vim,lua	let w:matchrightbraces	=matchadd('foldOpenedMarker', '}}}')

augroup END "}}}2
"{{{2					 SETUP THE CUSTOM MATCHADDS
function! SetupMatchaddsFolds() abort
	" let w:matchfoldlevel		=matchadd('BruvboxRedSign', '+---')
	let w:matchdashes				=matchadd('Folded', '----------') 	"regular dash
	let w:matchunderscore 	=matchadd('Folded', '__________') 	"regular underscore
	let w:matchunderscore2	=matchadd('Folded', '⸏⸏⸏⸏⸏⸏⸏⸏⸏⸏⸏⸏⸏⸏⸏⸏⸏⸏⸏⸏⸏⸏⸏⸏⸏⸏⸏⸏⸏⸏⸏⸏⸏⸏⸏⸏⸏⸏⸏ ') "weird spacing so 19 chars + 1 space = same len
	let w:matchupperscore		=matchadd('Folded', ' ̅ ̅ ̅ ̅ ̅ ̅ ̅ ̅ ̅ ̅')		"combining overline 0x305
	let w:matchopenfolds		=matchadd('Folded', '{\d\s*.*.*') 	"opened folds same HL style as closed when got digit like { {{2
	let w:matchleftbraces		=matchadd('FoldOpenedMarker', '{{{')
	let w:matchrightbraces	=matchadd('foldOpenedMarker', '}}}')

	let w:loaded_matchadds_folds = 1
endfunction

function! SetupMatchaddsVim() abort
	let w:matchmapComment		=matchadd('Comment', '|\s*".*')	"HL post-pipe comments in vimrc
	let w:matchhash					=matchadd('vimrcHashSep', '#')

	let w:loaded_matchadds_vim = 1
endfunction
"}}}
"}}}
"⸏⸏⸏⸏⸏⸏⸏⸏⸏⸏⸏⸏⸏⸏⸏⸏⸏⸏⸏⸏⸏⸏⸏⸏⸏⸏⸏⸏⸏⸏⸏⸏⸏⸏⸏⸏⸏⸏⸏


"
" {{{1 				COMPLETION STUFF

"{{{2 				 ABBREVIATIONS
"also work in cmdline so yeah gooodddd
" abbreviate	au 	autocmd
abbreviate 	s? 			set ?<Left><BS>
" abbreviate  Tab  		Tabularize /
" abbreviate 	P 	Plug ''<Left><BS><Right>


"}}}

let g:tern#command 													=['tern']
let g:tern#arguments 												=['--persistent']
let g:tern_request_timeout 									=1

let g:python_host_prog 											='/usr/bin/python'
let g:python3_host_prog 										='/usr/local/bin/python3'


let g:SuperTabClosePreviewOnPopupClose 			=1
" let g:SuperTabLongestEnhanced 							=1
let g:SuperTabDefaultCompletionType 				='<C-N>' 								"so it doesnt go backwards lol
let g:SuperTabContextDefaultCompletionType 	='<C-N>'
let g:SuperTabNoCompleteAfter               =['^', ',', '\s']
let g:SuperTabLongestHighlight              =1      "pre-highlight first match

" let g:SuperTabDefaultCompletionType         ='context'
let g:SuperTabContextTextOmniPrecedence     =['&completefunc', '&omnifunc']
" let g:SuperTabRetainCompletionType          =2

"{{{2 					JEDI
" WTF? :CheckHealth gave:		g:jedi#force_py_version = '2' (default: 'auto')
let g:jedi#force_py_version									='auto'
let g:jedi#auto_vim_configuration 					=0
let g:jedi#use_tabs_not_buffers 						=0
let g:jedi#smart_auto_mappings 							=1
let g:jedi#auto_close_doc 									=1

let g:jedi#completions_enabled 							=0

let g:jedi#goto_command             = '<leader>gc'  "(default: '<leader>d')
let g:jedi#goto_assignments_command = '<leader>ga' 	"(default: '<leader>g') setup a ft autocommand...
let g:jedi#goto_definitions_command = '<leader>gd'
let g:jedi#documentation_command    = 'K'								
let g:jedi#usages_command           = '<leader>gu'   "(default: '<leader>n')
let g:jedi#rename_command           = '<leader>gr'	"(default: '<leader>r')
" let g:jedi#completions_command      = ''	"(default: '<C-Space>')

"}}}

"{{{2 			  	DEOPLETE
let g:deoplete#enable_at_startup						=0		"try defer til insertenter...
" let g:deoplete#enable_camel_case 						=0
" let g:deoplete#file#enable_buffer_path      =1
let g:deoplete#auto_complete_delay					=50
let g:deoplete#enable_refresh_always				=1
let g:deoplete#auto_refresh_delay						=50
let g:deoplete#tag#cache_limit_size					=2000000

call deoplete#custom#set('_', 'min_pattern_length', 1)	"2 is default. 1 convenient but also uhm, inconvenient
call deoplete#custom#set('_', 'max_abbr_width', 100)
call deoplete#custom#set('_', 'max_menu_width', 120)

let g:deoplete#ignore_sources		= {}

let g:deoplete#omni#functions = get(g:, 'deoplete#omni#functions', {})
" let g:deoplete#omni#functions.javascript 		=['tern#Complete', 'jspc#omni']
" let g:deoplete#sources                 ={}
let g:deoplete#sources = get(g:, 'deoplete#sources', {})    "only needed for scripts and whatnot, not vimrc obvs
" let g:deoplete#sources['javascript'] 		    =['file', 'ternjs']
" XXX QUESTION WAIT HUH dont i want to use llvm brew head clang?  /usr/local/opt/llvm/lib
let g:deoplete#sources#clang#libclang_path 	='/Library/Developer/CommandLineTools/usr/lib/libclang.dylib'
let g:deoplete#sources#clang#clang_header 	='/Library/Developer/CommandLineTools/usr/lib/clang'

let g:deoplete#sources#jedi#show_docstring 	=1	"in preview window. flashes too much and hidden by menu :/
" Enable jedi source debug messages
" let g:deoplete#enable_profile = 1
" call deoplete#enable_logging('DEBUG', 'deoplete.log')
" call deoplete#custom#set('jedi', 'debug_enabled', 1)


let g:deoplete#keyword_patterns           ={}
let g:deoplete#keyword_patterns.clojure 		='[\w!$%&*+/:<=>?@\^_~\-\.#]*'
call deoplete#custom#set('buffer',        'mark', 'ℬ')
call deoplete#custom#set('tag',           'mark', '')
call deoplete#custom#set('file',          'mark', '')	"./
call deoplete#custom#set('omni',          'mark', '')
call deoplete#custom#set('ternjs',        'mark', '')
call deoplete#custom#set('jedi',          'mark', '')
call deoplete#custom#set('vim',           'mark', '')
call deoplete#custom#set('neosnippet',    'mark', '')
call deoplete#custom#set('around',        'mark', '') "subsources: A=above cursor, B=below, C=:changes
call deoplete#custom#set('syntax',        'mark', '♯')
call deoplete#custom#set('webcomplete',   'mark', '')
call deoplete#custom#set('tmux-complete', 'mark', 'tmux')
" default is 100...
call deoplete#custom#set('vim',           'rank', 230)
call deoplete#custom#set('jedi',          'rank', 230)
call deoplete#custom#set('ternjs',        'rank', 230)
call deoplete#custom#set('omni',          'rank', 210)
call deoplete#custom#set('tag',           'rank', 200)
call deoplete#custom#set('around',        'rank', 200)
call deoplete#custom#set('member',        'rank', 200)
call deoplete#custom#set('file',          'rank', 180)
call deoplete#custom#set('file_include',  'rank', 200)
call deoplete#custom#set('webcomplete',   'rank', 130)
call deoplete#custom#set('buffer',        'rank', 120)
call deoplete#custom#set('tmux-complete', 'rank', 110)
call deoplete#custom#set('syntax',        'rank', 100)
call deoplete#custom#set('neosnippet',    'rank', 90)
call deoplete#custom#set('dictionary',    'rank', 10)



function! DeopleteInit()
	let l:m = ['matcher_length', 'matcher_full_fuzzy'] ", 'matcher_head']    default: length, fuzzy    XXX: test full_fuzzy vs fuzzy...
	let l:s = ['sorter_word', 'sorter_rank']                    "default: rank
	" let l:c = ['converter_remove_overlap', 'converter_auto_delimiter', 'converter_auto_paren',
	" let l:c = ['converter_remove_overlap', 'converter_auto_delimiter', 'converter_remove_paren',
	let l:c = ['converter_remove_overlap', 'converter_remove_paren',
	\ 'converter_truncate_abbr', 'converter_truncate_menu']   "default remove_overlap, truncate_abbr, truncate_menu
	call deoplete#custom#set('_', 'matchers',   l:m)
	call deoplete#custom#set('_', 'sorters',    l:s)
	call deoplete#custom#set('_', 'converters', l:c)

endfunction
"}}}

"{{{2 			 	 NVIM COMPLETION MANAGER TEST
let g:cm_matcher = {'module': 'cm_matchers.fuzzy_matcher', 'case': 'smartcase'} "fuzzy matcher!
let g:cm_complete_delay 										=75 			"ms

let g:cm_completekeys												="\<Plug>(cm_complete)"
"default. or	 "\<Plug>(cm_completefunc)" or "\<Plug>(cm_omnifunc)"
let g:cm_refresh_default_min_word_len 			=[[1,4],[7,2]]			"default [[1,4],[7,3]]  arg[1] min prio, [2] min chars typed before refresh

"NCM version of neosnippet mapping below, think its just a wrapper for the <expr> thing so no need
" inoremap <silent> <CR> <c-r>=cm#sources#neosnippet#trigger_or_popup("\<Plug>(neosnippet_expand_or_jump)")<cr>

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


"{{{2 				LANGUAGE SERVER CLIENT
let g:LanguageClient_signColumnAlwaysOn 	=0

let g:LanguageClient_serverCommands ={
			\ 'javascript': ['/opt/javascript-typescript-langserver/lib/language-server-stdio.js'],
			\ 'python': ['pyls'],
			\ }

"}}}

"{{{2 				 NEOSNIPPET
let g:neosnippet#enable_snipmate_compatibility=1
let g:neosnippet#enable_completed_snippet 		=1

"}}}


let g:chromatica#libclang_path						='/usr/local/opt/llvm/lib'
let g:chromatica#enable_at_startup				=1				"since restricting autoload through vimplug
" let g:chromatica#highlight_feature_level	=1			"guess need to define all these groups for it to work...
let g:chromatica#responsive_mode					=1
" let g:chromatica#delay_ms									=250			"test if needed



let g:Unicode_ShowPreviewWindow						=1

"{{{1 				FUNCTIONS

" "{{{2 			RELOAD VIMRC
augroup reload_vimrc | autocmd!
		autocmd BufWritePost .vimrc,vimrc		silent!	call ReloadVimRc()
augroup END

function! ReloadVimRc()						" must call silent! and not abort, or else
	" let saved_view = winsaveview(".")		"eh why was this working with this arg until now? :O
	let l:saved_view = winsaveview()
	" try
		source $MYVIMRC
	" catch
	" 	echomsg 'WENT RONG SOURCING VIMRC!!!'
	" finally
		call winrestview(l:saved_view)
		call RefreshUI()
	" endtry
endfunction
function! RefreshUI()
	if exists(':AirlineRefresh')  		| AirlineRefresh
	else															| redraw!					| endif
	if exists('g:loaded_webdevicons') | call webdevicons#softRefresh()  | endif "helps fix NERDTree window when it shows line numbers and shit post-reload
	syntax sync fromstart
endfunction " was airline wrecking reload. had to refresh it+reload syntax stuf. now works without? cant remember why

"{{{2 				 WINDOW STUFF feat. TMUX. make plug proper-vim-tmux-integration

" MOVED

" function! WindowResize(sign, amount) 	"resize window by direction instead of +- etc
" 	if winnr('$') == 1	| let pass_to_tmux = 1
" 	else								| let initial = winnr() 	"save the original window index
" 		let isvert = (a:sign =~ '<\|>') ? 'vertical ' : ''
" 		let anchor = (isvert == 'vertical ') ? 'h' : 'k'
" 		let prefix = (a:sign =~ '<\|-') ? '-' : '+'
" 		execute 'noautocmd wincmd ' . anchor
" 		if winnr()	!= initial 	"did find other window towards anchor point
" 			"edge case: trying to resize from bottom/right window if have three, flips. so test moving again...
" 			let new = winnr() | execute 'noautocmd wincmd ' . anchor
" 			if winnr() != new   "did find third win. Anchor is flipped, so change strategy
" 				execute 'noautocmd ' . initial . 'wincmd w'
" 				execute 'noautocmd ' . isvert . 'resize ' .(prefix == '+' ? '-' : '+').a:amount
" 			else			"no third window this direction
" 				execute 'noautocmd ' . isvert . 'resize ' .prefix.a:amount
" 				execute 'noautocmd ' . initial . 'wincmd w'
" 			endif
" 		else				"try other side
" 			" if anchor == 'h' | noautocmd wincmd l | else | noautocmd wincmd j  | endif
" 			execute 'noautocmd wincmd ' . (anchor == 'h' ? 'l' : 'j')
" 			if winnr() != initial	"moved away from anchor. switch back, then resize
" 				execute 'noautocmd' . initial . 'wincmd w'
" 				execute 'noautocmd ' . isvert . ' resize ' .prefix.a:amount
" 			else 	| let pass_to_tmux = 1 | endif	"def nothing to resize in vim
" 		endif
" 	endif
"
" 	if get(l:, 'pass_to_tmux', 0)
" 			let vim_to_tmux ={ '<':'-L', '>':'-R', '+':'-D', '-':'-U' }
" 			let tmuxcmd = vim_to_tmux[a:sign]
" 			execute 'call system("tmux resize-pane' . tmuxcmd .' '. a:amount '")'
" 	endif
" endfunction

" 		if winnr()	== initial 	"couldnt switch window, try other direction (just to check)
" 			if check == 'h' | noautocmd wincmd l  | else | noautocmd wincmd j  | endif
" 			if winnr()== initial   | let pass_to_tmux = 1		"def nothing to resize, passing back to tmux
" 			else 		"moved away from anchor. switch back, then resize
" 				execute 'noautocmd' . initial . 'wincmd w'
" 				execute a:amount . 'wincmd' . a:sign
" 			endif
" 		else 			"did succeed switching towards anchor. So resize, then go back to orig win.
" 			"edge case: trying to resize from bottom window if have three, flips. so test moving again...
" 			if check == 'k' | let middle = winnr() | noautocmd wincmd k
" 				if winnr() != middle | execute 'noautocmd' . initial . 'wincmd w'
" 					let a:sign = a:sign == '+' ? 'l' : '+' | echomsg a:sign | endif | endif
" 			execute a:amount . 'wincmd' . a:sign
" 			execute 'noautocmd' . initial . 'wincmd w'
" 		endif
" 	endif
" 	if get(l:, 'pass_to_tmux', 0)
" 			let vim_to_tmux ={ '<':'-L', '>':'-R', '+':'-D', '-':'-U' }
" 			let tmuxcmd = vim_to_tmux[a:sign]
" 			execute 'call system("tmux resize-pane' . tmuxcmd .' '. a:amount '")'
" 	endif
" endfunction

" function! WindowMaximize()
" 	let numwindows = winnr('$')
" 	if numwindows == 1
" 		call system('tmux resize-pane -Z')
" 	else  "just to get around vint bug saying all bangs are wrong lol...
" 		execute 'MaximizerToggle!'
" 	endif
" endfunction

function! WindowRotate()
	let initial = winnr() 			"save the original window index, jump to the first window
	execute 'noautocmd' . 1 . 'wincmd w'
	wincmd l
	if winnr() != 1 | wincmd J  "succeeded moving to the right window. make it the bottom window
	else | wincmd H | endif 		"cannot move to the right, so we are at the top. make it the left window.

	execute initial . 'wincmd w'
	" restore focus to the initial window
endfunction

"{{{2					TOGGLE PREVIEW/ETC WINDOW
function! PreviewWindowToggle()
	for nr in range(1, winnr('$'))
		if getwinvar(nr, "&previewwindow") == 1	" found a preview
			pclose
		endif  
	endfor
	return 0
endfunction
"{{{2					TOGGLE VAR
function! ToggleOptionFromList(setter, one, two, ...)
	execute 'if '.a:setter. '=='. a:one.'|'.a:setter.'='.a:two.'|'.else.'|'.a:setter.'='.a:one.'| endif'
'
" nmap <Leader>mnbv :echomsg 'fyfan'<CR>
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
	put = execute(a:runCmd)			"new way
	" redir @a
	" silent execute a:runCmd
	" put a
	set syntax=vim
	nnoremap <silent><buffer> q :quit<CR>
	normal! gg
endfun

function! ShowSyntaxColors() " opens new buf with this shit to skip the stupid more flood
	tabnew
	" nunmap <buffer>#|					 " unmap lista... works?
	vmapclear
	setlocal buftype=nofile bufhidden=hide
	setlocal nobuflisted noswapfile
	silent source $VIMRUNTIME/syntax/hitest.vim
	call ReloadVimRc()
endfun

function! ShowNamedColors() " opens new buff with this shit so dont stuff with the stupid more flood
	"Optional: First enter ":let g:rgb_fg=1" to highlight foreground only.
	tabnew
	setlocal buftype=nofile bufhidden=hide
	setlocal nobuflisted noswapfile
	silent source ~/.vim/color-names.vim
endfun

function! TestPerformance()
	let pro_file = '~/.vim/profile.log'

	if v:profiling == 0
		echo "saving profile report in" pro_file

		execute 'profile start ' . pro_file
		profile func *
		profile file *
	else
		echo "stopping performance profiling"
		profile stop
		execute 'tabnew ' . pro_file
		setfiletype vim
		normal! G
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

"{{{2					 TIME MULTIPLE ITERATIONS

function! Time(com, ...)
	let time = 0.0
	let numberOfTimes = a:0 ? a:1 : 100
	for i in range(numberOfTimes + 1)
		let t = reltime()
		execute a:com
		let time += reltime(t)[1]
	echo i.'/'.numberOfTimes . 'Total: ' . printf('%.3', time)
		redraw
	endfor
	echo 'Average time: '.string(numberOfTimes / i)
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

"{{{2 				DUPLICATE LINE
function! DuplicateLine()
	let col   = virtcol('.')
	let stash = getreg('"')
	let type  = getregtype('"')
	yank | put
	call setreg('"', stash, type)
	call cursor(0, col)
endfunction

"{{{2 				 FZF utils
"{{{3 				 FZF NAV buffers
function! s:buflist()
	redir => ls
	silent ls
	redir END
	return split(ls, '\n')
endfunction

function! s:bufopen(e)
	execute 'buffer' matchstr(a:e, '^[ 0-9]*')
endfunction
"}}}
nnoremap <silent> <Leader><Enter> :call fzf#run({'source': reverse(<sid>buflist()),
\ 'sink': function('<sid>bufopen'), 'options': '+m', 'down': len(<sid>buflist()) + 2 })<CR>

" fzf locate command integration
command! -nargs=1 -bang Locate call fzf#run(fzf#wrap({'source': 'locate <q-args>', 'options': '-m'}, <bang>0))
"{{{3 					FZF LINE SEARCH OPEN BUFFERS
function! s:line_handler(l)
	let keys = split(a:l, ':\t')
	exec 'buf' keys[0]
	exec keys[1]
	normal! ^zz
endfunction

function! s:buffer_lines()
	let res = []
	for b in filter(range(1, bufnr('$')), 'buflisted(v:val)')
		call extend(res, map(getbufline(b,0,"$"), 'b . ":\t" . (v:key + 1) . ":\t" . v:val '))
	endfor
	return res
endfunction
"}}}
command! FZFLines call fzf#run({'source': <sid>buffer_lines(), 'sink': function('<sid>line_handler'), 'options': '--extended --nth=3..', 'down': '60%'})

"{{{3 					FZF narrow Ag search
function! s:ag_to_qf(line)
	let parts = split(a:line, ':')
	return {'filename': parts[0], 'lnum': parts[1], 'col': parts[2],
				\ 'text': join(parts[3:], ':')}
endfunction

function! s:ag_handler(lines)
	if len(a:lines) < 2 | return | endif

	let cmd = get({'ctrl-x': 'split',
							\ 'ctrl-v': 'vertical split',
							\ 'ctrl-t': 'tabe'}, a:lines[0], 'e')
	let list = map(a:lines[1:], 's:ag_to_qf(v:val)')

	let first = list[0]
	execute cmd escape(first.filename, ' %#\')
	execute first.lnum
	execute 'normal!' first.col.'|zz'

	if len(list) > 1
		call setqflist(list)
		copen
		wincmd p
	endif
endfunction
"}}}
command! -nargs=* Ag call fzf#run({'source':  printf('ag --nogroup --column --color "%s"', escape(empty(<q-args>) ? '^(?=.)' : <q-args>, '"\')),
\ 'sink*':    function('<sid>ag_handler'),
\ 'options': '--ansi --expect=ctrl-t,ctrl-v,ctrl-x --delimiter : --nth 4.. '.'--multi --bind=ctrl-a:select-all,ctrl-d:deselect-all '.'--color hl:68,hl+:110',
\ 'down':    '50%' })

"{{{2 					RANDOM - RANGER n stuff
function! RangerExplorer()
		exec "silent !ranger --choosefile=/tmp/vim_ranger_current_file " . expand("%:p:h")
		" exec "Tnew !ranger --choosefile=/tmp/vim_ranger_current_file " . expand("%:p:h")
		if filereadable('/tmp/vim_ranger_current_file')
				exec 'edit ' . system('cat /tmp/vim_ranger_current_file')
				call system('rm /tmp/vim_ranger_current_file')
		endif
		redraw!
endfun

"}}}

"{{{2          CREATE STANDARD FOLD BLOCK
function! FoldCreate()
	" hmm
	" actually, make a snippet instead? and so then first land on foldlevel
	" then jump past tabs to fold name
endfunction
"}}}
"{{{2          OPEN WINDOW-LOCAL NERDTREE
function! FileExplorerLocalWindow()
	" create split to left, netrw or whatever, from dir of curr buffer...
	leftabove enew
	set winfixwidth
endfunction
"}}}
"{{{2         SHOW SYNTAX HIGHLIGHTING STACK
" Show syntax highlighting groups for word under cursor with <leader>s
" From Vimcasts #25: http://vimcasts.org/episodes/creating-colorschemes-for-vim/
" nnoremap <leader>h :call <SID>SynStack()<CR>
function! <SID>SynStack()
	if !exists("*synstack")
		return
	endif
	echo map(synstack(line('.'), col('.')), 'synIDattr(v:val, "name")')
endfunc
"}}}

"{{{2          GATHER SEARCH HITS IN NEW BUFFER
function! Gather(pattern)		" Gather search hits, and display in a new scratch buffer.
	if empty(a:pattern)  | return  | endif
	let save_cursor = getpos(".")  | let orig_ft = &ft

	let results = []
	execute "g/" . a:pattern . "/call add(results, getline('.'))"
	call setpos('.', save_cursor)
	if !empty(results)
		new    | setlocal buftype=nofile bufhidden=hide noswapfile
		execute "setlocal filetype=" . orig_ft
		call append(1, results)
		1d  " delete initial blank line
	endif
endfunction

" nnoremap <silent> <Leader>// :call Gather(input("Search for: "))<CR>
" nnoremap <silent> <Leader>/* :call Gather(@/)<CR>
"}}}

" {{{2 				 FUZZY x INCSEARCH

function! s:config_fuzzyall(...) abort
	return extend(copy({
	\   'converters': [
	\     incsearch#config#fuzzy#converter(),
	\     incsearch#config#fuzzyspell#converter()
	\   ],
	\ }), get(a:, 1, {}))
endfunction

"}}}

"{{{2					FUNCTIONS END *** 


"}}}  ""}}}


"{{{1          COMMANDS

" :CD - change window-local CWD to dir of curr open buffer
command! CD   lcd %:p:h|pwd

"unicode plugin fix

"{{{2 					V - wrap :Verbose
function! V(args)
	execute ':Verbose ' . a:args
	silent! wincmd P			" jump to preview window
	if !&previewwindow | return | endif

	setlocal modifiable
	" setlocal noreadonly
	silent delete _
	" remove first line containing name of run command
	normal! G
	" jump to last line
	clearjumps
	setlocal filetype  =vim
	setlocal buftype   =nowrite
	setlocal bufhidden =wipe
	" setlocal foldmethod=manual
	setlocal nofoldenable
	silent execute 'file ' . a:args
	if exists(':AirlineRefresh')
		AirlineRefresh
	endif

endfunction
command! -nargs=* V call V('<args>')

"}}}
"{{{2 					E - wrap :e
" function! E(args)
" 	execute ':e ' . a:args
"
" endfunction
" reload buffer without resetting fold state...
command! -nargs=* E mkview 9 | edit | loadview 9

"}}}
"{{{2 					Q - wrap :q
" function! Q(args)
	" save current window state so can undo window close...
	" quit

" endfunction
" command! -nargs=* Q

"}}}
"}}}

"⸏⸏⸏⸏⸏⸏⸏⸏⸏⸏⸏⸏⸏⸏⸏⸏⸏⸏⸏⸏⸏⸏⸏⸏⸏⸏⸏⸏⸏⸏⸏⸏⸏⸏⸏⸏⸏⸏⸏



" {{{1 				KEY BINDINGS
"Note: remember to not set mappings that cause unnecessary timeout issues.  CANT USE INLINE COMMENTS HERE| 	"but can use fancy trick
noremap <expr> j				v:count ? 'j' : 'gj'
noremap <expr> k				v:count ? 'k' : 'gk'
" inoremap <Down>    <C-o>gj      "c-o:ing is too laggy :/
nnoremap <BS>         	/| 				"good bc BS in normal is just h anyways?
" nnoremap <CR>         	:| 				"no good. CR in normal basically just j anyways, tho also eg go to line in quickfix, command line window etc... gah!
nnoremap <M-CR> 			<C-]>|			"follow links. put some check so doesnt error if none, and could do other stuff...

nmap		<Leader><.>			:|				"ez

nnoremap <S-Tab>				<C-^>|		"toggle alternate-file. add check whether actuqlly got one...
nnoremap <Leader><S-Tab> :wincmd p<CR>|"toggle last window

nnoremap zz      			  za| 			"folds quick
nnoremap <Leader>z 			zA| 			"recursive toggle folds
noremap  <M-Right> 			za
nnoremap <silent><Leader>zx 		:if &foldclose == ''<BAR>set foldclose=all<BAR>else<BAR>set foldclose=<BAR>endif<CR>| 	"toggle autofold, read up how to do...
nnoremap <Leader>zt 		:set foldenable!<CR>|	"toggle use folds
nnoremap <Leader>zn 		:g//foldopen<CR>| 		"open all folds with search results..

nnoremap gp							g;|				"step back in changelist easier. 
nnoremap gn							g,|				"earlier comment, not sure if relevant: 'eh why not working?'


nnoremap <M-'>					:cd ..<BAR>pwd<CR>|			"change pwd one dir up. same as my fish binding...
" nnoremap <M-,>					:<Up>|		"open last run command
nnoremap <M-,>					q:k$|			"bring up last run command in insert... same as my fish binding
nnoremap <M-.>					@:| 			"rerun last command. Same as my fish binding
" nnoremap <M-->					something cool, pref related to comments?
" nnoremap <M-Left>			
" nnoremap <M-*>				
" nnoremap <M-~>				
" nnoremap <M-^>				
" nnoremap <M-+>				
" nnoremap <M-0>				
" nnoremap <M-9>				
" nnoremap <M-8>				
" nnoremap <M-7>				

" nnoremap <BS><BS> 			@:| 			"rerun last command old

map	<silent>q:					q:<Esc>:set nonumber norelativenumber<CR>k$


inoremap jk             <Esc>| 		" exit insert mode more better easier
inoremap jj 						<C-o>5j
inoremap kk 						<C-o>5k
" noremap  uu							:redo<CR>| "SUCKS BALLS FUCK OFF. quick redo, super awesome except cant spam undo and generally slows to timeout
noremap  <Leader>u 		  :redo<CR>| "leader-u instead of just uu, so no timeout bs or issue repeating regular undo. note U to undo and then U again will redo back and forth photoshop-style

vnoremap <Tab>          >gv|       "indent with tab in visual and keep selection
vnoremap <S-Tab>        <gv|       "deindent
noremap <Leader>< 			>>|        "space-< tiny bit chiller than shift-double-< to indent

vnoremap <C-x>          "*d|       "access system clipboard with systemish shortcuts
vnoremap <C-c>          "*y|			 "dont need insert equivs since cmd-v etc works then
nnoremap 	Y 						y$|				 "so acts same as D and C.
nnoremap  x             "_x|       "make x not save to default "" register
vnoremap  x             "_x
inoremap 	<M-p>        	<C-o>p| 	 "paste in insert mode (cmd-c to paste system)
cnoremap	<M-p>					<C-r>"|		 "paste paste yank at cmdline
" xnoremap 	p 						"_dP| 	 "paste-overwrite without yanking back replaced text
xnoremap <expr>p 				'pgv"'.v:register.'y'| "fancy version of above I think? with register support. "The result of "xp would evaluate to pgv"xy, where x is the register."
noremap 	åp						p`[| 			    "paste without moving cursor
noremap 	ÅP 						P`[j| 		    "paste prepend, cursor stay, move down line
nnoremap <Leader>p			"*p|					"paste from system shortcut, since iterm can be slow pasting in insert mode for some reason

nnoremap <Leader>J 			:m-2<BAR>j<CR>| "like J but join line ABOVE after current. glitches...

nnoremap R							gR|							"virtual replace by default
nnoremap gV	            `[v`]|			    "highlight last inserted text (mirrors gv re-select)
noremap   cp            yap<S-}>p|      "duplicate surrounding block

nnoremap <Leader>a 			a<Space><C-c>|  "easy insert space to left or right without changing mode. like
nnoremap <Leader>i 			i<Space><C-c>
nnoremap <Leader>A 			a<Space><C-c>h
nnoremap <Leader>I 			i<Space><C-c>l
nnoremap <Leader><Tab> 	i<Tab><C-c>l|	 	"insert tabs from normal mode
nmap <silent> <M-i>     "=nr2char(getchar())<CR>P|  "insert any one char from normal mode. like reverse insert C-o


nnoremap <silent><Esc>  :nohlsearch<BAR>call sneak#hl#removehl()<Esc>| "better than specific binding: esc clears hlsearch if in normal mode

"{{{2										PUMENU / DEOPLETE / SNIPPER MAPPINGS
"FINALLY SANITY GODDAMN. cancels comp incl removing anything already inserted, but stays in normal mode! with completeopt "longest,menuone,preview,noinsert,noselect", guess those last two are the key...
"XXX: tho should add a check for whether anything is actually selected, in the popup. That way quick auto deoplete suggestions wont block exiting on first esc...
" inoremap <expr><Esc> pumvisible() ? "\<C-E>" : "\<Esc>"| "works even though ive rebound C-E, thanks to prior inoremap...
inoremap <expr> <Esc> pumvisible() ? deoplete#close_popup().deoplete#undo_completion() : "\<Esc>"|		"seems to work. undo_completion() is crazy fucked when called directly/alone though.
" "\<C-E>\<Esc>" goes back to normal no matter what, so no go...	"\<C-E>\<C-E>" need like 'C-E, wait til popup, C-E again'

" inoremap <expr> q<Tab>		deoplete#complete_common_string()
inoremap <expr> <C-Space> deoplete#complete_common_string()
" .deoplete#mappings#manual_complete()
inoremap <expr> <Tab>			pumvisible() ? "\<C-n>" : CheckBS() ? "\<Tab>" : 
												\ deoplete#complete_common_string().deoplete#mappings#manual_complete()
" inoremap <silent><expr> <S-Tab>		pumvisible() ? "\<C-p>" : "\<S-Tab>"
inoremap <S-Tab>			<C-p>
function! CheckBS() abort
	let col = col('.') - 1
	return !col || getline('.')[col - 1]  =~ '\s'
endfunction

imap		 <expr> <CR>	  pumvisible() ? "\<C-Y>" : neosnippet#expandable_or_jumpable() ? "\<Plug>(neosnippet_expand_or_jump)" : "\<CR>\<Plug>AutoPairsReturn"
smap		 <expr> <CR>	  neosnippet#expandable_or_jumpable() ? "\<Plug>(neosnippet_expand_or_jump)" : "\<CR>"
xmap		 <expr> <CR>	  neosnippet#expandable_or_jumpable() ? "\<Plug>(neosnippet_expand_or_jump)" : "\<CR>"
" Note: These last few must be "imap" and "smap" due to <Plug>

inoremap <expr> <C-h>   deoplete#smart_close_popup()."\<C-h>"
inoremap <expr> <BS>		deoplete#smart_close_popup()."\<BS>"
inoremap <expr> <C-l>   deoplete#refresh()

" Scroll pages in menu
imap		 <expr> <C-f>		pumvisible() ? "\<PageDown>" : "\<C-f>"
imap		 <expr> <C-b>		pumvisible() ? "\<PageUp>" :   "\<C-b>"
imap		 <expr> <C-d>		pumvisible() ? "\<PageDown>" : "\<C-d>"
imap		 <expr> <C-u>		pumvisible() ? "\<PageUp>" :   "\<C-u>"
"}}}


nnoremap <silent><Leader>pc			:call PreviewWindowToggle()<CR>|		"close preview window. want to use same func to pop it back up if needed tho...
nnoremap <Leader>sock		:!ln -s /tmp/nvimsocket.active $NVIM_LISTEN_ADDRESS<CR>|			"noneed generally, now set up so all get put in /tmp/nvimsocket$SESSION

" select mode test...
nnoremap <M-v>					*``gn<C-g>|			"select word under cursor		" select 1 select 2 selekt 3 select 4
inoremap <M-v>		 <C-o>gn<C-g>|				"select next								" select 5 nope   7 select 8
snoremap <expr>.				@.|							"repeat last

"{{{2 		  	Access keys found in US layout like [ ] a bit easier
nmap ö                  [| 				"
nmap ä                  ]
nmap å 									/|				"search, and works recydled in other binds bc nmap
" imap Ö 									{
" imap Ä 									\
" imap Å 									/
" nmap ¨ 								^| 				"now via ukelele, ^ on shift-thatbutton, ~ instead of ¨ on reg press
"}}}

noremap  , ;| "straighten out ;/, behaving opposite to n/N on Swedish keyboards, direction-wise. Regular press should go forward, shifted backwards, ffs.
noremap  ; ,| "sadly bc we have to use noremap (to avoid circular fuckery) this also needs to be done per plugin, for eg Sneak etc.
"{{{2          FIX BASIC KEY SWAPS if dont have custom Ukulele remap on hand
if exists('g:tol_omgfixthekeysgoddamn')
  if exists('g:tol_macbook')  "it's a start, anyway
    map   <   $    |    imap  <   $
    map   >   ~    |    imap  >   ~
    map   ¨   ^    |    imap  ¨   ^
    map   ©   |    |    imap  ©   |
    map   £   /    |    imap  £   /
    map   ”   '    |    imap  ”   '
    " map    |    imap
    " map    |    imap
    " map    |    imap
    " map    |    imap
  endif
endif

"}}}

map Q               		:q<CR>| "gq|    "unmap ex mode, gq is "format", use quit instead atm

nnoremap <Up> 					{| 				"make arrows useful!:
nnoremap <Down> 				}| 				"move up/down to line with whitespace
nnoremap <S-Left> 			[{
nnoremap <S-Right> 			]}
map <Leader>5 					%| 				"faster than shift-5 to match pair
map <Leader>6 					^| 				"go first non-whitespace char
map <Leader>$ 					<C-^>| 		"toggle to alternate-buffer for window

nnoremap <Leader>vb 		viB

"{{{2 					cmdline readline stuffs
cnoremap <C-A>          <Home>| 	 "<C-B> is default, pfft
" cnoremap <C-E>          <End>|	"default
cnoremap <C-K>          <C-U>
" cnoremap <C-P>          <Up>
" cnoremap <C-N>          <Down>
cnoremap <C-Y> 					<C-r>"| 			"how paste from kill at cmdline tho?

inoremap <C-A>          <Home>| 	"readline stuffs
" inoremap <C-E>          <End>| 		"messes c-e to cancel inserted completion, but using esc for that anyways
inoremap <C-U>        	<C-o>d0| 	"backward-kill-line, doesnt work at EOL, why?
" inoremap <C-Y>        	<C-o>p| 	"yank/paste
inoremap <C-K> 		     	<C-o>D| 	"kill-line
noremap <C-A>           0
" nnoremap <C-E>           $

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

" map <ScrollWheelUp>     <C-Y>|            "screws up so doesnt scroll hovered-over pane properly etc :( would be cool otherwise....
" map <ScrollWheelDown>   <C-E>
" {{{2   			 USE HJKL FOR ALL THE MOVES. ALLLL THE MOVES!!!!
" let g:tmux_navigator_no_mappings =1 													"moves tmux split instead if available
" let g:tmux_navigator_disable_when_zoomed =1
" let g:proper_tmux_navigator_no_mappings =1 											"moves tmux split instead if available
let g:proper_tmux_navigator_disable_when_zoomed =1
if has('nvim')
	tnoremap  <Esc><Esc>	<C-\><C-n>|				"easier exit insert mode, but only on double press
	tnoremap  jk					<C-\><C-n>|				"easier exit terminal illness
	" augroup TerminalNormalModeBindings | autocmd!
	" 	autocmd TermOpen	nnoremap <buffer> x		"not possible since we're not sure where the cursor actually is. Was thinking enter insert -> forward delete like... Workaround?
	" augroup END
endif

nnoremap <Leader>min 		<C-w>1<BAR>|"minimize current window...

nnoremap <Leader>mn 		:call WindowRotate()<CR>

nmap  <Leader>w					<Plug>(choosewin)


" {{{2 				 UNUSED
" nnoremap <ScrollWheelDown>  j
" nnoremap <ScrollWheelLeft>  h
map <ScrollWheelRight> za| 									"hmm not working
"}}}
"}}}
"
" {{{1 				KEY BINDINGS - LEADER/MACRO{{{

nmap <Leader>y 				ysiw| 								  "add surround word shortcut. all these need map, not nore
nmap <Leader>y1 			ysiW<BAR>| 						  "surround |pipes|
nmap <Leader>y2 			ysiw"| 						      "surround "quotes"
nmap <Leader>y7 			ysiW]| 						      "surround [brackets]
nmap <Leader>y8 			ysiW)| 						      "surround (paranthesis)
nmap <Leader>y9 			ysiW}| 						      "surround {braces}
vmap <Leader>1				S<BAR>
vmap <Leader>2				S"
vmap <Leader>7				S]
vmap <Leader>8				S)
vmap <Leader>9				S}

nnoremap <Leader>gf		:sp<CR>gf

nnoremap <Leader>yy   :let @"=@".getline('.')<CR>|    "append yank to existing unnamed register
" XXX fix a similar vmap one for selection...
nnoremap <Leader>dd   :let @"=@".getline('.')"\n"<CR>"_dd|"append delete to existing unnamed register: just do as above and then blackhole the line...
nnoremap <Leader>sw						:set wrap!<CR>|					"wrap toggle	
nnoremap <Leader><Leader>sw 	:windo set wrap!<CR>| 	"all wrap toggle
nnoremap <Leader><Leader>sww 	:windo set nowrap<CR>|  "all wrap off
nnoremap <Leader>SW						:windo set wrap<CR>

nnoremap <leader>z1 	:<C-u>call ScrollToPercent(20)<CR>
nnoremap <leader>z2 	:<C-u>call ScrollToPercent(50)<CR>
nnoremap <leader>z3 	:<C-u>call ScrollToPercent(80)<CR>

"{{{2          DELETE / CHANGE TO / IN shortcuts



nnoremap <Leader>dp   dt<BAR>|                 "delete to <x> shortcuts
nnoremap <Leader>db   dt(|                     "using b/B for (/{, so same as surround
nnoremap <Leader>dB   dt{
nnoremap <Leader>Dp   dT<BAR>|                 "delete To <x> shortcuts
nnoremap <Leader>Db   dT)
nnoremap <Leader>DB   dT}
nnoremap <Leader>cp   ct<BAR>|                 "change to <x> shortcuts
nnoremap <Leader>cb   ct(
nnoremap <Leader>cB   ct{
nnoremap <Leader>Cp   cT<BAR>|                 "change To <x> shortcuts
nnoremap <Leader>Cb   cT)
nnoremap <Leader>CB   cT}
nnoremap <Leader>cip  ci<BAR>|                 "change in <x> shortcuts
nnoremap <Leader>cib  ci(
nnoremap <Leader>ciB  ci{
"}}}

" function! ToggleBool()
" 	" y
" endfunction | nnoremap <Leader>tb 	:call ToggleBool()<CR>
function! GetPID()
	perl VIM::DoCommand('let pid =' . $$) | return pid
endfunction
" {{{2 				SPLIT AND MAXIMIZE
nnoremap <Leader>m  	:wincmd _<CR>| 							"
nnoremap <Leader>mh 	:wincmd h<CR>:wincmd _<CR>| "maximize window left
nnoremap <Leader>mk 	:wincmd k<CR>:wincmd _<CR>| "maximize window above
nnoremap <Leader>mj		:wincmd j<CR>:wincmd _<CR>| "maximize window below
nnoremap <Leader>ml		:wincmd l<CR>:wincmd _<CR>| "maximize window right
nmap <Leader>sh  		 	:leftabove  vnew<CR>
nmap <Leader>sl  			:rightbelow vnew<CR>
nmap <Leader>sk 			:leftabove   new<CR>
nmap <Leader>sj   		:rightbelow  new<CR>
nmap <Leader>SH 			:topleft   	vnew<CR>
nmap <Leader>SL				:botright  	vnew<CR>
nmap <Leader>SK  		 	:topleft  	 new<CR>
nmap <Leader>SJ  			:botright 	 new<CR>
nmap <Leader>0 				<C-w>=| 							"equalize windows
nmap <Leader>8 				:vertical resize 84<CR>| 	"make window 80col wide XXX needs to check for numbercolumn and shit }}}

cnoremap w!!         	SudoWrite<CR>| 				"aka sudo tee %, via vim.eunuch
cnoremap hg 					helpgrep
cnoremap ARR          AirlineRefresh<CR>
cnoremap AIR          AirlineToggle<CR>
nnoremap <Leader>air  :AirlineToggle<CR>
cnoremap DOFF         call deoplete#disable()<CR>
cnoremap DON          call deoplete#enable()<CR>
cnoremap SFT 					set filetype=|        " just 'ft' way too annoying bc like abbs, these expand everywhere not just at beginning...
nnoremap <Leader>v  	V`]| 									"Select pasted text
" map <Leader>gg      	:vimgrep // ./**/*<left><left><left><left><left><left><left>| "grep globbed
map <Leader>gg      	:grep  */*<left><left><left><left>| "grep globbed
" map <Leader>g 				:vimgrep // <C-R>%<C-A><right><right><right><right><right><right><right><right><right>| "current file

map <silent><Leader>cc :botright cope<cr>| 	"quickfix across bottom
map <silent><Leader>qf :cwindow<cr>|				"quickfix across bottom
map <silent><Leader>lc :lopen<cr>|					"loclist
map <Leader>err					:cp<cr>| 						"check for errors

nnoremap <silent><Leader>bh :if &modifiable && !&readonly && &modified<BAR>w<BAR>endif<BAR>bnext<CR>
nnoremap <silent><Leader>bl :if &modifiable && !&readonly && &modified<BAR>w<BAR>endif<BAR>bprevious<CR>

nnoremap <Leader>x 		:Sayonara!<CR>| 			"same as old "close buffer leave window" but via more robust plugin

nnoremap <Leader>!!		:exec '!'.getline('.')<CR>| "exec line under cursor in shell
nnoremap <Leader>eol  	:%s/\s\+$//<cr>:let @/=''<CR>| "Strip EOL whitespace

nnoremap <Leader>cul 	:set cursorline!<CR>|  "toggle cursorline
nnoremap <Leader>cuc 	:set cursorcolumn!<CR>|"toggle cursorcolumn

" nnoremap <silent><Leader>tty	:TerminusOpen<CR>:TerminusOpen<CR>|	"work around first instance erroring...
nnoremap <silent><Leader>tty	:rightbelow sp<BAR>enew<BAR>Tnew<CR>|	"work around first instance erroring...
nnoremap <silent><Leader>t.		:call neoterm#do('')|		"

nnoremap <Leader>d 		:call DuplicateLine()<CR>k:TComment<CR>j| 	"duplicate line, comment prev. retaining cursor pos and last yank...
nnoremap <Leader>D 		:call DuplicateLine()<CR>| 									"duplicate line

" nmap <Leader>ju 			:jumps<CR>| 					"list previous positions
nmap <Leader>ju 			:V jumps<CR>| 					"list previous positions
nmap <Leader>ch 			:changes<CR>
nnoremap <Leader>' 		``| 									"go to previous position incl column. less deal now that I changed `´ button with Ukulele to remove dead key mode and flip order. But keep for macbook

" nnoremap <Leader>ms 	:mess<CR>
nnoremap <Leader>ms 	:V :mess<CR>G
nnoremap <Leader>ve		:if &ve=='all'<BAR>set ve=block,onemore<BAR>else<BAR>set ve=all<BAR>endif<CR>
vmap <C-r>		 				<C-c>:%s/<c-r>=GetVisual()<CR>//g<left><left>|"replace all instances of selected text (escape-safe)
" map <Leader>gd 				[I:let nr = input("Which one: ")<Bar>exe "normal! " . nr ."[\t"<CR>|"list definitions, then jump

nnoremap <Leader>M 	 	:make<CR>

noremap <Leader>bgl		:set bg=light<BAR>let g:bg_forced='light'<CR>
noremap <Leader>bgd		:set bg=dark<BAR>let g:bg_forced='dark'<CR>
noremap <Leader>bg		:if &bg == 'dark'<BAR>set bg=light<BAR>else<BAR>set bg=dark<BAR>endif<CR>

"{{{2 				UTILITY AND MISC
nnoremap <Leader>pf 	:set paste!<CR>| 										"kill paste mode when gets stuck there
nnoremap <Leader>ico 	:call ColDevicons_init()<CR>| 			"when bugs out
nnoremap <Leader>sss 	:syntax sync fromstart<CR>|					"fix when hl bugs out

nnoremap <Leader>fix  <Space>pf<Space>ico<Space>sss|			"chain fixes


nnoremap <Leader>co 	:call CaptureOutput('')<left><left>|"yay very nice, show output from something in a new split...
nnoremap <Leader>map 	:call CaptureOutput('map')<CR>3"_dd:Meta<CR>| "get curr map in new split, start Meta filtering. but fzf :Maps is better prob tbh, just customize it a bit...
nnoremap <Leader>syn 	:call ShowSyntaxColors()<CR>

nnoremap <Leader>pro 	:call TestPerformance()<CR>| 				"start :profile, press again to stop

nnoremap <Leader>ft   :set filetype?
nnoremap <Leader>ssh 	:setfiletype sh<CR>
nnoremap <Leader>vim 	:setfiletype vim<CR>

nnoremap <Leader>mkv 	:mkview<CR>
nnoremap <Leader>lv 	:loadview<CR>

nnoremap <Leader>mv   :Rename |                           "from Eunuchs.

" nmap <Leader>vr				:silent! call ReloadVimRc()<CR>| 		"manually reload vimrc WITH refresh as in the autocmd, was missing that...
nmap <silent><Leader>vr	 :silent! call ReloadVimRc()<CR>| 		"manually reload vimrc WITH refresh as in the autocmd, was missing that...
nmap <Leader>vs 			:wincmd w<CR>:mkview! 1<CR>:wincmd l<CR>:mkview! 2<CR>:mksession! ~/.vim/sessions/vimrcSession.vim<CR>:!echo "loadview \| wincmd h \| loadview" >> ~/.vim/sessions/vimrcSession.vim<CR>


"{{{2 				DIFF SPECIFIC MAPPINGS
function! SetupDiffMappings()
	if !&diff | return | endif
	" map <Esc>, :call DiffTake("h", "l")<CR>
	" map <Esc>. :call DiffTake("l", "h")<CR>
	map <Leader>1 	:diffg LO<CR>|  "get from LOCAL
	map <Leader>2 	:diffg BA<CR>|  "get from BASE
	map <Leader>3 	:diffg RE<CR>|  "get from REMOTE
	set foldcolumn=0
endfunction
augroup DiffMappings | autocmd!
	autocmd FilterWritePost * call SetupDiffMappings()
augroup END

"{{{2 				MATH CALCULATOR
nnoremap <Leader>* 		ciw<C-R>=<C-R>"*| 								"math: multiply (using expression register)
nnoremap <Leader>m' 	ciw<C-R>=<C-R>"*| 								"avoids shift
nnoremap <Leader>/ 		ciw<C-R>=<C-R>"/| 								"math: divide
nnoremap <Leader>m7 	ciw<C-R>=<C-R>"/| 								"math: divide
nnoremap <Leader>m+ 	ciw<C-R>=<C-R>"+| 								"math: add
nnoremap <Leader>m- 	ciw<C-R>=<C-R>"-| 								"math: subtract
nnoremap <Leader>m2 	ciw<C-R>=<C-R>"*2<CR><Esc>| 			"math: *2
nnoremap <Leader>md 	ciw<C-R>=<C-R>"/2<CR><Esc>| 			"math: /2
nnoremap <Leader>++ 	<C-A>| 														"math: increment
nnoremap <Leader>-- 	<C-X>| 														"math: decrement

2 21 7
" {{{2 				 UNUSED
" nnoremap <Leader>d 		:let g:col=virtcol(".")<CR>"""r"dyy"dP"r"":TComment<CR>j:call cursor(0, g:col)<CR>| "old comment+duplicate line, retain cursor pos
" nnoremap <expr><silent> <Leader>x len(filter(range(1, bufnr('$')), 'buflisted(v:val)')) == 1 ? ':bd<CR>' : ':bp<CR>:bd #<CR>'|	"close buffer, leave window/split.


" nnoremap <Leader>less :runtime macros/less.vim<CR>| "load less mode lols
" cnoremap $m       <CR>:m''<CR>| 						"move the found line
" cnoremap $d       <CR>:d<CR>``| 						"delete the found line
" map <Leader>tag  		:sp tags<CR>:%s/^\([^	:]*:\)\=\([^	]*\).*/syntax keyword Tag \2/<CR>:wq! tags.vim<CR>/^<CR><Leader>ugh<CR>
" map <Leader>co      ggVGy:tabnew<cr>:set syntax=qf<cr>pgg| "what is this
" }}} " }}}
"                                        }}}
"{{{1 				 KEY BINDINGS - FILETYPE SPECIFIC

augroup PerFileTypeBindings | autocmd!
" test, add generic syntax-based complete omnifunc _only if no other provided_
au FileType *			if &omnifunc == '' | 	setlocal omnifunc=syntaxcomplete#Complete |	endif

au FileType clojure			nmap		 <Leader>r						:write<CR>:Require<CR>| 		"reload clojure in REPL
au FileType javascript	nnoremap <silent><buffer>gb		:TernDef<CR>
au FileType c,cpp				nmap		 <buffer>gd 		<Plug>(clang_complete_goto_declaration)
au FileType c,cpp				nmap		 <buffer>gdp		<Plug>(clang_complete_goto_declaration_preview)
au FileType tmux				nnoremap <buffer><M-w>				:w<BAR>call system('sleep 0.1; tmux source ~/.tmux.conf; tmux display-message reloaded')<CR>| "auto-source tmux.conf when writing to it. sleep bc guess write sometimes doesnt come through properly heh

au FileType help,man		nmap		 <buffer><Space>			<Plug>proper_smooth_d
au FileType help,man		nmap		 <buffer><S-Tab>			<Plug>proper_smooth_u
" no, below are dumb, fuck em all four
" au FileType help				nnoremap <buffer>u						<C-u>
au FileType	qf					nnoremap <buffer><silent>q		:close<CR>
au CmdwinEnter *				noremap	 <buffer><M-CR>			<CR>q:

augroup END "}}}

" {{{1				 KEY BINDINGS FOR PLUGINS

vnoremap <silent><CR>		:EasyAlign<CR>|							"enter does nothing useful in visual anyways

nmap <silent><Leader>en	 <Plug>(ale_next_wrap)lh
nmap <silent><Leader>ep	 <Plug>(ale_previous_wrap)|	" adding lh to shake cursor and open folds doesnt seem to work...
nmap <silent><Leader>ek	 <Plug>(ale_previous_wrap)
nmap <silent><Leader>ej	 <Plug>(ale_next_wrap)

""{{{2				 LANCH DE MAD BARZ
map <Leader>n				:NERDTreeToggle<CR>|					"
map <Leader>N			 :NERDTreeFocus<CR>|					 "
map <Leader>nn			:NERDTreeClose<CR>|						"
map <Leader>nf			 :NERDTreeFind<CR>
let NERDTreeMapUpdirKeepOpen			 ='..'
nnoremap <Leader>ql :call NERDTreeQuickLook()<CR>
" let NERDTreeMapActivateNode			 ='<Space><Space>'	"['<Space><Space>', 'o']

map <Leader>b			 :CtrlPBuffer<CR>|							"ctrlp buffer search, way better than buffergator etc...
map <Leader>P			 :CtrlPMixed<CR>|							"ctrlp mixed search
map <Leader>F			 :FZF<CR>|										 "well
imap <C-x><C-l>			<Plug>(fzf-complete-line)
imap <C-x><C-f>			<Plug>(fzf-complete-file-ag)
vnoremap <silent> KK :call SearchVisualSelectionWithAg()<CR>
function! SearchVisualSelectionWithAg() range
	let old_reg = getreg('"') | let old_regtype = getregtype('"') | let old_clipboard = &clipboard
	set clipboard&
	normal! ""gvy
	let selection = getreg('"')
	call setreg('"', old_reg, old_regtype) | let &clipboard = old_clipboard
	execute 'Ag' selection
endfunction

map <Leader><Leader>u		 :UndotreeToggle<CR>|					 "undotree
" nnoremap <Leader>s+ :let w:f=?filetype | setlocal filetype=nowrite | setlocal syntax=w:f<CR>| "unset filetype, keep syntax (eg to get multiple help windows)
nmap <Leader>bj			:bnext<CR>|":BuffergatorMruCyclePrev<cr>|	"Go to the previous buffer open
nmap <Leader>bk			:bprev<CR>|":BuffergatorMruCycleNext<cr>|	"Go to the next buffer open
nmap <Leader>t			:TagbarToggle<CR>
nmap <Leader>tt			:TagbarOpenAutoClose<CR>/
nmap <Leader>T			:TagbarTogglePause<CR>
" map <Leader>bt			:BuffergatorTabsOpen<CR>
" map <Leader>bT			:BuffergatorTabsClose<CR>

nmap <Leader>st			:Startify<CR>|								 "wah

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

"{{{2 				TEXTMANIP
xmap <C-h>        		<Plug>(textmanip-move-left)
xmap <C-j>        		<Plug>(textmanip-move-down)
xmap <C-k>       		 	<Plug>(textmanip-move-up)
xmap <C-l>        		<Plug>(textmanip-move-right)
nmap <Leader>o 				<Plug>(textmanip-blank-below)
nmap <Leader>O 				<Plug>(textmanip-blank-above)
"{{{2 				EASYALIGN
xmap 		ga 				<Plug>(LiveEasyAlign)|	" Start interactive EasyAlign in visual mode (e.g. vipga)
nmap 		ga 				<Plug>(EasyAlign)|			" Start interactive EasyAlign for a motion/text object (e.g. gaip)
map <Leader>gat 	:EasyAlign /\t/<CR>|		" shortcut to align first tab
map <Tab>ga 	    :EasyAlign /\t/<CR>|		" shortcut to align first tab
xmap <Leader>gat 	:EasyAlign /\t/<CR>
map <Leader>gas 	:EasyAlign /\s/<CR>|		" first whitespace
map <Space>ga			:EasyAlign /\s/<CR>|		" first whitespace
xmap <Leader>gas 	:EasyAlign /\s/<CR>
map <Leader>gad 	:EasyAlign /\d/<CR>|		" first number
xmap <Leader>gad 	:EasyAlign /\d/<CR>
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
"{{{2 				 TAB/WINDOW NAVIGATION/UTILS via airline, wintabs, taboo et al
"ideally would check if there are tabs and if not, straight win nav...
augroup TabNavigationSetup | autocmd!
	autocmd VimEnter,TabEnter	 call TabNavigationSetup()
augroup END
function! TabNavigationSetup()
	let numtabs = tabpagenr('$')

	let i=1
	if numtabs == 1
		let maptext = 'wincmd w'
		while i <= 4
			execute 'nmap <Leader>'.i . i.maptext
			let i += 1
		endwhile

		"setup straight window jumps instead
	else
		let maptext = '<Plug>AirlineSelectTab'
		while i <= 4
			execute 'nmap <Leader>'.i . maptext.i
			let i += 1
		endwhile

	endif
	" for
		"programatically setup what used manual stuff for before

endfunction

" nmap <leader>1				<Plug>AirlineSelectTab1
" nmap <leader>2				<Plug>AirlineSelectTab2
" nmap <leader>3				<Plug>AirlineSelectTab3
" nmap <leader>4				<Plug>AirlineSelectTab4

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
nmap <Leader>tr             :TabooRename |      "start rename
" nmap <leader>w1				<Plug>(wintabs_tab1)
" nmap <leader>w2				<Plug>(wintabs_tab2)
" nmap <leader>w3				<Plug>(wintabs_tab3)
" nmap <leader>w4				<Plug>(wintabs_tab4)
" nmap <leader>w5				<Plug>(wintabs_tab5)
" nmap <leader>w6				<Plug>(wintabs_tab6)
" nmap <leader>w7				<Plug>(wintabs_tab7)
" nmap <leader>w8				<Plug>(wintabs_tab8)
" nmap <leader>w9				<Plug>(wintabs_tab9)
" nmap <leader>w-				<Plug>(wintabs_next)
" nmap <leader>w+				<Plug>(wintabs_previous)

nnoremap <Leader>b1					:b

"}}}
"{{{2 				GITGUTTER
nmap <Leader>ggn            <Plug>GitGutterNextHunk
nmap <Leader>ggp            <Plug>GitGutterPreviousHunk
nmap <Leader>ggg            <Plug>GitGutterPreviewHunk| 					"look at hunk under cursor in preview window
nmap <Leader><Leader>gg     <Plug>GitGutterPreviewHunk| 					"look at hunk under cursor in preview window
nmap <Leader>ggu            <Plug>GitGutterUndoHunk| 					"
nmap <Leader>ggs            <Plug>GitGutterStageHunk| 					"
nmap <Leader>ggd            :let g:gitgutter_diff_base=''<Left>| 		"gitgutter diff-against. list commits fzf to pick would be good
" nnoremap <Leader>ggm 				:let g:gitgutter_diff_base ='master' \| GitGutter<CR>| 	"diff against master
nnoremap <Leader>ggm 				:call GitGutterDiff('master')<CR>| 			"test
nnoremap <Leader>ggh 				:let g:gitgutter_diff_base ='head' <BAR> GitGutter<CR>| 		"diff against head
nnoremap <Leader>ggi 				:let g:gitgutter_diff_base ='' <BAR> GitGutter<CR>| 				"diff against last commit/default
nnoremap <Leader>ggb 				:let g:gitgutter_diff_base =system("git merge-base master $(git rev-parse head)") <BAR> GitGutter<CR>
function! GitGutterDiff(...)
	let diff = a:0
	let g:gitgutter_diff_base_last = g:gitgutter_diff_base 			"stash so can go back quickly...
	let g:gitgutter_diff_base 		 = a:diff
	GitGutter
endfunction "}}}

nnoremap <Leader>mks          :SSave<CR>|               "save startify session

nmap <silent><Leader>gv       <Plug>GoldenViewResize
nmap <silent><Leader>gvs      <Plug>GoldenViewSwitchWithLargest
nnoremap <silent><Leader>gvt 	:ToggleGoldenViewAutoResize<CR>
noremap <Leader>9							:let @w = float2nr(log10(line("$"))) + 82<BAR>vertical resize <C-r>w<CR>

nnoremap <Leader>deo 				  :call deoplete#toggle()<CR>

nnoremap <Leader>shl 				  :SemanticHighlightToggle<CR>| 			"toggle semantic highlight for vars..
nnoremap <silent><Leader>ct   :silent Dispatch! ctags_gen<cr>| 		"noneed really cause tagbar handles auto

map p                   <Plug>(miniyank-autoput)| 		"miniyank replaces normal paste
map P                   <Plug>(miniyank-autoPut)| 		"(imap paste rebound in normal section)
map <M-y>               <Plug>(miniyank-cycle)| 			"an extra imap with <c-o> would be good to have, but doesnt seem to cycle so no go
map <M-p> 			        <Plug>(miniyank-cycle)| 			"just a lil extra for p+m-p quick cycle
" map <Leader>p 	        <Plug>(miniyank-cycle)| 			"good compromise, moved ctrlp-all to P

map <silent>-      				    :TComment<CR>| 					"comment/uncomment curr line even more better easier
" map <silent><M-->    			    :TComment<CR>| 					"comment/uncomment curr line
imap <silent><M--> 	     <C-o>:TComment<CR>| 					"while in insert
vmap 	v 						    <Plug>(expand_region_expand)|	"yeah makes shit ton more sense. Just keep pressing v yo!
vmap 	<C-v> 				    <Plug>(expand_region_shrink)
vmap 	<Leader>v 		    <Plug>(expand_region_shrink)
let g:AutoPairsShortcutToggle 		='<Leader>ap' 	"clear autopairs default binds (to free up M-p)
let g:AutoPairsShortcutFastWrap 	='<Leader>apw'
let g:AutoPairsShortcutJump 			='<Leader>apj'
let g:AutoPairsShortcutBackInsert ='<Leader>api'

nnoremap <silent><M-m> 	 	:MaximizerToggle!<CR>| 	"maximize/restore window

" nnoremap <Leader>pio 			:call SetupPlatformioEnvironment(expand("%:p:h"))<CR>

let denite_opts						='-no-empty -auto-resize'
nnoremap <Leader>de 			:Denite -no-empty -auto-resize <Tab>| "-auto-highlight
nnoremap <Leader>dw 			:DeniteCursorWord -no-empty -auto-resize | "-auto-highlight
nnoremap <Leader>deb 			:Denite -auto-resize buffer<CR>| "

call denite#custom#map('insert', '<C-j>', '<denite:move_to_next_line>', 'noremap')
call denite#custom#map('insert', '<C-k>', '<denite:move_to_previous_line>', 'noremap')

" nnoremap <Leader>r 				:call Ranger()<CR>

nmap ,  <Plug>Sneak_;|   "flipped makes much more sense on a Swedish keyboard - same shift/nonshift direction as n/N
nmap ;  <Plug>Sneak_,
omap s	<Plug>Sneak_s|		"not sure why z not mapped by default like it says in readme... weird. Something is breaky with mappign z, weird. but sticking to s/S makes more sense anyways surely?
omap S	<Plug>Sneak_S|		"cause they're free ffs

noremap # 								:Meta<CR>
noremap ## 							  :MetaResume<CR>
noremap ** 							  :MetaCursorWord<CR>
noremap *** 							:MetaResumeCursorWord<CR>
" vnoremap ** 				 <C-o>:MetaCursorWord<CR>|		"no work.	also, ought to have a "ListaWithSelection"
noremap <Leader>** 			  :sp<CR>:MetaResumeCursorWord<CR>

"{{{2 				MULTIPAGE
function! MultiPage() "TODO: set some register to current line pos
	split | clearjumps | wincmd T "create split, move window to new tab
	MPageToggle
	windo set wrap! | call DisableRelativeNumbers()
	10wincmd l 		"move to rightmost window bc scrolling only works from that end for some reason
endfun
nnoremap <Leader>mp 			:call MultiPage()<CR>| 	"}}}

let g:NumberToggleTrigger	='<Leader>rn'
nnoremap <Leader>rnf 			:call DisableRelativeNumbers()<CR>

nnoremap <Leader>color					:ColorClear<CR>:ColorToggle<CR>:ColorSwapFgBg<CR>| 	"highlight color names/codes with their color
nnoremap <Leader><Leader>color 	:ColorClear<CR>| 									"off

"Language Client Server completion thingy mapping yooe
if exists(':LanguageClientStart')
	nnoremap <silent> <Leader>K 	:call LanguageClient_textDocument_hover()<CR>
	nnoremap <silent> <Leader>gd 	:call LanguageClient_textDocument_definition()<CR>
	nnoremap <silent> <Leader>RE 	:call LanguageClient_textDocument_rename()<CR>
	nnoremap          <Leader>lc 	:LanguageClientStart<CR>
endif

nnoremap <Leader>PI 			:PlugUpgrade<BAR>PlugClean!<BAR>sleep<BAR>PlugInstall<BAR>sleep<BAR>PlugUpdate<CR>| "vim-plug install+update+upgrade
nnoremap <Leader>pi 			:PlugInstall<CR>
"}}}
"⸏⸏⸏⸏⸏⸏⸏⸏⸏⸏⸏⸏⸏⸏⸏⸏⸏⸏⸏⸏⸏⸏⸏⸏⸏⸏⸏⸏⸏⸏⸏⸏⸏⸏⸏⸏⸏⸏⸏


"{{{1 				 VIM-PLUG EXTRAS

"{{{2 				 VIMAWESOME COMPLETE, wtf the fuck that means
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
	augroup _VimAwesomeComplete | autocmd!
		autocmd CursorMovedI,InsertLeave * iunmap <buffer> <c-v>
		autocmd! _VimAwesomeComplete
	augroup END

	call complete(col('.') - strchars(prefix), cands)
endif
return ''
endfunction
"}}}
augroup VimAwesomeComplete | autocmd!
	" autocmd FileType vim 		  inoremap <c-x><c-v> 	<c-r>=VimAwesomeComplete()<cr>
	" steals completion in cmdline window etc, fuck off...
augroup END


"{{{2 				OPEN PLUG UNDER CURSOR (gx) + shitty tol attempt at generalizing
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
augroup END "}}}

"}}}


"{{{1 				VIMPAGER BS


let g:vimpager = {}
let g:less     = {}
" if exists('g:vimpager.enabled') 						"vimpager specific settings...
" 	set nocursorline nowrap  showtabline 			=1
	" set 
" 	set nowrap
" 	sign unplace *
" 	AirlineToggle
"
" "   if exists('g:vimpager.ptree') && g:vimpager.ptree[-2] == 'wman'
" "     set filetype=man
" " 	endif
" endif
"
" function! LessStatusLine() "{{{2
"     redir => pos
"     silent! file
"     redir END
"     " remove trailing newline
"     let pos = substitute(pos, '[\r\n]\+', '', 'g')
"     " remove any beginning quotes
"     let pos = substitute(pos, '^"*', '', '')
"     " remove tmp dir path
"     if exists('a:opts.tmp_dir')
"         let pos = substitute(pos, '^/*\V' . a:opts.tmp_dir . '\m/*', '', '')
"         let pos = substitute(pos, '^/*\V' . resolve(a:opts.tmp_dir) . '\m/*', '', '')
"     else
"         let pos = substitute(pos, '^.*/', '', '')
"     endif
"     " remove possible [readonly] or [Modified] tag
"     let pos = substitute(pos, '\[\%(readonly\|Modified\)\]\s\+', '', '')
"     " remove closing quote
"     let pos = substitute(pos, '"\(\s\+\d*\s*line\)', '\1', '')
"     " urldecode
"     let pos = substitute(pos, '%\(\x\x\)', '\=nr2char("0x" . submatch(1))', 'g')
"     " add help message
"     let leader = exists('g:mapleader') ? g:mapleader : '\'
"     let pos .= "  [ Press '".leader."h' for BUTT ]"
"     " Trim the status line to fit the window width.
"     let width = &columns - 12
"     let pos = len(pos) >= width ? '<' . pos[-width+1:-1] : pos
"     highlight VimpagerStatusLine ctermbg=NONE ctermfg=DarkMagenta guibg=NONE guifg=#FFFFFF
"     echohl VimpagerStatusLine
"     redraw
"     unsilent echo pos
"     echohl None
"
" endfunction "}}}

" let g:vimpager 					={'showtabline': 0}
" let g:less 							={'scrolloff': 0 }
" let g:less.statusfunc 	='LessStatusLine' 							"vimpager statusline
" let g:less.number 			=1

" function! HideCursorInLessMode() "{{{2
"     if exists('g:less.buffers.'.bufnr('%').'.enabled') && g:less.buffers[bufnr('%')].enabled ==# 1
"         if &l:t_ve !=# ''
"             let s:current_t_ve = &l:t_ve
"             setlocal t_ve=
"         endif
"     else
"         if exists('s:current_t_ve') && &l:t_ve ==# ''
"             let &l:t_ve = s:current_t_ve
"             normal! M
"         endif
"     endif
" endfunction
"
" function! RestoreCursor()
"     if exists('s:current_t_ve') && s:current_t_ve !=# ''
"         let &t_ve = s:current_t_ve
"     endif
" endfunction
" "}}}
" augroup hide_cursor_for_less
"     autocmd!
"     autocmd BufWinEnter,CursorHold,CursorHoldI,CursorMoved,CursorMovedI * call HideCursorInLessMode()
"     autocmd VimLeave * call RestoreCursor()
" augroup END
"}}}
