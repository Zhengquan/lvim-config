--[[
lvim is the global options object

Linters should be
filled in as strings with either
a global executable or a path to
an executable
]]
-- THESE ARE EXAMPLE CONFIGS FEEL FREE TO CHANGE TO WHATEVER YOU WANT

-- general
lvim.log.level = "warn"
lvim.colorscheme = "onedarker"

lvim.format_on_save = true
-- to disable icons and use a minimalist setup, uncomment the following
-- lvim.use_icons = false

-- keymappings [view all the defaults by pressing <leader>Lk]
lvim.leader = "space"
-- add your own keymapping
lvim.keys.normal_mode["<C-s>"] = ":w<cr>"
-- unmap a default keymapping
-- lvim.keys.normal_mode["<C-Up>"] = false
-- edit a default keymapping
-- lvim.keys.normal_mode["<C-q>"] = ":q<cr>"

-- Change Telescope navigation to use j and k for navigation and n and p for history in both input and normal mode.
-- we use protected-mode (pcall) just in case the plugin wasn't loaded yet.
-- local _, actions = pcall(require, "telescope.actions")
-- lvim.builtin.telescope.defaults.mappings = {
--   -- for input mode
--   i = {
--     ["<C-j>"] = actions.move_selection_next,
--     ["<C-k>"] = actions.move_selection_previous,
--     ["<C-n>"] = actions.cycle_history_next,
--     ["<C-p>"] = actions.cycle_history_prev,
--   },
--   -- for normal mode
--   n = {
--     ["<C-j>"] = actions.move_selection_next,
--     ["<C-k>"] = actions.move_selection_previous,
--   },
-- }

-- Use which-key to add extra bindings with the leader-key prefix
lvim.builtin.which_key.mappings["P"] = { "<cmd>Telescope projects<CR>", "Projects" }
lvim.builtin.which_key.mappings["t"] = {
  name = "+Trouble",
  r = { "<cmd>Trouble lsp_references<cr>", "References" },
  f = { "<cmd>Trouble lsp_definitions<cr>", "Definitions" },
  d = { "<cmd>Trouble document_diagnostics<cr>", "Diagnostics" },
  q = { "<cmd>Trouble quickfix<cr>", "QuickFix" },
  l = { "<cmd>Trouble loclist<cr>", "LocationList" },
  w = { "<cmd>Trouble workspace_diagnostics<cr>", "Wordspace Diagnostics" },
}

-- TODO: User Config for predefined plugins
-- After changing plugin config exit and reopen LunarVim, Run :PackerInstall :PackerCompile
lvim.builtin.alpha.active = true
lvim.builtin.alpha.mode = "dashboard"
lvim.builtin.dap.active = true -- (default: false)
lvim.builtin.terminal.active = true
lvim.builtin.nvimtree.setup.view.side = "left"


-- disable always jumping to home directory
lvim.builtin.project.manual_mode = true


-- if you don't want all the parsers change this to a table of the ones you want
lvim.builtin.treesitter.ensure_installed = {
  "bash",
  "c",
  "javascript",
  "json",
  "lua",
  "python",
  "typescript",
  "tsx",
  "css",
  "rust",
  "java",
  "yaml",
}

lvim.builtin.treesitter.ignore_install = { "haskell" }
lvim.builtin.treesitter.highlight.enabled = true

-- generic LSP settings

-- ---@usage disable automatic installation of servers
-- lvim.lsp.automatic_servers_installation = false

-- ---configure a server manually. !!Requires `:LvimCacheReset` to take effect!!
-- ---see the full default list `:lua print(vim.inspect(lvim.lsp.automatic_configuration.skipped_servers))`
-- vim.list_extend(lvim.lsp.automatic_configuration.skipped_servers, { "pyright" })
-- local opts = {} -- check the lspconfig documentation for a list of all possible options
-- require("lvim.lsp.manager").setup("pyright", opts)

-- ---remove a server from the skipped list, e.g. eslint, or emmet_ls. !!Requires `:LvimCacheReset` to take effect!!
-- ---`:LvimInfo` lists which server(s) are skiipped for the current filetype
-- vim.tbl_map(function(server)
--   return server ~= "emmet_ls"
-- end, lvim.lsp.automatic_configuration.skipped_servers)

-- -- you can set a custom on_attach function that will be used for all the language servers
-- -- See <https://github.com/neovim/nvim-lspconfig#keybindings-and-completion>
-- lvim.lsp.on_attach_callback = function(client, bufnr)
--   local function buf_set_option(...)
--     vim.api.nvim_buf_set_option(bufnr, ...)
--   end
--   --Enable completion triggered by <c-x><c-o>
--   buf_set_option("omnifunc", "v:lua.vim.lsp.omnifunc")
-- end

-- -- set a formatter, this will override the language server formatting capabilities (if it exists)
local formatters = require "lvim.lsp.null-ls.formatters"
formatters.setup {
  { command = "black", filetypes = { "python" } },
  { command = "isort", filetypes = { "python" } },
  { command = "rustfmt", filetypes = { "rust" } },
  { command = "gofmt", filetypes = { "go" } },
  {
    command = "prettier",
    extra_args = { "--print-with", "100" },
    filetypes = { "typescript", "typescriptreact" },
  },
}

-- -- set additional linters
local linters = require "lvim.lsp.null-ls.linters"
linters.setup {
  { command = "flake8", filetypes = { "python" } },
  {
    command = "shellcheck",
    extra_args = { "--severity", "warning" },
  },
  {
    command = "codespell",
    filetypes = { "javascript", "python" },
  },
}


--- set code actions
local code_actions = require "lvim.lsp.null-ls.code_actions"
code_actions.setup {
  {
    command = "proselint"
  },
}

-- lsp config

local function on_attach(client, bufnr)
  -- Find the clients capabilities
  local cap = client.resolved_capabilities

  -- Only highlight if compatible with the language
  if cap.document_highlight then
    vim.cmd('augroup LspHighlight')
    vim.cmd('autocmd!')
    vim.cmd('autocmd CursorHold <buffer> lua vim.lsp.buf.document_highlight()')
    vim.cmd('autocmd CursorMoved <buffer> lua vim.lsp.buf.clear_references()')
    vim.cmd('augroup END')
  end
end

require 'lspconfig'.tsserver.setup({ on_attach = on_attach })


-- Additional Plugins
lvim.plugins = {
  { "folke/tokyonight.nvim" },
  { "lunarvim/onedarker" },
  {
    "folke/trouble.nvim",
    cmd = "TroubleToggle",
  },

  -- numb plugin for peek lins
  {
    "nacro90/numb.nvim",
    event = "BufRead",
    config = function()
      require("numb").setup {
        show_numbers = true, -- Enable 'number' for the window while peeking
        show_cursorline = true, -- Enable 'cursorline' for the window while peeking
      }
    end,
  },

  {
    'wfxr/minimap.vim',
    build = "cargo install --locked code-minimap",
    cmd = { "Minimap", "MinimapClose", "MinimapToggle", "MinimapRefresh", "MinimapUpdateHighlight" },
    config = function()
      vim.cmd("let g:minimap_width = 10")
      vim.cmd("let g:minimap_auto_start = 1")
      vim.cmd("let g:minimap_auto_start_win_enter = 1")
    end,
  },

  -- vim surround
  {
    "tpope/vim-surround",
    -- make sure to change the value of `timeoutlen` if it's not triggering correctly, see https://github.com/tpope/vim-surround/issues/117
    init = function()
      vim.o.timeoutlen = 500
    end
  },

  -- plant uml
  {
    "aklt/plantuml-syntax",
    ft = { 'pu', 'uml', 'puml', 'iuml', 'plantuml' },
    config = function()
      vim.cmd [[
        let g:plantuml_executable_script = get(
          \  matchlist(system('cat `which plantuml` | grep plantuml.jar'), '\v.*\s[''"]?(\S+plantuml\.jar).*'),
          \  1,
          \  0
          \)
      ]]
    end,
  },
  { -- open-browser.vim
    "tyru/open-browser.vim",
    cmd = 'PlantumlOpen',
  },
  { -- plantuml-previewer.vim
    "weirongxu/plantuml-previewer.vim",
    after = { "open-browser.vim" },
    cmd = 'PlantumlOpen',
    config = function()
      vim.cmd [[
        let g:plantuml_previewer#plantuml_jar_path = get(
          \  matchlist(system('cat `which plantuml` | grep plantuml.jar'), '\v.*\s[''"]?(\S+plantuml\.jar).*'),
          \  1,
          \  0
          \)
        let g:plantuml_previewer#save_format = 'svg'
      ]]
    end,
  },


  -- Markdown
  { -- nvim-markdown-preview
    -- 动态预览
    "davidgranstrom/nvim-markdown-preview",
    cmd = "MarkdownPreview",
    init = function()
      vim.cmd [[
        let g:nvim_markdown_preview_theme = 'github'
        let g:nvim_markdown_preview_format = 'markdown'
      ]]
    end,
  },

  -- vim-repeat
  { 'tpope/vim-repeat' },

  -- dash.vim for document search
  {
    'mrjones2014/dash.nvim',
    build = 'make install',
  },

  -- rust vim
  { "rust-lang/rust.vim" },

  -- completion

  {
    "tzachar/cmp-tabnine",
    build = "./install.sh",
    dependencies = "hrsh7th/nvim-cmp",
    event = "InsertEnter",
  },


  --- refactoring
  {
    "nvim-treesitter/nvim-treesitter-refactor",
    config = function()
      require 'nvim-treesitter.configs'.setup {
        refactor = {
          highlight_current_scope = { enable = true },
          highlight_definitions = {
            enable = true,
            -- Set to false if you have an `updatetime` of ~100.
            clear_on_cursor_move = true,
          },
          smart_rename = {
            enable = true,
            keymaps = {
              smart_rename = "grr",
            },
          },
        },
      }

    end
  },


  -- hop / EasyMotion
  {
    "phaazon/hop.nvim",
    event = "BufRead",
    config = function()
      require("hop").setup()
      vim.api.nvim_set_keymap("n", "s", ":HopChar1<cr>", { silent = true })
      vim.api.nvim_set_keymap("n", "S", ":HopWord<cr>", { silent = true })
    end,
  },

  -- golang
  { 'ray-x/go.nvim' },
  { 'ray-x/guihua.lua' },

}

-- Rust key mappings

lvim.builtin.which_key.mappings["r"] = {
  name = "Rust Commands",
  r = { ":update<CR>:RustRun<CR>", "Rust run" },
  d = { ":update<CR>:RustDebuggables<CR>", "Rust debuggables" },
  l = { ":RustRunnables<CR>", "Rust runnables" },
  c = { ":update<CR>:Cargo run<CR>", "Cargo run" },
  p = { ":update<CR>:Cargo clippy<CR>", "Cargo clippy" },
  w = {
    ":update<CR>:sp term://cargo watch -s 'clear && cargo run -q'<CR>",
    "Cargo watch",
  },
}

--- Which Key Mappings
lvim.builtin.which_key.mappings["D"] = { "<cmd>Telescope Dash search<CR>", "Dash" }

-- Autocommands (https://neovim.io/doc/user/autocmd.html)
-- lvim.autocommands.custom_groups = {
--   { "BufWinEnter", "*.lua", "setlocal ts=8 sw=8" },
-- }

--- Theme config
-- local theme = {}
-- local conf = require('modules.themes.config')
-- theme["folke/tokyonight.nvim"] = {
--   opt = true,
--   init = conf.tokyonight,
--   config = function()
--     vim.cmd [[hi CursorLine guibg=#353644]]
--     vim.cmd([[colorscheme tokyonight]])
--     vim.cmd([[hi TSCurrentScope guibg=#282338]])
--   end
-- }
