local vault_path = '/mnt/Comun/Alejandria'
return {
  'epwalsh/obsidian.nvim',
  version = '*',
  lazy = true,
  event = {
    'BufReadPre ' .. vault_path .. '/*.md',
    'BufNewFile ' .. vault_path .. '/*.md',
  },
  dependencies = {
    'nvim-lua/plenary.nvim',
  },
  opts = {
    workspaces = {
      {
        name = 'Alejandria',
        path = vault_path,
      },
    },
  },
}
-- vim: ts=2 sts=2 sw=2 et
