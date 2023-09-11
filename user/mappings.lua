-- Mapping data with "desc" stored directly by vim.keymap.set().
--
-- Please use this mappings table to set keyboard mapping since this is the
-- lower level configuration and more robust one. (which-key will
-- automatically pick-up stored data by this setting.)
return {
  -- first key is the mode
  n = {
    -- second key is the lefthand side of the map
    -- mappings seen under group name "Buffer"
    ["<leader>bn"] = { "<cmd>tabnew<cr>", desc = "New tab" },
    ["<leader>bD"] = {
      function()
        require("astronvim.utils.status").heirline.buffer_picker(function(bufnr)
          require("astronvim.utils.buffer").close(
            bufnr)
        end)
      end,
      desc = "Pick to close",
    },
    -- tables with the `name` key will be registered with which-key if it's installed
    -- this is useful for naming menus
    ["<leader>b"] = { name = "Buffers" },
    -- quick save
    -- ["<C-s>"] = { ":w!<cr>", desc = "Save File" },  -- change description but the same command

    -- Конфигурация Neogen
    ["<leader>N"] = { name = "Neogen" },
    -- ["<leader>nf"] = { ":lua require('neogen').generate()<cr>", desc = "Generate a Docstring"}
    ["<leader>Nc"] = { "<cmd>Neogen class<cr>", desc = "Class Docstring" },
    ["<leader>Nf"] = { "<cmd>Neogen func<cr>", desc = "Func Docstring" },
    ["<leader>Nt"] = { "<cmd>Neogen type<cr>", desc = "Type Docstring" },
    ["<leader>NF"] = { "<cmd>Neogen file<cr>", desc = "File Docstring" },
    -- Undotree
    ["<leader>U"] = { name = "Undotree" },
    ["<leader>Us"] = { "<cmd>UndotreeShow<cr>", desc = "Show Undotree" },
    ["<leader>Uh"] = { "<cmd>UndotreeHide<cr>", desc = "Hide Undotree" },
    -- Изменение стандартного поведения
    ["J"] = { "mzJ`z" }, -- курсор остается на месте
    -- Эта группа команд позволяет курсору оставаться по середине экрана
    ["<C-d>"] = { "<C-d>zz" },
    ["<C-u>"] = { "<C-u>zz" },
    ["n"] = { "nzzzv" },
    ["N"] = { "Nzzzv" },
    -- yank to clipboard, можно использовать в связке с ap, тогда выделится
    -- весь параграф
    -- ["<leader>y"] = { [["+y"]], desc = "Yank to clipboard" },
    -- ["<leader>Y"] = { [["+Y"]], desc = "Yank to clipboard" },
    -- Удаляет данные из регистра
    -- ["<leader>r"] = { "\"_d", desc = "Remove from reg" },

    -- Выделяет слово под курсором с возможностью его замены
    ["<leader>r"] = { [[:%s/\<<C-r><C-w>\>/<C-r><C-w>/gI<Left><Left><Left>]], desc = "Replace text" },
  },
  v = {
    ["<leader>y"] = { name = "Yank" },
    ["<leader>yy"] = { [["+y"]], desc = "Yank to clipboard" },
  },
  t = {
    -- setting a mapping to false will disable it
    -- ["<esc>"] = false,
  },
}
