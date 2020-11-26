"don't pass messages to completion
set shortmess+=c
"set up nvim-lsp
"lua <<EOF
"function attach()
"    require'completion'.on_attach()
"    require'diagnostic'.on_attach()
"end
"
"-- init languages here
"require'nvim_lsp'.clangd.setup{on_attach=attach}
"require'nvim_lsp'.cmake.setup{on_attach=attach}
"EOF

"completion settings
set completeopt=menuone,noinsert,noselect
"let g:completion_matching_strategy = ['exact', 'substring', 'fuzzy']



"diagnostic settings
"hi link LspDiagnosticsError Keyword
"call sign_define("LspDiagnosticsErrorSign", {"text" : "✗", "texthl" : "LspDiagnosticsError"})
"call sign_define("LspDiagnosticsWarningSign", {"text" : "W", "texthl" : "LspDiagnosticsWarning"})
"call sign_define("LspDiagnosticsInformationSign", {"text" : "I", "texthl" : "LspDiagnosticsInformation"})
"call sign_define("LspDiagnosticsHintSign", {"text" : "H", "texthl" : "LspDiagnosticsHint"})
