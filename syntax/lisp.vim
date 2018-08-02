" Lisp syn file
" Language: Lisp
" Maintainer: A. Aguilar
" Credit: A. Aguilar

if exists("b:current_syntax")
  finish
endif

" Syntax: {{{
syn keyword todo TODO XXX
syn region comment start=';' end='\n' contains=todo

syn match funcallSymbol '\((\s*\)\@<=\<[^() \t]\+\>'
syn match exteriorSymbol '\<[^() \t]\+:\{1,2}[^() \t]\+\>'
syn match exteriorFuncallSymbol '\((\s*\)\@<=\<[^() \t]\+:\{1,2}[^()\s]\+\>'
syn match functionNamespace '#\'[^() \t]\+'
syn match keyword '\<:[^() \t]\+\>'
syn match lambdaListIndicators '&optional\|&rest\|&key\|&allow-other-keys\|&aux\|&whole\|&body\|&environment'

syn match defSymbol '\<def[^() \t]\+\>'
syn match exteriorDefSymb '\<[^() \t]\+:def[^() \t]\+\>'
syn match withSymbol '\<with[^() \t]\+\>'
syn match exteriorWithSymb '\(\<[^() \t]\+\):with[^() \t]\+\>'

syn region sexpr start='(' end=')' fold transparent
syn region string start='\"' end='\"'
" }}}
" Highlighting Groups: {{{

hi def link funcallSymbol OLispFunction
hi def link exteriorSymbol OLispExtSymb
hi def link exteriorFuncallSymbol OLispExtFunSymb
hi def link functionNamespace OLispFunName
hi def link lambdaListIndicators OLispLLI
hi def link comment OLispComment
hi def link keyword OLispKey
hi def link string OLispString


hi def link defSymbol OLispDefSymb
hi def link exteriorDefSymb OLispExtDefSymb
hi def link withSymbol OLispWSymb
hi def link exteriorWithSymb OLispExtWSymb
hi def link todo OLispTodo

" }}}

let b:current_syntax = 'lisp'

if main_syntax == 'lisp'
  unlet main_syntax
endif

" vim: set foldmethod=marker
