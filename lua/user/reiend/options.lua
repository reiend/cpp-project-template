local options = {
  fileencoding = 'utf-8', -- type of encoded text written on a file.
  cot = { 'menuone', 'noselect' }, -- options for completion ins-completion.
  syntax = 'on', -- enabled syntax highlighting.
  number = true, -- show line numbers.
  cursorline = true, -- highlight the current line number.
  ruler = true, -- cursoer position diagnostics.
  expandtab = true, -- tab to spaces.
  shiftwidth = 2, -- spaces inserted for each indentation.
  tabstop = 2, -- n of spaces for a tab.
  showtabline = 0, -- no tab display.
  ignorecase = true, -- ignore character casing.
  smartcase = true, -- enabled smart casing.
  smartindent = true, -- enabled smart indentation.
  wrap = false, -- one liner only, don't wrap.
  termguicolors = true, -- enable 24-bit RBG color.
  backup = false, -- no file backup on edit.
  swapfile = false, -- no swap file.
  undofile = true, -- saved undos even quit.
  splitbelow = true, -- horizontal split go below.
  splitright = true, -- vertical split go right.
  timeoutlen = 350, -- time in milliseconds to wait for a mapped sequence to complete.
  updatetime = 100, -- faster completion
  showmode = false, -- dont display text mode
  relativenumber = true,
  laststatus = 3,
  scrolloff = 8,
  clipboard = 'unnamedplus',
  -- colorcolumn = "80"
}

-- use options
for key2, value2 in pairs(options) do
  vim.opt[key2] = value2
end
