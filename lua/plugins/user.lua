-- if true then return {} end -- WARN: REMOVE THIS LINE TO ACTIVATE THIS FILE

-- You can also add or configure plugins by creating files in this `plugins/` folder
-- Here are some examples:

---@type LazySpec
return {
  {
    "neovim/nvim-lspconfig",
    init = function()
      local lspconfig = require "lspconfig"
      local util = require "lspconfig/util"
      local configs = require "lspconfig.configs"

      if not configs.c3_lsp then
        configs.c3_lsp = {
          default_config = {
            cmd = { "/home/zanshin/software/c3-lsp/server/bin/c3lsp" },
            filetypes = { "c3", "c3i" },
            root_dir = function(fname) return util.find_git_ancestor(fname) end,
          },
          settings = {},
          name = "c3_lsp",
        }
      end
      lspconfig.c3_lsp.setup {}
    end,
  },

  {
    "NeogitOrg/neogit",
    dependencies = {
      "nvim-lua/plenary.nvim", -- required
      "sindrets/diffview.nvim", -- optional - Diff integration

      -- Only one of these is needed.
      "nvim-telescope/telescope.nvim", -- optional
      "ibhagwan/fzf-lua", -- optional
      "echasnovski/mini.pick", -- optional
    },
    config = true,
  },
  {
    "MagicDuck/grug-far.nvim",
    config = function() require("grug-far").setup {} end,
  },
  -- Better LuaLS config
  {
    "hrsh7th/nvim-cmp",
    dependencies = {
      "Bilal2453/luvit-meta",
      "folke/lazydev.nvim",
    },
    opts = function(_, opts)
      opts.sources = opts.sources or {}
      table.insert(opts.sources, { name = "lazydev", group_index = 0 })
    end,
  },
  -- == Examples of Adding Plugins ==
  {
    "ray-x/lsp_signature.nvim",
    event = "BufRead",
    config = function() require("lsp_signature").setup() end,
  },

  -- == Examples of Overriding Plugins ==

  -- customize alpha options
  --{
  --  "goolord/alpha-nvim",
  --  opts = function(_, opts)
  --    -- customize the dashboard header
  --    opts.section.header.val = {
  --      " █████  ███████ ████████ ██████   ██████",
  --      "██   ██ ██         ██    ██   ██ ██    ██",
  --      "███████ ███████    ██    ██████  ██    ██",
  --      "██   ██      ██    ██    ██   ██ ██    ██",
  --      "██   ██ ███████    ██    ██   ██  ██████",
  --      " ",
  --      "    ███    ██ ██    ██ ██ ███    ███",
  --      "    ████   ██ ██    ██ ██ ████  ████",
  --      "    ██ ██  ██ ██    ██ ██ ██ ████ ██",
  --      "    ██  ██ ██  ██  ██  ██ ██  ██  ██",
  --      "    ██   ████   ████   ██ ██      ██",
  --    }
  --    return opts
  --  end,
  --},

  ---- You can disable default plugins as follows:
  --{ "max397574/better-escape.nvim", enabled = false },

  ---- You can also easily customize additional setup of plugins that is outside of the plugin's setup call
  --{
  --  "L3MON4D3/LuaSnip",
  --  config = function(plugin, opts)
  --    require "astronvim.plugins.configs.luasnip"(plugin, opts) -- include the default astronvim config that calls the setup call
  --    -- add more custom luasnip configuration such as filetype extend or custom snippets
  --    local luasnip = require "luasnip"
  --    luasnip.filetype_extend("javascript", { "javascriptreact" })
  --  end,
  --},

  --{
  --  "windwp/nvim-autopairs",
  --  config = function(plugin, opts)
  --    require "astronvim.plugins.configs.nvim-autopairs"(plugin, opts) -- include the default astronvim config that calls the setup call
  --    -- add more custom autopairs configuration such as custom rules
  --    local npairs = require "nvim-autopairs"
  --    local Rule = require "nvim-autopairs.rule"
  --    local cond = require "nvim-autopairs.conds"
  --    npairs.add_rules(
  --      {
  --        Rule("$", "$", { "tex", "latex" })
  --          -- don't add a pair if the next character is %
  --          :with_pair(cond.not_after_regex "%%")
  --          -- don't add a pair if  the previous character is xxx
  --          :with_pair(
  --            cond.not_before_regex("xxx", 3)
  --          )
  --          -- don't move right when repeat character
  --          :with_move(cond.none())
  --          -- don't delete if the next character is xx
  --          :with_del(cond.not_after_regex "xx")
  --          -- disable adding a newline when you press <cr>
  --          :with_cr(cond.none()),
  --      },
  --      -- disable for .vim files, but it work for another filetypes
  --      Rule("a", "a", "-vim")
  --    )
  --  end,
  --},
}
