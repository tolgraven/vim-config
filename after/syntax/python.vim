syntax keyword pythonSelf self cls
highlight! link pythonSelf BruvboxFg3

syntax match pythonComma ','
" syntax keyword comma contained , "how does this work.
highlight! link pythonComma helpOption
syntax match pythonDot '\.'
highlight! link pythonDot helpOption "Special
syntax match pythonUnderscore '_'
highlight! link pythonUnderscore BruvboxFg2

syntax match pythonBrackets "[|]"
syntax match pythonParen 		"(|)"
syntax match pythonBraces 	"{|}"

syn match pythonExtraOperator "\%([~!^&|/%+-]\|\%(class\s*\)\@<!<<\|<=>\|<=\|\%(<\|\<class\s\+\u\w*\s*\)\@<!<[^<]\@=\|===\|==\|=\~\|>>\|>=\|=\@<!>\|\.\.\.\|\.\.\|::\)"
syn match pythonExtraPseudoOperator "\%(-=\|/=\|\*\*=\|\*=\|&&=\|&=\|&&\|||=\||=\|||\|%=\|+=\|!\~\|!=\)"

highlight! link pythonParen Special
highlight! link pythonBrackets helpOption
highlight! link pythonBraces GruvboxFg3

" syntax match colon ':'
" hi! link colon BruvboxFg2
" highlight colon cterm=bold gui=bold,underline

" nvim python rplugin stuff
syntax   keyword   pythonNvimNvim      nvim
syntax   keyword   pythonNvimCurrent   current
syntax   keyword   pythonNvimBuffer    buffer
syntax   keyword   pythonNvimWindow    window
syntax   keyword   pythonNvimOptions   options
syntax   keyword   pythonNvimCommand   command
syntax   keyword   pythonNvimCall      call
hi! link pythonNvimNvim pythonImport
hi! pythonNvimCurrent 		cterm=underline gui=underline
hi! link pythonNvimBuffer BruvboxYellow
hi! link pythonNvimWindow BruvboxOrange
hi pythonNvimOptions 			cterm=bold gui=bold
hi pythonNvimCommand 			cterm=bold gui=bold
hi pythonNvimCall 				cterm=bold gui=bold
