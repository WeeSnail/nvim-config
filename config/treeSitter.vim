lua <<EOF
require'nvim-treesitter.configs'.setup {
  context_commentstring = {
      enable = true,
  },
  highlight = {
      enable = true,
      additional_vim_regex_highlighting = false,
      disable = {"html"},
      use_languagetree = true,
  },
  indent = {
    enable = true,
    disable = {},
  },
  ensure_installed = {
      "javascript",
      "jsdoc",
      "css",
      "graphql",
      "html",
      "tsx",
      "scss",
      "json",
      "lua",
      "vim",
      "toml",
      "vue",
  },
  autopairs = {
    enable = true,
  },
  autotag = {
    enable = true,
  },
  rainbow = {
    enable = true,
    extand_mode = true,
  }
}

local parser_config = require "nvim-treesitter.parsers".get_parser_configs()
parser_config.tsx.filetype_to_parsername = { "javascript", "typescript.tsx", "javascriptreact" }
EOF
