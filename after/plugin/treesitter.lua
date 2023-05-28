require'nvim-treesitter.configs'.setup {
  -- A list of parser names, or "all"
  ensure_installed = { "javascript", "typescript", "lua", "html", "css" },

  -- Install parsers synchronously (only applied to `ensure_installed`)
  sync_install = false,

  -- Automatically install missing parsers when entering buffer
  -- Recommendation: set to false if you don't have `tree-sitter` CLI installed locally
  auto_install = true,

  highlight = {
    -- `false` will disable the whole extension
    enable = true,
    disable = function(lang, bufnr) -- Disable in large C++ buffers
            return vim.api.nvim_buf_line_count(bufnr) > 10000
        end,

    -- Setting this to true will run `:h syntax` and tree-sitter at the same time.
    -- Set this to `true` if you depend on 'syntax' being enabled (like for indentation).
    -- Using this option may slow down your editor, and you may see some duplicate highlights.
    -- Instead of true it can also be a list of languages
    additional_vim_regex_highlighting = false,
  },
  autotag = {
    enable = true
  },
  indent = {
    enable = true
  }
}
--local vim = vim
--local opt = vim.opt
--opt.foldlevel= 20
--opt.foldmethod= "expr"
--opt.foldexpr= "nvim_treesitter#foldexpr()"
--vim.keymap.set("n", "<leader>z", "za")
