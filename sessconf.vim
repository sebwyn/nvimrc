set sessionoptions-=options
set ssop-=options

"workspaces
nmap <leader>wu :call CreateSession()<CR>
nmap <leader>wp :echo v:this_session<CR>
nmap <leader>ww :e /Users/sebastianwyngaard/.local/share/nvim/session<CR>

function ConstructSessionName()
    let s:cwd=getcwd()
    let s:name=join(split(s:cwd, '/'), '_') 

    let s:session =
    '/Users/sebastianwyngaard/.local/share/nvim/session/'.s:name.'.vim'
    return s:session
endfunction

function SaveSession()
    if(!empty(v:this_session))
        let s:session=v:this_session
        call delete(v:this_session)
        execute 'mks '.s:session
        return v:true
    endif
    return v:false
endfunction

function CreateSession()
    if(!SaveSession())
        execute
        'mks
        '.ConstructSessionName()
    endif
endfunction

