"remappings
nnoremap <C-h> <C-w>h
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-l> <C-w>l

" Better nav for omnicomplete
inoremap <expr> <c-j> ("\<C-n>")
inoremap <expr> <c-k> ("\<C-p>")
cnoremap <expr> <c-j> ("\<C-n>")
cnoremap <expr> <c-k> ("\<C-p>")

" Better indenting
vnoremap < <gv
vnoremap > >gv

"
" LEADER MAPPINGS BEGIN HERE
"

let mapleader = ' '

"fix terminal escape
"tnoremap <C-[> <C-\><C-n>

nnoremap <Leader>o :on<CR>
nnoremap <leader>q :call CloseAll()<CR>
function CloseAll()
    call SaveSession()
    wqall
endfunction

nnoremap <leader><tab> gt
nnoremap <leader><s-tab> gT 

nnoremap <leader>i :Startify<CR>
"some leader shortcuts for commonly used commands
imap jj  <esc>
cmap jj <esc> 
nnoremap <leader>f :Files<CR>
nnoremap <leader>b :MyBuffers<CR>
nnoremap <leader>j :Jumps<CR>

"file navigation maps
nmap <leader>u :call OpenCWD()<CR>
function OpenCWD()
    let s:cwd=getcwd()
    execute 'e ' . s:cwd
endfunction

nmap - <Plug>(dirvish_up)

"settings for quickly changing config
nmap <leader>cc :e ~/.config/nvim/init.vim<CR>
nmap <leader>cu :so ~/.config/nvim/init.vim<CR>

function! s:show_documentation()
  if (index(['vim','help'], &filetype) >= 0)
    execute 'h '.expand('<cword>')
  elseif (coc#rpc#ready())
    call CocActionAsync('doHover')
  else
    execute '!' . &keywordprg . " " . expand('<cword>')
  endif
endfunction

" GoTo code navigation.
nmap <silent> <leader>ld <Plug>(coc-definition)
nmap <silent> K show_documentation() 
nmap <silent> <leader>li <Plug>(coc-implementation)
nmap <silent> <leader>lr <Plug>(coc-references)
nmap <silent> <leader>lp <Plug>(coc-diagnostic-previous)
nmap <silent> <leader>ln <Plug>(coc-diagnostic-next)
nmap <silent> <leader>lc <Plug>(coc-rename)

"git mappings
nnoremap <leader>gs :G<CR> :only<CR>
nnoremap <leader>gp :Gpush<CR>
nnoremap <leader>gc :Gcommit<CR>
nnoremap <silent> <Leader>gg :Commits<CR>

"Fuzzy search maps
"TODO: Try and find a way to make MyBuffers and Jumps prettier
nnoremap <silent> <Leader>sb :MyBuffers<CR>
nnoremap <silent> <Leader>sf :Files<CR>
nnoremap <silent> <Leader>sj :Jumps<CR>
nnoremap <silent> <Leader>sp :Rg<CR>
nnoremap <silent> <Leader>sl :BLines<CR>
nnoremap <silent> <Leader>s' :Marks<CR>
nnoremap <silent> <Leader>sH :Helptags<CR>

"history commands
nnoremap <silent> <Leader>hh :History<CR>
nnoremap <silent> <Leader>h: :History:<CR>
nnoremap <silent> <Leader>h/ :History/<CR> 

imap <C-a> <home>
imap <C-e> <end>
cmap <C-a> <home>
cmap <C-e> <end>

nnoremap / /\v
vnoremap / /\v

" Use K to show documentation in preview window.
nnoremap <silent> K <cmd>lua vim.lsp.buf.hover()<CR>

nmap <C-x>j :FloatermToggle 'j'<CR>
nmap <C-x>k :FloatermToggle 'k'<CR>
nmap <C-x>l :FloatermToggle 'l'<CR>
nmap <C-x>; :FloatermToggle ';'<CR>
tmap <C-x> <C-\><C-n>:FloatermToggle<CR>
