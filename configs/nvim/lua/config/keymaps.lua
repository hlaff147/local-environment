-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here
--
-- Grep visual selection with Telescope
vim.keymap.set("v", "<leader>sg", function()
  -- 1. Grab selection
  vim.cmd('noau normal! "vy')
  local text = vim.fn.getreg("v")
  vim.fn.setreg("v", {})

  -- 2. Strip trailing/leading whitespace and newlines
  -- if you just want to find the text content
  local pattern = text:gsub("\n", " "):gsub("^%s+", ""):gsub("%s+$", "")

  -- 3. Use Snacks with 'live' set to false for a literal search
  Snacks.picker.grep({
    search = pattern,
    -- This ensures special chars like quotes or brackets aren't treated as regex
    args = { "--fixed-strings" },
  })
end, { desc = "Grep Selection" })

vim.keymap.set("n", "<leader>gt", function()
  require("gitsigns").blame()
end, { desc = "Toggle Git Blame" })

-- Rodar arquivo Python atual com <leader>rp (Space + r + p)
vim.keymap.set("n", "<leader>rp", function()
  if vim.bo.filetype == "python" then
    vim.cmd("write") -- Salva o arquivo atual antes de rodar
    Snacks.terminal("python3 " .. vim.fn.shellescape(vim.fn.expand("%")))
  else
    vim.notify("O arquivo atual não é Python!", vim.log.levels.WARN)
  end
end, { desc = "Rodar Python" })

