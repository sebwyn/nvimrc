"style
set signcolumn=yes

let $NVIM_TUI_ENABLE_TRUE_COLOR=1
set termguicolors


function! s:customize() abort
    hi! link LineNr NonText
endfunction

augroup on_change_colorschema
    autocmd!
    autocmd ColorScheme * call s:customize()
augroup END

"random visual stuff (Yank highlighting and line length warning)
augroup highlight_yank
    autocmd!
    autocmd TextYankPost * lua vim.highlight.on_yank {higroup='Substitute', timeout=200, on_visual=false}
augroup END

hi! ColorColumn ctermbg=magenta 
call matchadd('ColorColumn', '\%81v', 100)

hi link Folded NonText
hi! link SignColumn NonText

let g:gitgutter_set_sign_backgrounds = 1

colorscheme challenger_deep
let g:challenger_deep_terminal_italics = 1

"lightline settings
let g:lightline = { 'colorscheme': 'challenger_deep' }
