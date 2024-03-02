lua require('plugins')
"lua require("neo-tree").paste_default_config()
lua require('lsp-configure')
"disable space behaviour
map("", "<Space>", "<Nop>", opts)
"vim.keymap.set("", "<Space>", "<Nop>")
"let mapleader = '\<Space>'
let mapleader= " "
let maplocalleader = " " 

"manson call
lua require("mason").setup()
lua require("mason-lspconfig").setup()
"lua require("lsp").setup()
lua require('lualine').setup()
"lua require('lualinetheme')
"lua require('noiceconfig')
lua require('cmpsetup')
"auto setup with lspconfig, adding more Language Sever following this instruction : require("lspconfig").[lsp-server].setup {}
lua require("lspconfig").clangd.setup{} 

colorscheme catppuccin-mocha " catppuccin-latte, catppuccin-frappe, catppuccin-macchiato, catppuccin-mocha
"vim.cmd.colorscheme "catppuccin
set number

"telescope keymap
" Find files using Telescope command-line sugar.
"nnoremap <leader>ff <cmd>Telescope find_files<cr>
"nnoremap <leader>fg <cmd>Telescope live_grep<cr>
"nnoremap <leader>fb <cmd>Telescope buffers<cr>
"nnoremap <leader>fh <cmd>Telescope help_tags<cr>

" Using Lua functions
nnoremap <leader>ff <cmd>lua require('telescope.builtin').find_files()<cr>
nnoremap <leader>fg <cmd>lua require('telescope.builtin').live_grep()<cr>
nnoremap <leader>fb <cmd>lua require('telescope.builtin').buffers()<cr>
nnoremap <leader>fh <cmd>lua require('telescope.builtin').help_tags()<cr>

"let mapleader = " " " map leader to Space

"let mapleader = '\<Space>'
"nnoremap <silent> <leader> :<c-u>LeaderGuide '<Space>'<CR>
"vnoremap <silent> <leader> :<c-u>LeaderGuideVisual '<Space>'<CR>

" Define prefix dictionary
"let g:lmap = {}

" Simple command
"nnoremap <leader>s :up<CR>
"let g:lmap.s = 'save file'

" A command with a special (<...>) key
"nnoremap <leader><Tab> :call feedkeys(":")<CR>
"let g:lmap['<Tab>'] = 'cmd'

" To define a group create a dictionary with the special 'name' field
"let g:lmap.b = {'name' : 'buffers'}

" A mapping within a group
"nnoremap <leader>bl :ls<CR>
"let g:lmap.b.l = 'list'


" Register the dictionary with leader guide
"call leaderGuide#register_prefix_descriptions("<Space>", "g:lmap)
"nnoremap <silent> <leader> :<c-u>LeaderGuide '<Space>'<CR>
"vnoremap <silent> <leader> :<c-u>LeaderGuideVisual '<Space>'<CR>

"remap into advanced search box 
nnoremap <leader>s :SearchBoxIncSearch<CR>
"remap : into FineCmdline plugin
"nnoremap : <cmd>FineCmdline<CR>

"float term keymaps
nnoremap   <silent>   <F7>    :FloatermNew --position=topright<CR>
tnoremap   <silent>   <F7>    <C-\><C-n>:FloatermNew --position=topright<CR>
nnoremap   <silent>   <F8>    :FloatermPrev<CR>
tnoremap   <silent>   <F8>    <C-\><C-n>:FloatermPrev<CR>
nnoremap   <silent>   <F9>    :FloatermNext<CR>
tnoremap   <silent>   <F9>    <C-\><C-n>:FloatermNext<CR>
nnoremap   <silent>   <F12>   :FloatermToggle<CR>
tnoremap   <silent>   <F12>   <C-\><C-n>:FloatermToggle<CR>

