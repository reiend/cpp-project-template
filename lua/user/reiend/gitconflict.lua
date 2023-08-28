local status_ok, git_conflict = pcall(require, 'git-conflict')
if not status_ok then
  return
end

git_conflict.setup {
  debug = false,
  default_mappings = true, -- disable buffer local mapping created by this plugin
  default_commands = true, -- disable commands created by this plugin
  disable_diagnostics = false, -- This will disable the diagnostics in a buffer whilst it is conflicted
  list_opener = 'copen', -- command or function to open the conflicts list
  highlights = { -- They must have background color, otherwise the default color will be used
    incoming = 'DiffAdd',
    current = 'DiffText',
  },
}

vim.keymap.set('n', 'gco', '<Plug>(git-conflict-ours)')
vim.keymap.set('n', 'gct', '<Plug>(git-conflict-theirs)')
vim.keymap.set('n', 'gcb', '<Plug>(git-conflict-both)')
vim.keymap.set('n', 'gc0', '<Plug>(git-conflict-none)')
vim.keymap.set('n', ']x', '<Plug>(git-conflict-prev-conflict)')
vim.keymap.set('n', '[x', '<Plug>(git-conflict-next-conflict)')

