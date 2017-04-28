" vim: set shiftwidth=2 tabstop=2 softtabstop=2 ft=vim fdm=marker:

let g:pager_mode_so_fuckoff_all_fatasses = 1
let g:AbsoluteNumberWhenOpening		= 1

source ~/.vimrc											 "load regular vimrc

" OVERRIDES:
set number norelativenumber					 "force absolute numbers
set showtabline 						=0 			 "no tabline
set noshowmode 											 "dont show normal/insert etc, cause airline does
set nocursorline
set shortmess               =atT 		 "shorten cmdline messages
set shortmess 						 	+=c 		 "no what-type-of-completion messages in cmdline
set shortmess 							+=A 		 "dont warn about existing swap files

set timeoutlen           		=500 		 "timeout for mapped sequences
set updatetime							=1000 	 	"time idle before bg shit runs?

let &colorcolumn 						=join(range(100,240),',') "fade bg slightly past 100 cols bc fuck yall


let g:deoplete#enable_at_startup = 0


" nnoremap <Leader>						<C-d>
nnoremap q									:quit


" let g:airline#extensions#default#layout =[
"       \ [ 'b', 'gutter' ], 
"       \ [ 'x', 'z' ] ] 
" let w:airline_disabled			=1			"window-local disable


if !exists('g:syntax_on')
	autocmd BufRead,BufNewFile *.* setfiletype sh
endif
