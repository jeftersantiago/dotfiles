return{
  "lervag/vimtex",
  lazy = false,     -- we don't want to lazy load VimTeX
  -- tag = "v2.15", -- uncomment to pin to a specific release
  init = function()
    -- VimTeX configuration goes here, e.g.
    vim.g.vimtex_view_general_viewer = "evince"
    -- vim.g.vimtex_compiler_method = "latexmk"
    vim.keymap.set('n', '<leader>o', ':VimtexView <CR>', {})

    vim.keymap.set('n', '<leader>lc', function()
      -- Read the first line of the current file to check for '%! TEX root' directive
      local root = vim.fn.system("grep -m 1 '^%! TEX root' " .. vim.fn.expand('%:p') .. " | cut -d '=' -f 2 | xargs")
      -- Trim whitespace from the root file path
      root = root:gsub("%s+", "")

      -- If no root is found, fall back to 'main.tex' in the current working directory
      if root == "" then
        root = "main.tex"
      end

      -- Expand the root file to an absolute path
      root = vim.fn.expand(root)

      -- Run pdflatex with the root file
      vim.cmd(string.format(":!pdflatex -interaction=nonstopmode --shell-escape %s", root))
    end, { noremap = true, silent = true })
  end
}

