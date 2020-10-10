"Better cpp highlighting
let g:cpp_member_variable_highlight = 1
let g:cpp_class_decl_highlight = 1
let g:cpp_member_variable_highlight = 1
let g:cpp_class_scope_highlight = 1
"lua <<EOF
"require'nvim-treesitter.configs'.setup {
"  ensure_installed = "cpp",     -- one of "all", "language", or a list of languages
"  highlight = {
"    enable = true,              -- false will disable the whole extension
"    disable = {},  -- list of language that will be disabled
"  },
"}
"EOF
