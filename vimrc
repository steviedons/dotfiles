syntax on
filetype plugin indent on
let g:powerline_pycmd = 'py3'
set laststatus=2
set t_Co=256

let &t_SI .= "\<Esc>[?2004h"
let &t_EI .= "\<Esc>[?2004l"
inoremap <special> <expr> <Esc>[200~ XTermPasteBegin()
