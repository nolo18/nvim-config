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
    -- Default templates configuration works perfectly for me.

    -- follow link behaviour
    -- taken from https://github.com/epwalsh/obsidian.nvim?tab=readme-ov-file#configuration-options

    -- external urls
    follow_url_function = function(url)
      vim.fn.jobstart { 'xdg-open', url }
    end,

    -- image urls
    follow_img_func = function(img)
      vim.fn.jobstart { 'xdg-open', img }
    end,

    attachments = {
      img_folder = 'assets',
    },
  },
}
-- vim: ts=2 sts=2 sw=2 et
