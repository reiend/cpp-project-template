function setColorSchemeEverforest()
  -- value = hard | medium | soft
  vim.g.everforest_background = 'hard'
  vim.g.everforest_better_performance = 1
  vim.opt.background = 'dark'
  vim.cmd [[ colorscheme everforest ]]
end
