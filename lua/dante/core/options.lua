vim.cmd("let g:netrw_liststyle = 3")

local opt = vim.opt --for conciseness

opt.relativenumber = true
opt.number = true

--tabs and indents
opt.tabstop = 2
opt.shiftwidth = 2
opt.expandtab = true --expand tab to spaces
opt.autoindent = true -- repeat indent on new line

opt.wrap = false

--search settings
opt.ignorecase = true
opt.smartcase = true -- assumes case-sensitive when mixed case in search

-- highlight currently selected line
opt.cursorline = true

-- turn on termguicolors for colorscheme to work
opt.termguicolors = true
opt.background = "dark"
opt.signcolumn = "yes"

-- backspace on indent, end of line, or insert start position
opt.backspace = "indent,eol,start"

--use system clipboard as default register
opt.clipboard:append("unnamedplus")

--split windows default directions
opt.splitright = true
opt.splitbelow = true

-- scrolloff (how many lines kept above and below cursor)
opt.scrolloff = 20

-- disable line numbers in terminal mode
vim.api.nvim_create_autocmd({"TermOpen"}, {
  pattern = {"*"},
  command = "setlocal nonumber norelativenumber",
})

-- set colored column at character 80
vim.opt.colorcolumn = "80"
