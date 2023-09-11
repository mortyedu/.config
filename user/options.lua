-- set vim options here (vim.<first_key>.<second_key> = value)
return {
  opt = {
    -- set to true or false etc.
    relativenumber = true, -- sets vim.opt.relativenumber
    number = true,         -- sets vim.opt.number
    spell = true,          -- sets vim.opt.spell
    spelllang = { "en_us", "ru_ru" },
    signcolumn = "auto",   -- sets vim.opt.signcolumn to auto
    wrap = false,          -- sets vim.opt.wrap
    -- my options
    scrolloff = 10,        -- Number of lines to keep above and below the cursor
    tabstop = 4,           -- Number of space in a tab
    shiftwidth = 4,        -- Number of space inserted for indentation
    softtabstop = 4,
    colorcolumn = {"72", "79"},    -- Add a line with exect symbols
    autoindent = true,
    fileformat = "unix",
    list = true, -- Adds a dots when tab or space
    -- clipboard = "", -- Connection to the system clipboard
    -- cmdheight = 1,  -- hide command line unless needed
    swapfile = false,
    backup = false,
    undodir = os.getenv "HOME" .. "/.vim/undodir",
    undofile = true,
    incsearch = true, -- поиск на основе регулярок /inc.* =
    -- termguicolors = true,
  },
  g = {
    mapleader = " ",                 -- sets vim.g.mapleader
    autoformat_enabled = true,       -- enable or disable auto formatting at start (lsp.formatting.format_on_save must be enabled)
    cmp_enabled = true,              -- enable completion at start
    autopairs_enabled = true,        -- enable autopairs at start
    diagnostics_mode = 3,            -- set the visibility of diagnostics in the UI (0=off, 1=only show in status line, 2=virtual text off, 3=all on)
    icons_enabled = true,            -- disable icons in the UI (disable if no nerd font is available, requires :PackerSync after changing)
    ui_notifications_enabled = true, -- disable notifications when toggling UI elements
  },
}
-- If you need more control, you can use the function()...end notation
-- return function(local_vim)
--   local_vim.opt.relativenumber = true
--   local_vim.g.mapleader = " "
--   local_vim.opt.whichwrap = vim.opt.whichwrap - { 'b', 's' } -- removing option from list
--   local_vim.opt.shortmess = vim.opt.shortmess + { I = true } -- add to option list
--
--   return local_vim
-- end
