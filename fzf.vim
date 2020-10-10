"fzf settings
let g:fzf_layout = { 'window': { 'width': 0.8, 'height': 0.5, 'highlight': 'Comment' } }
let g:fzf_colors = {
    \ 'fg':      ['fg', 'Normal'],
    \ 'bg':      ['bg', 'Normal'],
    \ 'hl':      ['fg', 'Comment'],
    \ 'fg+':     ['fg', 'CursorLine', 'CursorColumn', 'Normal'],
    \ 'bg+':     ['bg', 'CursorLine', 'CursorColumn'],
    \ 'hl+':     ['fg', 'Statement'],
    \ 'info':    ['fg', 'PreProc'],
    \ 'border':  ['fg', 'Ignore'],
    \ 'prompt':  ['fg', 'Conditional'],
    \ 'pointer': ['fg', 'Exception'],
    \ 'marker':  ['fg', 'Keyword'],
    \ 'spinner': ['fg', 'Label'],
    \ 'header':  ['fg', 'Comment'],
    \ 'gutter':  ['bg', 'Normal'],
    \ }

function! s:delete_buffers(lines)
    for line in a:lines
        let buf=split(line)[0]
        execute "bdelete " . buf
    endfor
endfunction

let g:fzf_action = {
    \ 'ctrl-d': function('s:delete_buffers'),
    \ 'ctrl-t': 'tab split',
    \ 'ctrl-x': 'split',
    \ 'ctrl-v': 'vsplit' }

function! s:list_buffers()
    redir => list
    silent ls
    redir END
    return split(list, "\n")
endfunction

command! MyBuffers call fzf#run(fzf#wrap({
    \ 'source': s:list_buffers(),
    \ 'options': '--multi --bind ctrl-a:select-all+accept'
    \ }))

function! GetJumps()
    redir => cout
    silent jumps
    redir END
    return reverse(split(cout, "\n")[1:])
endfunction
function! GoToJump(jump)
    let jumpnumber = split(a:jump, '\s\+')[0]
    execute "normal " . jumpnumber . "\<c-o>"
endfunction
command! Jumps call fzf#run(fzf#wrap({
    \ 'source': GetJumps(),
    \ 'sink': function('GoToJump')
    \ }))
