return {
  "L3MON4D3/LuaSnip",
  config = function()
    local luasnip = require("luasnip")

    -- Load snippets from ~/.config/nvim/LuaSnip/
    require("luasnip.loaders.from_lua").lazy_load({paths = "~/.config/nvim/snippets/"})

    -- Somewhere in your Neovim startup, e.g. init.lua
    require("luasnip").config.set_config({ -- Setting LuaSnip config
      -- Enable autotriggered snippets
      enable_autosnippets = true,

      -- Use Tab (or some other key if you prefer) to trigger visual selection
      store_selection_keys = "<Tab>",
    })
    
    -- Yes, we're just executing a bunch of Vimscript, but this is the officially
    -- endorsed method; see https://github.com/L3MON4D3/LuaSnip#keymaps
    vim.cmd[[
    " Use Tab to expand and jump through snippets
    imap <silent><expr> <Tab> luasnip#expand_or_jumpable() ? '<Plug>luasnip-expand-or-jump' : '<Tab>' 
    smap <silent><expr> <Tab> luasnip#jumpable(1) ? '<Plug>luasnip-jump-next' : '<Tab>'

    " Use Shift-Tab to jump backwards through snippets
    imap <silent><expr> <S-Tab> luasnip#jumpable(-1) ? '<Plug>luasnip-jump-prev' : '<S-Tab>'
    smap <silent><expr> <S-Tab> luasnip#jumpable(-1) ? '<Plug>luasnip-jump-prev' : '<S-Tab>'
    ]]
  end
}












