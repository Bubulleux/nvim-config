local levels = vim.diagnostic.severity

local opts = {
  virtual_text = true,
  float = {
    border = 'rounded',
  },
  signs = {
    text = {
      [levels.ERROR] = '✘',
      [levels.WARN] = '▲',
      [levels.HINT] = '⚑',
      [levels.INFO] = '»',
    },
  },
}

local sign_define = function(name, text)
  local hl = 'DiagnosticSign' .. name
  vim.fn.sign_define(hl, {
    texthl = hl,
    text = text,
    numhl = ''
  })
end
vim.diagnostic.config(opts)
