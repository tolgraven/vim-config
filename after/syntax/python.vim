" syntax match self 'self'
syntax keyword pythonSelf self cls
highlight! link pythonSelf GruvboxFg3

syntax match pythonComma ','
" syntax keyword comma contained , "how does this work.
highlight! link pythonComma helpOption
syntax match pythonDot '\.'
highlight! link pythonDot helpOption "Special
syntax match pythonUnderscore '_'
highlight! link pythonUnderscore GruvboxFg2
" highlight underscore ctermfg=White guifg=White

syntax match pythonBrackets "[|]"
syntax match pythonParan 		"(|)"
syntax match pythonBraces 	"{|}"

syn match pythonExtraOperator "\%([~!^&|/%+-]\|\%(class\s*\)\@<!<<\|<=>\|<=\|\%(<\|\<class\s\+\u\w*\s*\)\@<!<[^<]\@=\|===\|==\|=\~\|>>\|>=\|=\@<!>\|\.\.\.\|\.\.\|::\)"
syn match pythonExtraPseudoOperator "\%(-=\|/=\|\*\*=\|\*=\|&&=\|&=\|&&\|||=\||=\|||\|%=\|+=\|!\~\|!=\)"

" syntax match paran1 '('
" syntax match paran2 ')'
" syntax match bracket1 '\['
" syntax match bracket2 '\]'
highlight! link pythonParan Special
highlight! link pythonBrackets helpOption
highlight! link pythonBraces GruvboxFg3

" syntax match colon ':'
" hi! link colon GruvboxFg2
" highlight colon cterm=bold gui=bold,underline


" nvim python rplugin stuff
syntax   keyword   nvim      nvim
syntax   keyword   current   current
syntax   keyword   buffer    buffer
syntax   keyword   window    window
syntax   keyword   options   options
syntax   keyword   command   command
syntax   keyword   call      call
hi! link nvim pythonImport
" hi! link current GruvboxPurple
hi! current cterm=underline gui=underline guifg=None
hi! link buffer GruvboxYellow
hi! link window GruvboxOrange
hi options 	cterm=bold gui=bold
hi command 	cterm=bold gui=bold
hi call 	cterm=bold gui=bold
