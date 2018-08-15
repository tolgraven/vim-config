" WARNING: This code has the following KNOWN deficiencies:
"
"   · Consecutive #_ macros are not matched correctly:
"       (list #_#_ 1 2 3) ;; => (3)
"   · Bracket character literals within #_ comment regions break syntax:
"       #_[\a \[ \] \b ] ;; broken
"   · Compound forms preceded by reader metacharacters are unmatched:
"       #_'(α β γ) ;; broken
"   · Atomic forms preceded by reader metacharacters + whitespace are unmatched:
"       #_' foo ;; broken
"
syntax match  clojureCommentAtom            /\v#_[ \t\r\n ]*[^()\[\]{} \t\r\n]+/
syntax region clojureCommentListContained   start=/(/  end=/)/ contains=clojureCommentListContained,clojureCommentVectorContained,clojureCommentMapContained,clojureCommentStringContained contained
syntax region clojureCommentVectorContained start=/\[/ end=/]/ contains=clojureCommentListContained,clojureCommentVectorContained,clojureCommentMapContained,clojureCommentStringContained contained
syntax region clojureCommentMapContained    start=/{/  end=/}/ contains=clojureCommentListContained,clojureCommentVectorContained,clojureCommentMapContained,clojureCommentStringContained contained
syntax region clojureCommentStringContained start=/"/  skip=/\v\\\\|\\"/ end=/"/ contained
syntax region clojureCommentList matchgroup=clojureCommentDelimiter start=/\v#_[ \t\r\n ]*\(/ end=/)/ contains=clojureCommentListContained,clojureCommentVectorContained,clojureCommentMapContained,clojureCommentStringContained
syntax region clojureCommentVector matchgroup=clojureCommentDelimiter start=/\v#_[ \t\r\n ]*\[/ end=/]/ contains=clojureCommentListContained,clojureCommentVectorContained,clojureCommentMapContained,clojureCommentStringContained
syntax region clojureCommentMap matchgroup=clojureCommentDelimiter start=/\v#_[ \t\r\n ]*\{/ end=/}/ contains=clojureCommentListContained,clojureCommentVectorContained,clojureCommentMapContained,clojureCommentStringContained
syntax region clojureCommentString matchgroup=clojureCommentDelimiter start=/\v#_[ \t\r\n ]*"/ skip=/\v\\\\|\\"/ end=/"/
highlight link clojureCommentDelimiter       clojureComment
highlight link clojureCommentAtom            clojureComment
highlight link clojureCommentListContained   clojureComment
highlight link clojureCommentVectorContained clojureComment
highlight link clojureCommentMapContained    clojureComment
highlight link clojureCommentStringContained clojureComment
highlight link clojureCommentList            clojureComment
highlight link clojureCommentVector          clojureComment
highlight link clojureCommentMap             clojureComment
highlight link clojureCommentString          clojureComment
