"dein Scripts-----------------------------
" Required:
set runtimepath+=/Users/sebastianwyngaard/.local/share/dein/repos/github.com/Shougo/dein.vim

if dein#load_state('/Users/sebastianwyngaard/.local/share/dein')
" Required:
    call dein#begin('/Users/sebastianwyngaard/.local/share/dein')

    " Let dein manage dein
    " Required:
    call dein#add('/Users/sebastianwyngaard/.local/share/dein/repos/github.com/Shougo/dein.vim')

    "plugins
    call dein#add('challenger-deep-theme/vim')
    call dein#add('ghifarit53/daycula-vim', {'rev' : 'main'}) 

    call dein#add('neoclide/coc.nvim', {'merged': 0, 'rev': 'release'})
    call dein#add('junegunn/fzf', {'build': './install', 'merged': 0})
    call dein#add('junegunn/fzf.vim', {'depends': 'junegunn/fzf'})
    call dein#add('stsewd/fzf-checkout.vim')
    call dein#add('tpope/vim-fugitive')
    call dein#add('tpope/vim-dispatch')
    call dein#add('justinmk/vim-dirvish')
    call dein#add('itchyny/lightline.vim')
    call dein#add('wellle/targets.vim')
    call dein#add('tpope/vim-surround')
    call dein#add('tikhomirov/vim-glsl')
    call dein#add('octol/vim-cpp-enhanced-highlight')
    call dein#add('liuchengxu/vim-which-key')
    call dein#add('mhinz/vim-startify')
    call dein#add('unblevable/quick-scope')
    call dein#add('junegunn/goyo.vim')
    call dein#add('justinmk/vim-sneak')
    call dein#add('airblade/vim-gitgutter')
    "call dein#add('aurieh/discord.nvim')
    call dein#add('kyazdani42/nvim-web-devicons')
    call dein#add('mbbill/undotree')
    call dein#add('voldikss/vim-floaterm')
    call dein#add('Yggdroot/indentLine')

    "I really hope they make treesitter usable soon, way too slow and buggy rn
    "call dein#add('nvim-treesitter/nvim-treesitter', { 'merged' : 0 })

    " Required:
    call dein#end()
    call dein#save_state()
endif

" Required:
filetype plugin indent on
syntax enable

" If you want to install not installed plugins on startup.
if dein#check_install()
    call dein#install()
endif
"End dein Scripts-------------------------
