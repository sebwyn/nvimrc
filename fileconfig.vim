"file configurations
autocmd FileType text call SetTextOptions() 
function SetTextOptions()
    setlocal nonumber
    setlocal norelativenumber
    setlocal spell
    set spelllang=en_us  
    inoremap <C-l> <c-g>u<Esc>[s1z=`]a<c-g>u
endfunction
autocmd TermOpen * call SetTextOptions() 
