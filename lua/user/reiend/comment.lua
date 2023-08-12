local status_ok, configs = pcall(require, 'Comment')

if not status_ok then
  return
end

configs.setup {
  -- enable commenting base on context with jsx, tsx, and etc
  pre_hook = require('ts_context_commentstring.integrations.comment_nvim').create_pre_hook(),
}
