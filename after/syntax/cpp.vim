" . dot
syntax match cppSymbol "\w\+\zs\.\ze\w\+"
" ^ means nothing?
syntax match cppSymbol "\w\+\zs+\ze\w\+"
syntax match cppSymbol "\w\+\zs\-\ze\w\+"
syntax match cppSymbol "\w\+\zs\/\ze\w\+"
syntax match cppSymbol "\w\+\zs\*\ze\w\+"
syntax match cppSymbol "\w\+\zs\=\ze\w\+"
" syntax match cppSymbol "+\|-\|/\|*"
" || &&
syntax match cppSymbol "||"
syntax match cppSymbol "&&"

syntax match cppSymbol "\w\+\zs\<\ze\w\+"
syntax match cppSymbol "\w\+\zs\>\ze\w\+"

"fix hl for this
syntax match cppRecede "\s\+\zs\*\ze\w\+"
syntax match cppRecede "\w\+\zs\*\ze\s\+"
" syntax match cppRecede "\w\+\zs&\ze\s\+"
syntax match cppRecede "\w\+\zs&\ze"

" syntax match cppTernary "\w\+\zs\:\ze\s\+"
" syntax match cppTernary "\w\+\zs?\ze\s\+"
syntax match cppTernary "\w\+\zs?\ze\s"
" highlight link cppSymbol
