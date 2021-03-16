if version < 600
      syntax clear
  elseif exists("b:current_syntax")
        finish
    endif

syntax keyword Foo Foo
highlight Foo cterm=bold,underline

