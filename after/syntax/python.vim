syntax match self 'self'
highlight! link self GruvboxFg3

syntax match comma ','
" syntax keyword comma contained , "how does this work.
highlight! link comma helpOption
" highlight comma ctermfg=White guifg=White
syntax match dot '\.'
highlight! link dot helpOption "Special
" highlight dot ctermfg=White guifg=White
syntax match underscore '_'
highlight! link underscore GruvboxFg2
" highlight underscore ctermfg=White guifg=White

syntax match paran1 '('
syntax match paran2 ')'
syntax match bracket1 '\['
syntax match bracket2 '\]'
highlight! link paran1 Special
highlight! link paran2 Special
highlight! link bracket1 helpOption
highlight! link bracket2 helpOption

syntax match colon ':'
hi! link colon GruvboxFg2
" highlight colon cterm=bold gui=bold,underline

" nvim python plug stuff
syntax   match   nvim      'nvim'
syntax   match   current   'current'
syntax   match   buffer    'buffer'
syntax   match   window    'window'
syntax   match   options   'options'
syntax   match   command   'command'
syntax   match   call      'call'
hi! link nvim pythonImport
" hi! link current GruvboxPurple
hi! current cterm=underline gui=underline guifg=None
hi! link buffer GruvboxYellow
hi! link window GruvboxOrange
hi command 	cterm=bold gui=bold
hi call 	cterm=bold gui=bold
hi options 	cterm=bold gui=bold
