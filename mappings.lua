-- Mapping data with "desc" stored directly by vim.keymap.set().
--
-- Please use this mappings table to set keyboard mapping since this is the
-- lower level configuration and more robust one. (which-key will
-- automatically pick-up stored data by this setting.)
return {
  -- first key is the mode
  n = {
    ["<leader>r"] = {
      desc = "Run test",
    },
    ["<leader>rr"] = {
      "<cmd>Neotest run<cr>",
      desc = "Run the nearest test",
    },
    ["<leader>rf"] = {
      "<cmd>Neotest run file<cr>",
      desc = "Run the current file",
    },
    -- ["<leader>rd"] = {
    --   function() require("neotest").run.run { strategy = "dap" } end,
    --   desc = "Debug the nearest test",
    -- },
    ["<leader>ra"] = {
      "<cmd>Neotest attach<cr>",
      desc = "Attach to the nearest test",
    },
    ["<leader>rs"] = {
      "<cmd>Neotest summary<cr>",
      desc = "Show summary",
    },
    ["<leader>ro"] = {
      "<cmd>Neotest output<cr>",
      desc = "Show output",
    },
    ["<leader>s"] = {
      function() require("telescope.builtin").spell_suggest(require("telescope.themes").get_cursor {}) end,
      desc = "Spelling Suggestions",
    },
  },
  i = {
    ["<C-i>"] = {
      function() return vim.fn["codeium#Accept"]() end,
      desc = "Codeium accept",
      expr = true,
      silent = true,
    },
    ["<C-;>"] = {
      function() return vim.fn["codeium#CycleCompletions"](1) end,
      desc = "Codeium next completions",
      expr = true,
      silent = true,
    },
    ["<C-,>"] = {
      function() return vim.fn["codeium#CycleCompletions"](-1) end,
      desc = "Codeium prev completions",
      expr = true,
      silent = true,
    },
    ["<C-x>"] = {
      function() return vim.fn["codeium#Clear"]() end,
      desc = "Codeium cycle completions",
      expr = true,
      silent = true,
    },
  },
  t = {},
}
