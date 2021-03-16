" Vim syntax file
" Language: Celestia Star Catalogs
" Maintainer: Kevin Lauder
" Latest Revision: 26 April 2008

if exists("b:current_syntax")
   finish
endif

" Keywords
syn keyword syntaxElementKeyword keyword1 keyword2 nextgroup=syntaxElement2

" Matches
syn match syntaxElementMatch 'regexp' contains=syntaxElement1
nextgroup=syntaxElement2 skipwhite

" Regions
syn region syntaxElementRegion start='x' end='y
syn keyword basicLanguageKeywords PRINT OPEN IF
syn keyword celBlockCmd RA Dec SpectralType Mass Distance AbsMag
"Integer with - + or nothing in front
syn match celNumber '\d\+'
syn match celNumber '[-+]\d\+'
" Floating point number with decimal no E or e 
syn match celNumber '[-+]\d\+\.\d*'

" Floating point like number with E and no decimal point (+,-)
syn match celNumber '[-+]\=\d[[:digit:]]*[eE][\-+]\=\d\+'
syn match celNumber '\d[[:digit:]]*[eE][\-+]\=\d\+'
" Floating point like number with E and decimal point (+,-)
syn match celNumber '[-+]\=\d[[:digit:]]*\.\d*[eE][\-+]\=\d\+'
syn match celNumber '\d[[:digit:]]*\.\d*[eE][\-+]\=\d\+'
