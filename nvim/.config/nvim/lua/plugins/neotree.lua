return{
  "nvim-neo-tree/neo-tree.nvim",
  branch = "v3.x",
  dependencies = {
    "nvim-lua/plenary.nvim",
    "nvim-tree/nvim-web-devicons", -- not strictly required, but recommended
    "MunifTanjim/nui.nvim",
    -- "3rd/image.nvim", -- Optional image support in preview window: See `# Preview Mode` for more information
  },

  config = function()
    vim.keymap.set('n', '<C-n>', ':Neotree filesystem reveal left<CR>', {})
    vim.keymap.set('n','<C-b>',':Neotree show buffers right<cr>', {})
--    vim.keymap.set('n','/', ':Neotree toggle current reveal_force_cwd<cr>', {})
    vim.keymap.set('n','|', ':Neotree reveal<cr>', {})
    vim.keymap.set('n','gd',  ':Neotree float reveal_file=<cfile> reveal_force_cwd<cr>', {})
  end
}
