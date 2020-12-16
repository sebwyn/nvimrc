"file configurations
autocmd FileType text call SetTextOptions() 
function SetTextOptions()
    setlocal nonumber
    setlocal norelativenumber
    setlocal spell
    set spelllang=en_us  
    inoremap <C-l> <c-g>u<Esc>[s1z=`]a<c-g>u
endfunction

function SetTermOptions()
    setlocal nonumber
    setlocal norelativenumber
endfunction

function SetStartifyOptions()
    IndentLinesDisable
endfunction

autocmd TermOpen * call SetTermOptions() 
autocmd FileType startify call SetStartifyOptions()
