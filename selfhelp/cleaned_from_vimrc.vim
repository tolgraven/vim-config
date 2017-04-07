
"{{{1 				NO LONGER RELEVANT

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
"{{{2 				old inactive - SETTINGS

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
"{{{2 				 UNUSED - FUNCTIONS

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
"}}} 
""}}}
