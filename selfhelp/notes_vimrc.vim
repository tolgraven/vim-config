"⸏⸏⸏⸏⸏⸏⸏⸏⸏⸏⸏⸏⸏⸏⸏⸏⸏⸏⸏⸏⸏⸏⸏⸏⸏⸏⸏⸏⸏⸏⸏⸏⸏⸏⸏⸏⸏⸏⸏ 
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
" general vimrc changes since february - checked first commit...
" my vimrc / any plugs, at all, actually - same when using empty
" fira code / ligatures - at least when just switched off mid-session
"
" iterm2 --beta / --nightly vs. stable...
" iterm2 at all - seems same (but less hardcore maybe) in Terminal.app... != 
"
" MAYBE:
" ligatures / iterm2 coretext vs core graphics rendering 
"
" DEFINITELY:
" multiple scrolling regions, something?
" same phenomenom but actually 1000x worse scrolling with two shells open in a couple tmux splits...
"
"
"}}}
"________________________________________

""{{{1 				NOTES

"a"{{{2  			TEXT OBJECTS
	dl"		delete character (alias: "x")		|dl|
	diw"	delete inner word								*diw*
	daw"	delete a word										*daw*
	diW"	delete inner WORD (see |WORD|)	*diW*
	daW"	delete a WORD (see |WORD|)			*daW*
	dgn" 	delete the next search match    *dgn*
	dd"		delete one line									|dd|
	dis"	delete inner sentence						*dis*
	das"	delete a sentence								*das*
	dib"	delete inner '(' ')' block			*dib*
	dab"	delete a '(' ')' block					*dab*
	dip"	delete inner paragraph					*dip*
	dap"	delete a paragraph							*dap*
	diB"	delete inner '{' '}' block			*diB*
	daB"	delete a '{' '}' block					*daB*

"{{{2					SURROUND
Old text(*=cursor)        Command     New text ~

"Hello *world!"           ds"         Hello world!
[123+4*56]/2              cs])        (123+456)/2
"Look ma, I'm *HTML!"     cs"<q>      <q>Look ma, I'm HTML!</q>
if *x>3 {                 ysW(        if ( x>3 ) {
my $str = *whee!;         vllllS'     my $str = 'whee!';	
DELETE:::
"Hello *world!"           ds"         Hello world!
(123+4*56)/2              ds)         123+456/2
<div>Yo!*</div>           dst         Yo!
CHANGE:::
"Hello *world!"           cs"'        'Hello world!'
"Hello *world!"           cs"<q>      <q>Hello world!</q>
(123+4*56)/2              cs)]        [123+456]/2
(123+4*56)/2              cs)[        [ 123+456 ]/2
<div>Yo!*</div>           cst<p>      <p>Yo!</p>

   *ys* takes a valid Vim motion or text object as the first object, and wraps it using the second argument as with |cs|.  (It's a stretch, but a good mnemonic for "ys" is "you surround".)
 w*orld!             ysiw)       Hello (world)!

 special case, *yss* operates on the current line, ignoring leading whitespace.
w*orld!       yssB             {Hello world!}

   There is also *yS* and *ySS* which indent the surrounded text and place it on a line of its own.
"}}}

{{{2  			 FOLD MANIP
 	zf#j 	 		 creates a fold from the cursor down # lines.
 	zf/string  creates a fold from the cursor to string.
 	zj				 moves the cursor to the next fold.
 	zk				 moves the cursor to the previous fold.
 	zo				 opens a fold at the cursor.
 	zO				 opens all folds at the cursor.
 	zm				 increases the foldlevel by one.
 	zM				 closes all open folds.
 	zr				 decreases the foldlevel by one.
 	zR				 decreases the foldlevel to zero -- all folds will be open.
 	zd				 deletes the fold at the cursor.
 	zE				 deletes all folds.
 	[z				 move to start of open fold.
 	]z				 move to end of open fold.
"}}}
"{{{2 				WINDOW MGMT
<C-W> _ "Max out the height of the current split"
<C-W> | "Max out the width of the current split"
<C-W> = "Normalize all split sizes, which is very handy when resizing terminal
<C-W> R "Swap top/bottom or left/right split
<C-W> T "Break out current window into a new tabview
<C-W> o "Close every window in the current tabview but the current one"
"}}}
normal mode {  } = move to prev/next empty line (have remapped so arrow keys work like athat)

[I list all lines containing word under cursor! remap to something?
or reimplement / find version that retains highlighting and actually highlights search


q: and q/  	= highlighted command window with list of prev cmds/searches
<C-f> opens history when already at : prompt

<C-X><C-L> = complete entire lines, p cool!

gp / gP = paste without moving cursor

" explains weird <expr> '' "" differences: 			use double-quotes and "\..." notation |expr-quote|
feedkeys("\<CR>") simulates pressing of the <Enter> key, feedkeys('\<CR>') pushes 5 characters.

"{{{2 				CHANGE CASE
Toggle case "HellO" to "hELLo"		g~	   then a movement.
Uppercase "HellO" to "HELLO" 			gU	   then a movement.
Lowercase "HellO" to "hello" 			gu	   then a movement.
visual mode:  ~ to toggle case, U uppercase, u lowercase.
"}}}
"{{{2 				HELP SEARCH PREFIXES
" TODO:  help stuff - each help topic has a context:
Prefix	Example				Context
:				:h :r					ex command (starting with a colon)
none		:h r					normal mode
v_			:h v_r				visual mode
i_			:h i_CTRL-W		insert mode
c_			:h c_CTRL-R		ex command line
/				:h /\r				search pattern (in this case, :h \r also works)
'				:h 'ro'				option
-				:h -r					Vim argument (starting Vim)
"}}}

g-
g+ 		" step back and forth in history purely time-wise (ignoring branches): 
g;
g, 		" moves backward and forward in edit locations

<C-r>" (paste at commandline: for default register)

C-^ is (randomly or  bc my remappings in osx + vim both?) equiv to the C-] that follows help links...
rebinding to <CR><CR>? 

"{{{2 				BIT DUH
not vim but | pipe is or in fzf, dun forget
no specific setting to toggle the sign column. clear it with: :sign unplace *
C-o / C-i = go back to prev locations _including in other buffers_. NICE! so works for help etc..
jf open file under cursor (+ gd go to definition)
gx = open url under cursor (not from plugin, is part of vim)
"}}}

"{{{2 				from plugs:
WINDOWSWAP: plugin I had all along.... <Leader>ww in one window, then another, to swap them, without fucking with the arr

!!!!! tab/s-tab navigates matches while searching, without having to press enter and 'commit'...  from incsearch plug

from scriptease: K does viml help, zS show highlighting group under cursor,
:Verbose auto redir to preview window, etc... good.
