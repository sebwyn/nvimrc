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
hi! link CocErrorSign Statement 

let g:gitgutter_set_sign_backgrounds = 1

colorscheme challenger_deep
let g:challenger_deep_terminal_italics = 1

"lightline settings
let g:lightline = {
      \ 'colorscheme': 'challenger_deep',
      \ 'active': {
      \   'left': [ [ 'mode', 'paste' ],
      \             [ 'gitbranch', 'readonly', 'filename', 'modified' ] ]
      \ },
      \ 'component_function': {
      \   'gitbranch': 'FugitiveHead'
      \ },
      \ }

"galaxyline settings
"lua <<EOF
"    local gl = require('galaxyline')
"    local gls = gl.section
"
"    local colors = {
"          bg = '#1e1c31',
"          yellow = '#ffe9aa',
"          cyan = '#008080',
"          darkblue = '#081633',
"          green = '#95ffa4',
"          orange = '#FF8800',
"          purple = '#c991e1',
"          magenta = '#d16d9e',
"          grey = '#767676',
"          blue = '#91ddff',
"          red = '#ff8080'
"    }
"
"    function split (inputstr, sep)
"        if sep == nil then
"            sep = "%s"
"        end
"        local t={}
"        for str in string.gmatch(inputstr, "([^"..sep.."]+)") do
"            table.insert(t, str)
"        end
"        return t
"    end    
"
"    local buffer_not_empty = function()
"        if vim.fn.empty(vim.fn.expand('%:t')) ~= 1 then
"            return true
"        end
"        return false
"    end
"
"    local modes = {
"        n    = { name = 'NORMAL', color = colors.grey},
"        i    = { name = 'INSERT', color = colors.green},
"        c    = { name = 'COMMAND', color = colors.red},
"        v    = { name = 'VISUAL', color = colors.purple},
"        V    = { name = 'V-LINE', color = colors.purple},
"        ['']  = { name = 'V-BLOCK', color = colors.purple},
"        [''] = { name = 'VISUAL', color = colors.purple},
"    }
"
"    gls.left[1] = {
"        ViMode = { 
"            provider = function()
"                if modes[vim.fn.mode()] then
"                    local hiCmd = 'hi GalaxyViMode gui=bold guifg='..colors.bg..' guibg='..modes[vim.fn.mode()]['color']
"                    vim.cmd(hiCmd)
"                    return ' -- '..modes[vim.fn.mode()]['name']..' '
"                else 
"                    return ' -- UNKNOWN -- '
"                end
"            end,
"            separator = '',
"            separator_highlight = {
"                function() 
"                    return modes[vim.fn.mode()]['color'] 
"                end,
"                colors.bg
"            },
"        },
"    }
"
"    gls.left[2] ={
"        FileIcon = {
"            provider = 'FileIcon', 
"            condition = buffer_not_empty,
"            separator = ' ',
"            separator_highlight = {colors.bg, colors.bg},
"            highlight = {colors.bg, colors.bg},
"        },
"    }
"    gls.left[3] = {
"        FileName = {
"            provider = {'FileName','FileSize'},
"            condition = buffer_not_empty,
"            separator = ' ',
"            separator_highlight = {colors.purple,colors.bg},
"            highlight = {colors.magenta,colors.bg}
"        }
"    }
"EOF
