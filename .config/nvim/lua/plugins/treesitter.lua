require('nvim-treesitter.configs').setup{
  ensure_installed = "maintained",
  highlight = {
      enable = true,
      disable = {},
  },
  indent = {
    enable = true,
    disable = {},
  },
}

local treesitter_parser_config = require('nvim-treesitter.parsers').get_parser_configs()
treesitter_parser_config.tsx.used_by = { "javascript", "typescript.tsx" }
