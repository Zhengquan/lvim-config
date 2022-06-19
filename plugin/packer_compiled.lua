-- Automatically generated packer.nvim plugin loader code

if vim.api.nvim_call_function('has', {'nvim-0.5'}) ~= 1 then
  vim.api.nvim_command('echohl WarningMsg | echom "Invalid Neovim version for packer.nvim! | echohl None"')
  return
end

vim.api.nvim_command('packadd packer.nvim')

local no_errors, error_msg = pcall(function()

  local time
  local profile_info
  local should_profile = false
  if should_profile then
    local hrtime = vim.loop.hrtime
    profile_info = {}
    time = function(chunk, start)
      if start then
        profile_info[chunk] = hrtime()
      else
        profile_info[chunk] = (hrtime() - profile_info[chunk]) / 1e6
      end
    end
  else
    time = function(chunk, start) end
  end
  
local function save_profiles(threshold)
  local sorted_times = {}
  for chunk_name, time_taken in pairs(profile_info) do
    sorted_times[#sorted_times + 1] = {chunk_name, time_taken}
  end
  table.sort(sorted_times, function(a, b) return a[2] > b[2] end)
  local results = {}
  for i, elem in ipairs(sorted_times) do
    if not threshold or threshold and elem[2] > threshold then
      results[i] = elem[1] .. ' took ' .. elem[2] .. 'ms'
    end
  end

  _G._packer = _G._packer or {}
  _G._packer.profile_output = results
end

time([[Luarocks path setup]], true)
local package_path_str = "/Users/chriszqyang/.cache/lvim/packer_hererocks/2.1.0-beta3/share/lua/5.1/?.lua;/Users/chriszqyang/.cache/lvim/packer_hererocks/2.1.0-beta3/share/lua/5.1/?/init.lua;/Users/chriszqyang/.cache/lvim/packer_hererocks/2.1.0-beta3/lib/luarocks/rocks-5.1/?.lua;/Users/chriszqyang/.cache/lvim/packer_hererocks/2.1.0-beta3/lib/luarocks/rocks-5.1/?/init.lua"
local install_cpath_pattern = "/Users/chriszqyang/.cache/lvim/packer_hererocks/2.1.0-beta3/lib/lua/5.1/?.so"
if not string.find(package.path, package_path_str, 1, true) then
  package.path = package.path .. ';' .. package_path_str
end

if not string.find(package.cpath, install_cpath_pattern, 1, true) then
  package.cpath = package.cpath .. ';' .. install_cpath_pattern
end

time([[Luarocks path setup]], false)
time([[try_loadstring definition]], true)
local function try_loadstring(s, component, name)
  local success, result = pcall(loadstring(s), name, _G.packer_plugins[name])
  if not success then
    vim.schedule(function()
      vim.api.nvim_notify('packer.nvim: Error running ' .. component .. ' for ' .. name .. ': ' .. result, vim.log.levels.ERROR, {})
    end)
  end
  return result
end

time([[try_loadstring definition]], false)
time([[Defining packer_plugins]], true)
_G.packer_plugins = {
  ["Comment.nvim"] = {
    after_files = { "/Users/chriszqyang/.local/share/lunarvim/site/pack/packer/opt/Comment.nvim/after/plugin/Comment.lua" },
    config = { "\27LJ\2\n?\0\0\3\0\3\0\0066\0\0\0'\2\1\0B\0\2\0029\0\2\0B\0\1\1K\0\1\0\nsetup\22lvim.core.comment\frequire\0" },
    loaded = false,
    needs_bufread = false,
    only_cond = false,
    path = "/Users/chriszqyang/.local/share/lunarvim/site/pack/packer/opt/Comment.nvim",
    url = "https://github.com/numToStr/Comment.nvim"
  },
  ["FixCursorHold.nvim"] = {
    loaded = true,
    path = "/Users/chriszqyang/.local/share/lunarvim/site/pack/packer/start/FixCursorHold.nvim",
    url = "https://github.com/antoinemadec/FixCursorHold.nvim"
  },
  LuaSnip = {
    config = { "\27LJ\2\n¤\3\0\0\n\0\18\2-6\0\0\0'\2\1\0B\0\2\0024\1\3\0009\2\2\0006\4\3\0B\4\1\2'\5\4\0'\6\5\0'\a\6\0'\b\a\0'\t\b\0B\2\a\0?\2\0\0009\2\2\0006\4\t\0B\4\1\2'\5\n\0B\2\3\0029\3\v\0\18\5\2\0B\3\2\2\15\0\3\0X\4\3€\21\3\1\0\22\3\1\3<\2\3\0016\3\0\0'\5\f\0B\3\2\0029\3\r\3B\3\1\0016\3\0\0'\5\14\0B\3\2\0029\3\r\0035\5\15\0=\1\16\5B\3\2\0016\3\0\0'\5\17\0B\3\2\0029\3\r\3B\3\1\1K\0\1\0\"luasnip.loaders.from_snipmate\npaths\1\0\0 luasnip.loaders.from_vscode\14lazy_load\29luasnip.loaders.from_lua\17is_directory\rsnippets\19get_config_dir\22friendly-snippets\nstart\vpacker\tpack\tsite\20get_runtime_dir\15join_paths\15lvim.utils\frequire\3€€À™\4\2\0" },
    loaded = true,
    path = "/Users/chriszqyang/.local/share/lunarvim/site/pack/packer/start/LuaSnip",
    url = "https://github.com/L3MON4D3/LuaSnip"
  },
  ["alpha-nvim"] = {
    config = { "\27LJ\2\n=\0\0\3\0\3\0\0066\0\0\0'\2\1\0B\0\2\0029\0\2\0B\0\1\1K\0\1\0\nsetup\20lvim.core.alpha\frequire\0" },
    loaded = true,
    path = "/Users/chriszqyang/.local/share/lunarvim/site/pack/packer/start/alpha-nvim",
    url = "https://github.com/goolord/alpha-nvim"
  },
  ["bufferline.nvim"] = {
    config = { "\27LJ\2\nB\0\0\3\0\3\0\0066\0\0\0'\2\1\0B\0\2\0029\0\2\0B\0\1\1K\0\1\0\nsetup\25lvim.core.bufferline\frequire\0" },
    loaded = false,
    needs_bufread = false,
    only_cond = false,
    path = "/Users/chriszqyang/.local/share/lunarvim/site/pack/packer/opt/bufferline.nvim",
    url = "https://github.com/akinsho/bufferline.nvim"
  },
  ["cmp-buffer"] = {
    loaded = true,
    path = "/Users/chriszqyang/.local/share/lunarvim/site/pack/packer/start/cmp-buffer",
    url = "https://github.com/hrsh7th/cmp-buffer"
  },
  ["cmp-nvim-lsp"] = {
    loaded = true,
    path = "/Users/chriszqyang/.local/share/lunarvim/site/pack/packer/start/cmp-nvim-lsp",
    url = "https://github.com/hrsh7th/cmp-nvim-lsp"
  },
  ["cmp-path"] = {
    loaded = true,
    path = "/Users/chriszqyang/.local/share/lunarvim/site/pack/packer/start/cmp-path",
    url = "https://github.com/hrsh7th/cmp-path"
  },
  cmp_luasnip = {
    loaded = true,
    path = "/Users/chriszqyang/.local/share/lunarvim/site/pack/packer/start/cmp_luasnip",
    url = "https://github.com/saadparwaiz1/cmp_luasnip"
  },
  ["dash.nvim"] = {
    loaded = true,
    path = "/Users/chriszqyang/.local/share/lunarvim/site/pack/packer/start/dash.nvim",
    url = "https://github.com/mrjones2014/dash.nvim"
  },
  ["friendly-snippets"] = {
    loaded = true,
    path = "/Users/chriszqyang/.local/share/lunarvim/site/pack/packer/start/friendly-snippets",
    url = "https://github.com/rafamadriz/friendly-snippets"
  },
  ["gitsigns.nvim"] = {
    config = { "\27LJ\2\n@\0\0\3\0\3\0\0066\0\0\0'\2\1\0B\0\2\0029\0\2\0B\0\1\1K\0\1\0\nsetup\23lvim.core.gitsigns\frequire\0" },
    loaded = false,
    needs_bufread = false,
    only_cond = false,
    path = "/Users/chriszqyang/.local/share/lunarvim/site/pack/packer/opt/gitsigns.nvim",
    url = "https://github.com/lewis6991/gitsigns.nvim"
  },
  ["hop.nvim"] = {
    config = { "\27LJ\2\nÀ\1\0\0\6\0\r\0\0226\0\0\0'\2\1\0B\0\2\0029\0\2\0B\0\1\0016\0\3\0009\0\4\0009\0\5\0'\2\6\0'\3\a\0'\4\b\0005\5\t\0B\0\5\0016\0\3\0009\0\4\0009\0\5\0'\2\6\0'\3\n\0'\4\v\0005\5\f\0B\0\5\1K\0\1\0\1\0\1\vsilent\2\17:HopWord<cr>\6S\1\0\1\vsilent\2\18:HopChar2<cr>\6s\6n\20nvim_set_keymap\bapi\bvim\nsetup\bhop\frequire\0" },
    loaded = false,
    needs_bufread = false,
    only_cond = false,
    path = "/Users/chriszqyang/.local/share/lunarvim/site/pack/packer/opt/hop.nvim",
    url = "https://github.com/phaazon/hop.nvim"
  },
  ["lua-dev.nvim"] = {
    loaded = false,
    needs_bufread = false,
    only_cond = false,
    path = "/Users/chriszqyang/.local/share/lunarvim/site/pack/packer/opt/lua-dev.nvim",
    url = "https://github.com/max397574/lua-dev.nvim"
  },
  ["lualine.nvim"] = {
    config = { "\27LJ\2\n?\0\0\3\0\3\0\0066\0\0\0'\2\1\0B\0\2\0029\0\2\0B\0\1\1K\0\1\0\nsetup\22lvim.core.lualine\frequire\0" },
    loaded = true,
    path = "/Users/chriszqyang/.local/share/lunarvim/site/pack/packer/start/lualine.nvim",
    url = "https://github.com/nvim-lualine/lualine.nvim"
  },
  ["minimap.vim"] = {
    commands = { "Minimap", "MinimapClose", "MinimapToggle", "MinimapRefresh", "MinimapUpdateHighlight" },
    config = { "\27LJ\2\n \1\0\0\3\0\5\0\r6\0\0\0009\0\1\0'\2\2\0B\0\2\0016\0\0\0009\0\1\0'\2\3\0B\0\2\0016\0\0\0009\0\1\0'\2\4\0B\0\2\1K\0\1\0+let g:minimap_auto_start_win_enter = 1!let g:minimap_auto_start = 1\29let g:minimap_width = 10\bcmd\bvim\0" },
    loaded = false,
    needs_bufread = false,
    only_cond = false,
    path = "/Users/chriszqyang/.local/share/lunarvim/site/pack/packer/opt/minimap.vim",
    url = "https://github.com/wfxr/minimap.vim"
  },
  ["nlsp-settings.nvim"] = {
    loaded = true,
    path = "/Users/chriszqyang/.local/share/lunarvim/site/pack/packer/start/nlsp-settings.nvim",
    url = "https://github.com/tamago324/nlsp-settings.nvim"
  },
  ["null-ls.nvim"] = {
    loaded = true,
    path = "/Users/chriszqyang/.local/share/lunarvim/site/pack/packer/start/null-ls.nvim",
    url = "https://github.com/jose-elias-alvarez/null-ls.nvim"
  },
  ["numb.nvim"] = {
    config = { "\27LJ\2\nX\0\0\3\0\4\0\a6\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\3\0B\0\2\1K\0\1\0\1\0\2\20show_cursorline\2\17show_numbers\2\nsetup\tnumb\frequire\0" },
    loaded = false,
    needs_bufread = false,
    only_cond = false,
    path = "/Users/chriszqyang/.local/share/lunarvim/site/pack/packer/opt/numb.nvim",
    url = "https://github.com/nacro90/numb.nvim"
  },
  ["nvim-autopairs"] = {
    config = { "\27LJ\2\nA\0\0\3\0\3\0\0066\0\0\0'\2\1\0B\0\2\0029\0\2\0B\0\1\1K\0\1\0\nsetup\24lvim.core.autopairs\frequire\0" },
    loaded = true,
    path = "/Users/chriszqyang/.local/share/lunarvim/site/pack/packer/start/nvim-autopairs",
    url = "https://github.com/windwp/nvim-autopairs"
  },
  ["nvim-cmp"] = {
    config = { "\27LJ\2\n`\0\0\3\0\6\0\v6\0\0\0009\0\1\0009\0\2\0\15\0\0\0X\1\5€6\0\3\0'\2\4\0B\0\2\0029\0\5\0B\0\1\1K\0\1\0\nsetup\18lvim.core.cmp\frequire\bcmp\fbuiltin\tlvim\0" },
    loaded = true,
    path = "/Users/chriszqyang/.local/share/lunarvim/site/pack/packer/start/nvim-cmp",
    url = "https://github.com/hrsh7th/nvim-cmp"
  },
  ["nvim-lsp-installer"] = {
    loaded = true,
    path = "/Users/chriszqyang/.local/share/lunarvim/site/pack/packer/start/nvim-lsp-installer",
    url = "https://github.com/williamboman/nvim-lsp-installer"
  },
  ["nvim-lspconfig"] = {
    loaded = true,
    path = "/Users/chriszqyang/.local/share/lunarvim/site/pack/packer/start/nvim-lspconfig",
    url = "https://github.com/neovim/nvim-lspconfig"
  },
  ["nvim-markdown-preview"] = {
    commands = { "MarkdownPreview" },
    loaded = false,
    needs_bufread = true,
    only_cond = false,
    path = "/Users/chriszqyang/.local/share/lunarvim/site/pack/packer/opt/nvim-markdown-preview",
    url = "https://github.com/davidgranstrom/nvim-markdown-preview"
  },
  ["nvim-notify"] = {
    config = { "\27LJ\2\n>\0\0\3\0\3\0\0066\0\0\0'\2\1\0B\0\2\0029\0\2\0B\0\1\1K\0\1\0\nsetup\21lvim.core.notify\frequire\0" },
    loaded = true,
    path = "/Users/chriszqyang/.local/share/lunarvim/site/pack/packer/start/nvim-notify",
    url = "https://github.com/rcarriga/nvim-notify"
  },
  ["nvim-tree.lua"] = {
    config = { "\27LJ\2\n@\0\0\3\0\3\0\0066\0\0\0'\2\1\0B\0\2\0029\0\2\0B\0\1\1K\0\1\0\nsetup\23lvim.core.nvimtree\frequire\0" },
    loaded = true,
    path = "/Users/chriszqyang/.local/share/lunarvim/site/pack/packer/start/nvim-tree.lua",
    url = "https://github.com/kyazdani42/nvim-tree.lua"
  },
  ["nvim-treesitter"] = {
    config = { "\27LJ\2\nB\0\0\3\0\3\0\0066\0\0\0'\2\1\0B\0\2\0029\0\2\0B\0\1\1K\0\1\0\nsetup\25lvim.core.treesitter\frequire\0" },
    loaded = true,
    path = "/Users/chriszqyang/.local/share/lunarvim/site/pack/packer/start/nvim-treesitter",
    url = "https://github.com/nvim-treesitter/nvim-treesitter"
  },
  ["nvim-treesitter-refactor"] = {
    config = { "\27LJ\2\nŽ\2\0\0\6\0\14\0\0176\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\f\0005\3\4\0005\4\3\0=\4\5\0035\4\6\0=\4\a\0035\4\b\0005\5\t\0=\5\n\4=\4\v\3=\3\r\2B\0\2\1K\0\1\0\rrefactor\1\0\0\17smart_rename\fkeymaps\1\0\1\17smart_rename\bgrr\1\0\1\venable\2\26highlight_definitions\1\0\2\25clear_on_cursor_move\2\venable\2\28highlight_current_scope\1\0\0\1\0\1\venable\2\nsetup\28nvim-treesitter.configs\frequire\0" },
    loaded = true,
    path = "/Users/chriszqyang/.local/share/lunarvim/site/pack/packer/start/nvim-treesitter-refactor",
    url = "https://github.com/nvim-treesitter/nvim-treesitter-refactor"
  },
  ["nvim-ts-context-commentstring"] = {
    loaded = false,
    needs_bufread = false,
    only_cond = false,
    path = "/Users/chriszqyang/.local/share/lunarvim/site/pack/packer/opt/nvim-ts-context-commentstring",
    url = "https://github.com/JoosepAlviste/nvim-ts-context-commentstring"
  },
  ["nvim-web-devicons"] = {
    loaded = true,
    path = "/Users/chriszqyang/.local/share/lunarvim/site/pack/packer/start/nvim-web-devicons",
    url = "https://github.com/kyazdani42/nvim-web-devicons"
  },
  onedarker = {
    loaded = true,
    path = "/Users/chriszqyang/.local/share/lunarvim/site/pack/packer/start/onedarker",
    url = "https://github.com/lunarvim/onedarker"
  },
  ["onedarker.nvim"] = {
    config = { "\27LJ\2\nš\1\0\0\3\0\t\0\0196\0\0\0\15\0\0\0X\1\15€6\0\0\0009\0\1\0\a\0\2\0X\0\v€6\0\3\0'\2\2\0B\0\2\0029\0\4\0B\0\1\0016\0\0\0009\0\5\0009\0\6\0009\0\a\0'\1\2\0=\1\b\0K\0\1\0\ntheme\foptions\flualine\fbuiltin\nsetup\frequire\14onedarker\16colorscheme\tlvim\30\1\0\3\0\2\0\0046\0\0\0003\2\1\0B\0\2\1K\0\1\0\0\npcall\0" },
    loaded = true,
    path = "/Users/chriszqyang/.local/share/lunarvim/site/pack/packer/start/onedarker.nvim",
    url = "https://github.com/lunarvim/onedarker.nvim"
  },
  ["open-browser.vim"] = {
    after = { "plantuml-previewer.vim" },
    commands = { "PlantumlOpen" },
    loaded = false,
    needs_bufread = false,
    only_cond = false,
    path = "/Users/chriszqyang/.local/share/lunarvim/site/pack/packer/opt/open-browser.vim",
    url = "https://github.com/tyru/open-browser.vim"
  },
  ["packer.nvim"] = {
    loaded = true,
    path = "/Users/chriszqyang/.local/share/lunarvim/site/pack/packer/start/packer.nvim",
    url = "https://github.com/wbthomason/packer.nvim"
  },
  ["plantuml-previewer.vim"] = {
    commands = { "PlantumlOpen" },
    config = { "\27LJ\2\n¶\2\0\0\3\0\3\0\0056\0\0\0009\0\1\0'\2\2\0B\0\2\1K\0\1\0–\2        let g:plantuml_previewer#plantuml_jar_path = get(\n          \\  matchlist(system('cat `which plantuml` | grep plantuml.jar'), '\\v.*\\s[''\"]?(\\S+plantuml\\.jar).*'),\n          \\  1,\n          \\  0\n          \\)\n        let g:plantuml_previewer#save_format = 'svg'\n      \bcmd\bvim\0" },
    load_after = {
      ["open-browser.vim"] = true
    },
    loaded = false,
    needs_bufread = false,
    only_cond = false,
    path = "/Users/chriszqyang/.local/share/lunarvim/site/pack/packer/opt/plantuml-previewer.vim",
    url = "https://github.com/weirongxu/plantuml-previewer.vim"
  },
  ["plantuml-syntax"] = {
    config = { "\27LJ\2\n÷\1\0\0\3\0\3\0\0056\0\0\0009\0\1\0'\2\2\0B\0\2\1K\0\1\0×\1        let g:plantuml_executable_script = get(\n          \\  matchlist(system('cat `which plantuml` | grep plantuml.jar'), '\\v.*\\s[''\"]?(\\S+plantuml\\.jar).*'),\n          \\  1,\n          \\  0\n          \\)\n      \bcmd\bvim\0" },
    loaded = false,
    needs_bufread = true,
    only_cond = false,
    path = "/Users/chriszqyang/.local/share/lunarvim/site/pack/packer/opt/plantuml-syntax",
    url = "https://github.com/aklt/plantuml-syntax"
  },
  ["plenary.nvim"] = {
    loaded = true,
    path = "/Users/chriszqyang/.local/share/lunarvim/site/pack/packer/start/plenary.nvim",
    url = "https://github.com/nvim-lua/plenary.nvim"
  },
  ["popup.nvim"] = {
    loaded = true,
    path = "/Users/chriszqyang/.local/share/lunarvim/site/pack/packer/start/popup.nvim",
    url = "https://github.com/nvim-lua/popup.nvim"
  },
  ["project.nvim"] = {
    config = { "\27LJ\2\n?\0\0\3\0\3\0\0066\0\0\0'\2\1\0B\0\2\0029\0\2\0B\0\1\1K\0\1\0\nsetup\22lvim.core.project\frequire\0" },
    loaded = true,
    path = "/Users/chriszqyang/.local/share/lunarvim/site/pack/packer/start/project.nvim",
    url = "https://github.com/ahmedkhalf/project.nvim"
  },
  ["rust-tools.nvim"] = {
    config = { "\27LJ\2\nü\2\0\0\n\0\20\0 6\0\0\0'\2\1\0B\0\2\0029\1\2\0'\3\3\0B\1\2\0036\3\0\0'\5\4\0B\3\2\0029\3\5\0035\5\t\0005\6\6\0005\a\a\0=\a\b\6=\6\n\0055\6\r\0009\a\v\0029\a\f\a=\a\f\0066\a\0\0'\t\14\0B\a\2\0029\a\15\a=\a\16\0066\a\0\0'\t\14\0B\a\2\0029\a\17\a=\a\18\6=\6\19\5B\3\2\1K\0\1\0\vserver\fon_init\19common_on_init\14on_attach\21common_on_attach\rlvim.lsp\1\0\0\fcmd_env\21_default_options\ntools\1\0\0\14runnables\1\0\1\18use_telescope\2\1\0\2\23hover_with_actions\2\17autoSetHints\2\nsetup\15rust-tools\18rust_analyzer\15get_server\31nvim-lsp-installer.servers\frequire\0" },
    loaded = false,
    needs_bufread = true,
    only_cond = false,
    path = "/Users/chriszqyang/.local/share/lunarvim/site/pack/packer/opt/rust-tools.nvim",
    url = "https://github.com/simrat39/rust-tools.nvim"
  },
  ["rust.vim"] = {
    loaded = true,
    path = "/Users/chriszqyang/.local/share/lunarvim/site/pack/packer/start/rust.vim",
    url = "https://github.com/rust-lang/rust.vim"
  },
  ["schemastore.nvim"] = {
    loaded = true,
    path = "/Users/chriszqyang/.local/share/lunarvim/site/pack/packer/start/schemastore.nvim",
    url = "https://github.com/b0o/schemastore.nvim"
  },
  ["structlog.nvim"] = {
    loaded = true,
    path = "/Users/chriszqyang/.local/share/lunarvim/site/pack/packer/start/structlog.nvim",
    url = "https://github.com/Tastyep/structlog.nvim"
  },
  ["telescope-fzf-native.nvim"] = {
    loaded = true,
    path = "/Users/chriszqyang/.local/share/lunarvim/site/pack/packer/start/telescope-fzf-native.nvim",
    url = "https://github.com/nvim-telescope/telescope-fzf-native.nvim"
  },
  ["telescope.nvim"] = {
    config = { "\27LJ\2\nA\0\0\3\0\3\0\0066\0\0\0'\2\1\0B\0\2\0029\0\2\0B\0\1\1K\0\1\0\nsetup\24lvim.core.telescope\frequire\0" },
    loaded = true,
    path = "/Users/chriszqyang/.local/share/lunarvim/site/pack/packer/start/telescope.nvim",
    url = "https://github.com/nvim-telescope/telescope.nvim"
  },
  ["toggleterm.nvim"] = {
    config = { "\27LJ\2\n@\0\0\3\0\3\0\0066\0\0\0'\2\1\0B\0\2\0029\0\2\0B\0\1\1K\0\1\0\nsetup\23lvim.core.terminal\frequire\0" },
    loaded = false,
    needs_bufread = false,
    only_cond = false,
    path = "/Users/chriszqyang/.local/share/lunarvim/site/pack/packer/opt/toggleterm.nvim",
    url = "https://github.com/akinsho/toggleterm.nvim"
  },
  ["tokyonight.nvim"] = {
    loaded = true,
    path = "/Users/chriszqyang/.local/share/lunarvim/site/pack/packer/start/tokyonight.nvim",
    url = "https://github.com/folke/tokyonight.nvim"
  },
  ["trouble.nvim"] = {
    commands = { "TroubleToggle" },
    loaded = false,
    needs_bufread = false,
    only_cond = false,
    path = "/Users/chriszqyang/.local/share/lunarvim/site/pack/packer/opt/trouble.nvim",
    url = "https://github.com/folke/trouble.nvim"
  },
  ["vim-repeat"] = {
    loaded = true,
    path = "/Users/chriszqyang/.local/share/lunarvim/site/pack/packer/start/vim-repeat",
    url = "https://github.com/tpope/vim-repeat"
  },
  ["vim-surround"] = {
    keys = { { "n", "ds" }, { "n", "cs" }, { "n", "cS" }, { "n", "ys" }, { "n", "yS" }, { "n", "yss" }, { "n", "ySs" }, { "n", "ySS" }, { "x", "S" }, { "x", "gS" }, { "i", "<C-S>" }, { "i", "<C-G>s" }, { "i", "<C-G>S" } },
    loaded = false,
    needs_bufread = false,
    only_cond = false,
    path = "/Users/chriszqyang/.local/share/lunarvim/site/pack/packer/opt/vim-surround",
    url = "https://github.com/tpope/vim-surround"
  },
  ["which-key.nvim"] = {
    config = { "\27LJ\2\nA\0\0\3\0\3\0\0066\0\0\0'\2\1\0B\0\2\0029\0\2\0B\0\1\1K\0\1\0\nsetup\24lvim.core.which-key\frequire\0" },
    loaded = false,
    needs_bufread = false,
    only_cond = false,
    path = "/Users/chriszqyang/.local/share/lunarvim/site/pack/packer/opt/which-key.nvim",
    url = "https://github.com/max397574/which-key.nvim"
  }
}

time([[Defining packer_plugins]], false)
local module_lazy_loads = {
  ["^lua%-dev"] = "lua-dev.nvim"
}
local lazy_load_called = {['packer.load'] = true}
local function lazy_load_module(module_name)
  local to_load = {}
  if lazy_load_called[module_name] then return nil end
  lazy_load_called[module_name] = true
  for module_pat, plugin_name in pairs(module_lazy_loads) do
    if not _G.packer_plugins[plugin_name].loaded and string.match(module_name, module_pat) then
      to_load[#to_load + 1] = plugin_name
    end
  end

  if #to_load > 0 then
    require('packer.load')(to_load, {module = module_name}, _G.packer_plugins)
    local loaded_mod = package.loaded[module_name]
    if loaded_mod then
      return function(modname) return loaded_mod end
    end
  end
end

if not vim.g.packer_custom_loader_enabled then
  table.insert(package.loaders, 1, lazy_load_module)
  vim.g.packer_custom_loader_enabled = true
end

-- Setup for: vim-surround
time([[Setup for vim-surround]], true)
try_loadstring("\27LJ\2\n,\0\0\2\0\3\0\0056\0\0\0009\0\1\0)\1ô\1=\1\2\0K\0\1\0\15timeoutlen\6o\bvim\0", "setup", "vim-surround")
time([[Setup for vim-surround]], false)
-- Setup for: nvim-markdown-preview
time([[Setup for nvim-markdown-preview]], true)
try_loadstring("\27LJ\2\n¡\1\0\0\3\0\3\0\0056\0\0\0009\0\1\0'\2\2\0B\0\2\1K\0\1\0\1        let g:nvim_markdown_preview_theme = 'solarized-light'\n        let g:nvim_markdown_preview_format = 'markdown'\n      \bcmd\bvim\0", "setup", "nvim-markdown-preview")
time([[Setup for nvim-markdown-preview]], false)
-- Config for: nvim-treesitter
time([[Config for nvim-treesitter]], true)
try_loadstring("\27LJ\2\nB\0\0\3\0\3\0\0066\0\0\0'\2\1\0B\0\2\0029\0\2\0B\0\1\1K\0\1\0\nsetup\25lvim.core.treesitter\frequire\0", "config", "nvim-treesitter")
time([[Config for nvim-treesitter]], false)
-- Config for: nvim-cmp
time([[Config for nvim-cmp]], true)
try_loadstring("\27LJ\2\n`\0\0\3\0\6\0\v6\0\0\0009\0\1\0009\0\2\0\15\0\0\0X\1\5€6\0\3\0'\2\4\0B\0\2\0029\0\5\0B\0\1\1K\0\1\0\nsetup\18lvim.core.cmp\frequire\bcmp\fbuiltin\tlvim\0", "config", "nvim-cmp")
time([[Config for nvim-cmp]], false)
-- Config for: nvim-treesitter-refactor
time([[Config for nvim-treesitter-refactor]], true)
try_loadstring("\27LJ\2\nŽ\2\0\0\6\0\14\0\0176\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\f\0005\3\4\0005\4\3\0=\4\5\0035\4\6\0=\4\a\0035\4\b\0005\5\t\0=\5\n\4=\4\v\3=\3\r\2B\0\2\1K\0\1\0\rrefactor\1\0\0\17smart_rename\fkeymaps\1\0\1\17smart_rename\bgrr\1\0\1\venable\2\26highlight_definitions\1\0\2\25clear_on_cursor_move\2\venable\2\28highlight_current_scope\1\0\0\1\0\1\venable\2\nsetup\28nvim-treesitter.configs\frequire\0", "config", "nvim-treesitter-refactor")
time([[Config for nvim-treesitter-refactor]], false)
-- Config for: telescope.nvim
time([[Config for telescope.nvim]], true)
try_loadstring("\27LJ\2\nA\0\0\3\0\3\0\0066\0\0\0'\2\1\0B\0\2\0029\0\2\0B\0\1\1K\0\1\0\nsetup\24lvim.core.telescope\frequire\0", "config", "telescope.nvim")
time([[Config for telescope.nvim]], false)
-- Config for: project.nvim
time([[Config for project.nvim]], true)
try_loadstring("\27LJ\2\n?\0\0\3\0\3\0\0066\0\0\0'\2\1\0B\0\2\0029\0\2\0B\0\1\1K\0\1\0\nsetup\22lvim.core.project\frequire\0", "config", "project.nvim")
time([[Config for project.nvim]], false)
-- Config for: onedarker.nvim
time([[Config for onedarker.nvim]], true)
try_loadstring("\27LJ\2\nš\1\0\0\3\0\t\0\0196\0\0\0\15\0\0\0X\1\15€6\0\0\0009\0\1\0\a\0\2\0X\0\v€6\0\3\0'\2\2\0B\0\2\0029\0\4\0B\0\1\0016\0\0\0009\0\5\0009\0\6\0009\0\a\0'\1\2\0=\1\b\0K\0\1\0\ntheme\foptions\flualine\fbuiltin\nsetup\frequire\14onedarker\16colorscheme\tlvim\30\1\0\3\0\2\0\0046\0\0\0003\2\1\0B\0\2\1K\0\1\0\0\npcall\0", "config", "onedarker.nvim")
time([[Config for onedarker.nvim]], false)
-- Config for: nvim-notify
time([[Config for nvim-notify]], true)
try_loadstring("\27LJ\2\n>\0\0\3\0\3\0\0066\0\0\0'\2\1\0B\0\2\0029\0\2\0B\0\1\1K\0\1\0\nsetup\21lvim.core.notify\frequire\0", "config", "nvim-notify")
time([[Config for nvim-notify]], false)
-- Config for: alpha-nvim
time([[Config for alpha-nvim]], true)
try_loadstring("\27LJ\2\n=\0\0\3\0\3\0\0066\0\0\0'\2\1\0B\0\2\0029\0\2\0B\0\1\1K\0\1\0\nsetup\20lvim.core.alpha\frequire\0", "config", "alpha-nvim")
time([[Config for alpha-nvim]], false)
-- Config for: nvim-tree.lua
time([[Config for nvim-tree.lua]], true)
try_loadstring("\27LJ\2\n@\0\0\3\0\3\0\0066\0\0\0'\2\1\0B\0\2\0029\0\2\0B\0\1\1K\0\1\0\nsetup\23lvim.core.nvimtree\frequire\0", "config", "nvim-tree.lua")
time([[Config for nvim-tree.lua]], false)
-- Config for: nvim-autopairs
time([[Config for nvim-autopairs]], true)
try_loadstring("\27LJ\2\nA\0\0\3\0\3\0\0066\0\0\0'\2\1\0B\0\2\0029\0\2\0B\0\1\1K\0\1\0\nsetup\24lvim.core.autopairs\frequire\0", "config", "nvim-autopairs")
time([[Config for nvim-autopairs]], false)
-- Config for: lualine.nvim
time([[Config for lualine.nvim]], true)
try_loadstring("\27LJ\2\n?\0\0\3\0\3\0\0066\0\0\0'\2\1\0B\0\2\0029\0\2\0B\0\1\1K\0\1\0\nsetup\22lvim.core.lualine\frequire\0", "config", "lualine.nvim")
time([[Config for lualine.nvim]], false)
-- Config for: LuaSnip
time([[Config for LuaSnip]], true)
try_loadstring("\27LJ\2\n¤\3\0\0\n\0\18\2-6\0\0\0'\2\1\0B\0\2\0024\1\3\0009\2\2\0006\4\3\0B\4\1\2'\5\4\0'\6\5\0'\a\6\0'\b\a\0'\t\b\0B\2\a\0?\2\0\0009\2\2\0006\4\t\0B\4\1\2'\5\n\0B\2\3\0029\3\v\0\18\5\2\0B\3\2\2\15\0\3\0X\4\3€\21\3\1\0\22\3\1\3<\2\3\0016\3\0\0'\5\f\0B\3\2\0029\3\r\3B\3\1\0016\3\0\0'\5\14\0B\3\2\0029\3\r\0035\5\15\0=\1\16\5B\3\2\0016\3\0\0'\5\17\0B\3\2\0029\3\r\3B\3\1\1K\0\1\0\"luasnip.loaders.from_snipmate\npaths\1\0\0 luasnip.loaders.from_vscode\14lazy_load\29luasnip.loaders.from_lua\17is_directory\rsnippets\19get_config_dir\22friendly-snippets\nstart\vpacker\tpack\tsite\20get_runtime_dir\15join_paths\15lvim.utils\frequire\3€€À™\4\2\0", "config", "LuaSnip")
time([[Config for LuaSnip]], false)

-- Command lazy-loads
time([[Defining lazy-load commands]], true)
pcall(vim.cmd, [[command -nargs=* -range -bang -complete=file MarkdownPreview lua require("packer.load")({'nvim-markdown-preview'}, { cmd = "MarkdownPreview", l1 = <line1>, l2 = <line2>, bang = <q-bang>, args = <q-args>, mods = "<mods>" }, _G.packer_plugins)]])
pcall(vim.cmd, [[command -nargs=* -range -bang -complete=file MinimapUpdateHighlight lua require("packer.load")({'minimap.vim'}, { cmd = "MinimapUpdateHighlight", l1 = <line1>, l2 = <line2>, bang = <q-bang>, args = <q-args>, mods = "<mods>" }, _G.packer_plugins)]])
pcall(vim.cmd, [[command -nargs=* -range -bang -complete=file Minimap lua require("packer.load")({'minimap.vim'}, { cmd = "Minimap", l1 = <line1>, l2 = <line2>, bang = <q-bang>, args = <q-args>, mods = "<mods>" }, _G.packer_plugins)]])
pcall(vim.cmd, [[command -nargs=* -range -bang -complete=file MinimapClose lua require("packer.load")({'minimap.vim'}, { cmd = "MinimapClose", l1 = <line1>, l2 = <line2>, bang = <q-bang>, args = <q-args>, mods = "<mods>" }, _G.packer_plugins)]])
pcall(vim.cmd, [[command -nargs=* -range -bang -complete=file TroubleToggle lua require("packer.load")({'trouble.nvim'}, { cmd = "TroubleToggle", l1 = <line1>, l2 = <line2>, bang = <q-bang>, args = <q-args>, mods = "<mods>" }, _G.packer_plugins)]])
pcall(vim.cmd, [[command -nargs=* -range -bang -complete=file MinimapRefresh lua require("packer.load")({'minimap.vim'}, { cmd = "MinimapRefresh", l1 = <line1>, l2 = <line2>, bang = <q-bang>, args = <q-args>, mods = "<mods>" }, _G.packer_plugins)]])
pcall(vim.cmd, [[command -nargs=* -range -bang -complete=file PlantumlOpen lua require("packer.load")({'open-browser.vim', 'plantuml-previewer.vim'}, { cmd = "PlantumlOpen", l1 = <line1>, l2 = <line2>, bang = <q-bang>, args = <q-args>, mods = "<mods>" }, _G.packer_plugins)]])
pcall(vim.cmd, [[command -nargs=* -range -bang -complete=file MinimapToggle lua require("packer.load")({'minimap.vim'}, { cmd = "MinimapToggle", l1 = <line1>, l2 = <line2>, bang = <q-bang>, args = <q-args>, mods = "<mods>" }, _G.packer_plugins)]])
time([[Defining lazy-load commands]], false)

-- Keymap lazy-loads
time([[Defining lazy-load keymaps]], true)
vim.cmd [[inoremap <silent> <C-G>S <cmd>lua require("packer.load")({'vim-surround'}, { keys = "<lt>C-G>S" }, _G.packer_plugins)<cr>]]
vim.cmd [[nnoremap <silent> ySS <cmd>lua require("packer.load")({'vim-surround'}, { keys = "ySS", prefix = "" }, _G.packer_plugins)<cr>]]
vim.cmd [[inoremap <silent> <C-G>s <cmd>lua require("packer.load")({'vim-surround'}, { keys = "<lt>C-G>s" }, _G.packer_plugins)<cr>]]
vim.cmd [[inoremap <silent> <C-S> <cmd>lua require("packer.load")({'vim-surround'}, { keys = "<lt>C-S>" }, _G.packer_plugins)<cr>]]
vim.cmd [[xnoremap <silent> gS <cmd>lua require("packer.load")({'vim-surround'}, { keys = "gS", prefix = "" }, _G.packer_plugins)<cr>]]
vim.cmd [[xnoremap <silent> S <cmd>lua require("packer.load")({'vim-surround'}, { keys = "S", prefix = "" }, _G.packer_plugins)<cr>]]
vim.cmd [[nnoremap <silent> ys <cmd>lua require("packer.load")({'vim-surround'}, { keys = "ys", prefix = "" }, _G.packer_plugins)<cr>]]
vim.cmd [[nnoremap <silent> cS <cmd>lua require("packer.load")({'vim-surround'}, { keys = "cS", prefix = "" }, _G.packer_plugins)<cr>]]
vim.cmd [[nnoremap <silent> cs <cmd>lua require("packer.load")({'vim-surround'}, { keys = "cs", prefix = "" }, _G.packer_plugins)<cr>]]
vim.cmd [[nnoremap <silent> ySs <cmd>lua require("packer.load")({'vim-surround'}, { keys = "ySs", prefix = "" }, _G.packer_plugins)<cr>]]
vim.cmd [[nnoremap <silent> ds <cmd>lua require("packer.load")({'vim-surround'}, { keys = "ds", prefix = "" }, _G.packer_plugins)<cr>]]
vim.cmd [[nnoremap <silent> yS <cmd>lua require("packer.load")({'vim-surround'}, { keys = "yS", prefix = "" }, _G.packer_plugins)<cr>]]
vim.cmd [[nnoremap <silent> yss <cmd>lua require("packer.load")({'vim-surround'}, { keys = "yss", prefix = "" }, _G.packer_plugins)<cr>]]
time([[Defining lazy-load keymaps]], false)

vim.cmd [[augroup packer_load_aucmds]]
vim.cmd [[au!]]
  -- Filetype lazy-loads
time([[Defining lazy-load filetype autocommands]], true)
vim.cmd [[au FileType pu ++once lua require("packer.load")({'plantuml-syntax'}, { ft = "pu" }, _G.packer_plugins)]]
vim.cmd [[au FileType plantuml ++once lua require("packer.load")({'plantuml-syntax'}, { ft = "plantuml" }, _G.packer_plugins)]]
vim.cmd [[au FileType puml ++once lua require("packer.load")({'plantuml-syntax'}, { ft = "puml" }, _G.packer_plugins)]]
vim.cmd [[au FileType rs ++once lua require("packer.load")({'rust-tools.nvim'}, { ft = "rs" }, _G.packer_plugins)]]
vim.cmd [[au FileType iuml ++once lua require("packer.load")({'plantuml-syntax'}, { ft = "iuml" }, _G.packer_plugins)]]
vim.cmd [[au FileType uml ++once lua require("packer.load")({'plantuml-syntax'}, { ft = "uml" }, _G.packer_plugins)]]
vim.cmd [[au FileType rust ++once lua require("packer.load")({'rust-tools.nvim'}, { ft = "rust" }, _G.packer_plugins)]]
time([[Defining lazy-load filetype autocommands]], false)
  -- Event lazy-loads
time([[Defining lazy-load event autocommands]], true)
vim.cmd [[au BufReadPost * ++once lua require("packer.load")({'nvim-ts-context-commentstring'}, { event = "BufReadPost *" }, _G.packer_plugins)]]
vim.cmd [[au BufWinEnter * ++once lua require("packer.load")({'which-key.nvim', 'bufferline.nvim', 'toggleterm.nvim'}, { event = "BufWinEnter *" }, _G.packer_plugins)]]
vim.cmd [[au BufRead * ++once lua require("packer.load")({'gitsigns.nvim', 'numb.nvim', 'Comment.nvim', 'hop.nvim'}, { event = "BufRead *" }, _G.packer_plugins)]]
time([[Defining lazy-load event autocommands]], false)
vim.cmd("augroup END")
vim.cmd [[augroup filetypedetect]]
time([[Sourcing ftdetect script at: /Users/chriszqyang/.local/share/lunarvim/site/pack/packer/opt/plantuml-syntax/ftdetect/plantuml.vim]], true)
vim.cmd [[source /Users/chriszqyang/.local/share/lunarvim/site/pack/packer/opt/plantuml-syntax/ftdetect/plantuml.vim]]
time([[Sourcing ftdetect script at: /Users/chriszqyang/.local/share/lunarvim/site/pack/packer/opt/plantuml-syntax/ftdetect/plantuml.vim]], false)
vim.cmd("augroup END")
if should_profile then save_profiles() end

end)

if not no_errors then
  error_msg = error_msg:gsub('"', '\\"')
  vim.api.nvim_command('echohl ErrorMsg | echom "Error in packer_compiled: '..error_msg..'" | echom "Please check your config for correctness" | echohl None')
end
