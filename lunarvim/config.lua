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
lvim.format_on_save = true
lvim.colorscheme = "tokyonight"
-- to disable icons and use a minimalist setup, uncomment the following
-- lvim.use_icons = false

-- keymappings [view all the defaults by pressing <leader>Lk]
lvim.leader = "space"
-- add your own keymapping
lvim.keys.normal_mode["<C-s>"] = ":w<cr>"
-- lvim.keys.normal_mode["<S-l>"] = ":BufferLineCycleNext<CR>"
-- lvim.keys.normal_mode["<S-h>"] = ":BufferLineCyclePrev<CR>"
-- unmap a default keymapping
-- vim.keymap.del("n", "<C-Up>")
-- override a default keymapping
-- lvim.keys.normal_mode["<C-q>"] = ":q<cr>" -- or vim.keymap.set("n", "<C-q>", ":q<cr>" )

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

-- Change theme settings
-- lvim.builtin.theme.options.dim_inactive = true
-- lvim.builtin.theme.options.style = "storm"

-- Use which-key to add extra bindings with the leader-key prefix
-- lvim.builtin.which_key.mappings["P"] = { "<cmd>Telescope projects<CR>", "Projects" }
-- lvim.builtin.which_key.mappings["t"] = {
--   name = "+Trouble",
--   r = { "<cmd>Trouble lsp_references<cr>", "References" },
--   f = { "<cmd>Trouble lsp_definitions<cr>", "Definitions" },
--   d = { "<cmd>Trouble document_diagnostics<cr>", "Diagnostics" },
--   q = { "<cmd>Trouble quickfix<cr>", "QuickFix" },
--   l = { "<cmd>Trouble loclist<cr>", "LocationList" },
--   w = { "<cmd>Trouble workspace_diagnostics<cr>", "Workspace Diagnostics" },
-- }

-- TODO: User Config for predefined plugins
-- After changing plugin config exit and reopen LunarVim, Run :PackerInstall :PackerCompile
lvim.builtin.alpha.active = true
lvim.builtin.alpha.mode = "dashboard"
lvim.builtin.terminal.active = true
lvim.builtin.nvimtree.setup.view.side = "left"
lvim.builtin.nvimtree.setup.renderer.icons.show.git = true

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
lvim.builtin.treesitter.highlight.enable = true

-- generic LSP settings

-- -- make sure server will always be installed even if the server is in skipped_servers list
-- lvim.lsp.installer.setup.ensure_installed = {
--     "sumneko_lua",
--     "jsonls",
-- }
-- -- change UI setting of `LspInstallInfo`
-- -- see <https://github.com/williamboman/nvim-lsp-installer#default-configuration>
-- lvim.lsp.installer.setup.ui.check_outdated_servers_on_open = false
-- lvim.lsp.installer.setup.ui.border = "rounded"
-- lvim.lsp.installer.setup.ui.keymaps = {
--     uninstall_server = "d",
--     toggle_server_expand = "o",
-- }

-- ---@usage disable automatic installation of servers
-- lvim.lsp.installer.setup.automatic_installation = false

-- ---configure a server manually. !!Requires `:LvimCacheReset` to take effect!!
-- ---see the full default list `:lua print(vim.inspect(lvim.lsp.automatic_configuration.skipped_servers))`
-- vim.list_extend(lvim.lsp.automatic_configuration.skipped_servers, { "pyright" })
-- local opts = {} -- check the lspconfig documentation for a list of all possible options
-- require("lvim.lsp.manager").setup("pyright", opts)

-- ---remove a server from the skipped list, e.g. eslint, or emmet_ls. !!Requires `:LvimCacheReset` to take effect!!
-- ---`:LvimInfo` lists which server(s) are skipped for the current filetype
-- lvim.lsp.automatic_configuration.skipped_servers = vim.tbl_filter(function(server)
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
-- local formatters = require "lvim.lsp.null-ls.formatters"
-- formatters.setup {
--   { command = "black", filetypes = { "python" } },
--   { command = "isort", filetypes = { "python" } },
--   {
--     -- each formatter accepts a list of options identical to https://github.com/jose-elias-alvarez/null-ls.nvim/blob/main/doc/BUILTINS.md#Configuration
--     command = "prettier",
--     ---@usage arguments to pass to the formatter
--     -- these cannot contain whitespaces, options such as `--line-width 80` become either `{'--line-width', '80'}` or `{'--line-width=80'}`
--     extra_args = { "--print-with", "100" },
--     ---@usage specify which filetypes to enable. By default a providers will attach to all the filetypes it supports.
--     filetypes = { "typescript", "typescriptreact" },
--   },
-- }

-- -- set additional linters
-- local linters = require "lvim.lsp.null-ls.linters"
-- linters.setup {
--   { command = "flake8", filetypes = { "python" } },
--   {
--     -- each linter accepts a list of options identical to https://github.com/jose-elias-alvarez/null-ls.nvim/blob/main/doc/BUILTINS.md#Configuration
--     command = "shellcheck",
--     ---@usage arguments to pass to the formatter
--     -- these cannot contain whitespaces, options such as `--line-width 80` become either `{'--line-width', '80'}` or `{'--line-width=80'}`
--     extra_args = { "--severity", "warning" },
--   },
--   {
--     command = "codespell",
--     ---@usage specify which filetypes to enable. By default a providers will attach to all the filetypes it supports.
--     filetypes = { "javascript", "python" },
--   },
-- }

-- Additional Plugins
-- lvim.plugins = {
--     {
--       "folke/trouble.nvim",
--       cmd = "TroubleToggle",
--     },
-- }

-- Autocommands (https://neovim.io/doc/user/autocmd.html)
-- vim.api.nvim_create_autocmd("BufEnter", {
--   pattern = { "*.json", "*.jsonc" },
--   -- enable wrap mode for json files only
--   command = "setlocal wrap",
-- })
-- vim.api.nvim_create_autocmd("FileType", {
--   pattern = "zsh",
--   callback = function()
--     -- let treesitter use bash highlight for zsh files as well
--     require("nvim-treesitter.highlight").attach(0, "bash")
--   end,
-- })
--
-- #################### Custom Configs ##################
-- General
vim.o.scrolloff = 5
vim.o.list = true
vim.opt.listchars = 'eol:¬,tab:>·,trail:.,extends:>,precedes:<,multispace:· '
vim.opt.relativenumber = true;
vim.o.cmdheight = 1
lvim.format_on_save = false

-- Colors
-- vim.cmd([[
-- let g:neosolarized_vertSplitBgTrans = 0
-- let g:neosolarized_bold = 1
-- let g:neosolarized_underline = 1
-- let g:neosolarized_italic = 1
-- ]])

-- vim.o.termguicolors = true
-- vim.o.background = "dark"
-- vim.g.material_style = "lighter" -- darker, lighter, oceanic, palenight, deep ocean
-- vim.g.ayucolor = "light" -- light, mirage, dark
-- vim.g.catppuccin_flavour = "mocha" -- latte, mocha, macchiato, frappe
-- lvim.colorscheme = "solarized-high"

-- Additional Plugins
-- lvim.plugins = {
--   { "sainnhe/sonokai" },
--   { "tpope/vim-surround" },
--   { "Xuyuanp/scrollbar.nvim" },
--   { "olimorris/onedarkpro.nvim" },
--   { "editorconfig/editorconfig-vim" },
--   { "lunarvim/colorschemes" },
--   { "Th3Whit3Wolf/one-nvim" },
--   { "ThePrimeagen/harpoon" },
--   { "tpope/vim-fugitive" },
--   { "marko-cerovac/material.nvim" },
--   { "tpope/vim-repeat" },
--   { "catppuccin/nvim", as = "catppuccin" },
--   { "ayu-theme/ayu-vim" },
--   { "overcache/NeoSolarized" },
--   { "ishan9299/nvim-solarized-lua" },
--   { "tomasr/molokai" },
--   {
--     "nvim-telescope/telescope-live-grep-args.nvim",
--     config = function()
--       require("telescope").load_extension("live_grep_args")
--     end
--   },
--   { 'mickael-menu/zk-nvim' },
--   { 'github/copilot.vim' },
--   { 'vimwiki/vimwiki' },
--   { 'mbbill/undotree' },
--   -- { 'unblevable/quick-scope' },
--   { 'ggandor/lightspeed.nvim' },
-- }

-- keymappings [view all the defaults by pressing <leader>Lk]
-- save and close buffers
lvim.keys.normal_mode["<C-s>"] = ":w<cr>"
lvim.keys.normal_mode["<C-x>"] = ":q<cr>"
-- Scroll with <C-j> and <C-k>
lvim.keys.normal_mode["<C-j>"] = "2<C-e>"
lvim.keys.normal_mode["<C-k>"] = "2<C-y>"
-- Remove ctrlz's suspend
lvim.keys.normal_mode["<C-z>"] = "<Esc>"
-- Bind ESC on terminal mode
lvim.keys.term_mode["<Esc>"] = "<C-\\><c-n>"

-- fix paste without losing the paste register content
lvim.keys.visual_mode["<leader>p"] = "\"_dP"

-- Which key "alt tab" buffers
lvim.builtin.which_key.mappings["<tab>"] = { "<C-^>", "Last Buffer" }
lvim.builtin.which_key.mappings["<tab>"] = { "<C-^>", "Last Buffer" }

-- scrollbar.nvim plugin setup
vim.g.scrollbar_excluded_filetypes = { 'NvimTree' }
-- vim.api.nvim_create_autocmd({ "WinScrolled", "VimResized", "QuitPre" }, {
--   pattern = { "*" },
--   -- enable wrap mode for json files only
--   command = "lua require('scrollbar').show()",
-- })
-- vim.api.nvim_create_autocmd({ "WinEnter", "FocusGained" }, {
--   pattern = { "*" },
--   -- enable wrap mode for json files only
--   command = "lua require('scrollbar').show()",
-- })
-- vim.api.nvim_create_autocmd({ "WinLeave", "BufLeave", "BufWinLeave", "FocusLost" }, {
--   pattern = { "*" },
--   -- enable wrap mode for json files only
--   command = "lua require('scrollbar').clear()",
-- })

vim.cmd([[
let g:scrollbar_shape = {
  \ 'head': '█',
  \ 'body': '█',
  \ 'tail': '█',
  \ }
]])

-- better folder config
vim.opt.foldmethod = "expr" -- folding set to "expr" for treesitter based folding
vim.opt.foldexpr = "nvim_treesitter#foldexpr()" -- set to "nvim_treesitter#foldexpr()" for treesitter based folding
vim.opt.foldlevelstart = 20

-- Linters
---@diagnostic disable-next-line: redundant-parameter
require("null-ls").setup({
  sources = {
    require("null-ls").builtins.formatting.prettierd,
    -- require("null-ls").builtins.formatting.eslint,
    require("null-ls").builtins.code_actions.eslint_d,
    require("null-ls").builtins.diagnostics.eslint_d,
  },
})
vim.lsp.buf.format({ timeout_ms = 2000 })

-- Autocommands (https://neovim.io/doc/user/autocmd.html)
vim.api.nvim_create_autocmd("BufEnter", {
  pattern = { "NvimTree" },
  -- enable wrap mode for json files only
  command = "set cursorline",
}) -- Cursor line highlight on focused buffer

-- Harpoon
-- lvim.builtin.which_key.mappings["["] = { ':lua require("harpoon.ui").toggle_quick_menu()<CR>', "Open Harpoon menu" }
-- lvim.builtin.which_key.mappings["]"] = { ':lua require("harpoon.mark").add_file()<CR>', "Add buffer to Harpoon" }

-- lvim.builtin.which_key.mappings["1"] = { ':lua require("harpoon.ui").nav_file(1)<CR>', "Go to Harpoon's 1st file" }
-- lvim.builtin.which_key.mappings["2"] = { ':lua require("harpoon.ui").nav_file(2)<CR>', "Go to Harpoon's 2st file" }
-- lvim.builtin.which_key.mappings["3"] = { ':lua require("harpoon.ui").nav_file(3)<CR>', "Go to Harpoon's 3st file" }
-- lvim.builtin.which_key.mappings["4"] = { ':lua require("harpoon.ui").nav_file(4)<CR>', "Go to Harpoon's 4st file" }
-- lvim.builtin.which_key.mappings["5"] = { ':lua require("harpoon.ui").nav_file(5)<CR>', "Go to Harpoon's 5st file" }

-- Telescope
lvim.builtin.which_key.mappings["S"] = {
  ':lua require("telescope").extensions.live_grep_args.live_grep_args()<CR>',
  "Find file with rg arguments"
}

-- Nvimtree
lvim.builtin.nvimtree.setup.view.side = "left"
lvim.builtin.nvimtree.setup.view.width = 40
lvim.builtin.nvimtree.setup.renderer.icons.show.git = true
lvim.builtin.nvimtree.setup.renderer.highlight_opened_files = 'all'
lvim.builtin.nvimtree.setup.hijack_cursor = true
lvim.builtin.nvimtree.setup.update_focused_file = {
  enable      = true,
  update_cwd  = true,
  ignore_list = { 'node_modules' },
}

-- zk
-- require("zk").setup({
--   -- can be "telescope", "fzf" or "select" (`vim.ui.select`)
--   -- it's recommended to use "telescope" or "fzf"
--   picker = "select",

--   lsp = {
--     -- `config` is passed to `vim.lsp.start_client(config)`
--     config = {
--       cmd = { "zk", "lsp" },
--       name = "zk",
--       -- on_attach = ...
--       -- etc, see `:h vim.lsp.start_client()`
--     },

--     -- automatically attach buffers in a zk notebook that match the given filetypes
--     auto_attach = {
--       enabled = true,
--       filetypes = { "markdown" },
--     },
--   },
-- })

-- Mateiral theme
-- require('material').setup({

--   contrast = {
--     sidebars = false, -- Enable contrast for sidebar-like windows ( for example Nvim-Tree )
--     floating_windows = true, -- Enable contrast for floating windows
--     line_numbers = true, -- Enable contrast background for line numbers
--     sign_column = true, -- Enable contrast background for the sign column
--     cursor_line = false, -- Enable darker background for the cursor line
--     non_current_windows = true, -- Enable darker background for non-current windows
--     popup_menu = true, -- Enable lighter background for the popup menu
--   },

--   italics = {
--     comments = true, -- Enable italic comments
--     keywords = true, -- Enable italic keywords
--     functions = true, -- Enable italic functions
--     strings = false, -- Enable italic strings
--     variables = false -- Enable italic variables
--   },

--   contrast_filetypes = { -- Specify which filetypes get the contrasted (darker) background
--     "terminal", -- Darker terminal background
--     "packer", -- Darker packer background
--     "qf" -- Darker qf list background
--   },

--   high_visibility = {
--     oceanic = true,
--     lighter = true,
--     darker = true,
--     palenight = true,
--   },

--   disable = {
--     borders = false, -- Disable borders between verticaly split windows
--     background = false, -- Prevent the theme from setting the background (NeoVim then uses your teminal background)
--     term_colors = false, -- Prevent the theme from setting terminal colors
--     eob_lines = false -- Hide the end-of-buffer lines
--   },

--   lualine_style = "default", -- Lualine style ( can be 'stealth' or 'default' )

--   async_loading = true, -- Load parts of the theme asyncronously for faster startup (turned on by default)

--   custom_highlights = {} -- Overwrite highlights with your own
-- })

-- Telescope
-- local lga_actions = require("telescope-live-grep-args.actions")
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
--     ["<C-n>"] = actions.cycle_history_next,
--     ["<C-p>"] = actions.cycle_history_prev,
--   },
-- }
-- lvim.builtin.telescope.extensions = {
--   live_grep_args = {
--     auto_quoting = true, -- enable/disable auto-quoting
--     mappings = {
--       i = {
--         ["<C-f>"] = lga_actions.quote_prompt({ postfix = ' --iglob **/' }),
--         ["<C-l>"] = lga_actions.quote_prompt({ postfix = ' -t' }),
--       }
--     }
--   }
-- }

-- which-key timeout
vim.o.timeoutlen = 500

-- vimwiki
vim.cmd([[
let g:vimwiki_list = [{'path': '~/vimwiki/',
                      \ 'syntax': 'markdown', 'ext': '.md'}]
]])

-- quick-scope
-- vim.g.qs_lazy_highlight = "1"
-- vim.g.qs_buftype_blacklist = { 'terminal', 'nofile' }
