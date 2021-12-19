if exists("b:current_syntax")
  finish
endif

syn keyword kuKeywords let func return impure if
syn keyword kuType int char string bool void

syn match kuComment "#.*$"

syn region kuString start='"' end='"'
syn match kuNumber "\<[0-9]\+D\=\>"
syn match kuIdent "^[a-zA-Z0-9_\.]\+:\="


let b:current_syntax = "kansuu"

hi def link kuKeywords Keyword
hi def link kuType Type
hi def link kuComment Comment
hi def link kuIdent Identifier
hi def link kuNumber Number
hi def link kuString String
