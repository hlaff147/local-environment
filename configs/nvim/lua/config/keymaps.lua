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

-- Função genérica para rodar o arquivo atual baseado no filetype
local function run_file()
  local filetype = vim.bo.filetype
  local filename = vim.fn.expand("%")

  if filename == "" then
    vim.notify("Nenhum arquivo aberto para rodar!", vim.log.levels.WARN)
    return
  end

  vim.cmd("write") -- Salva o arquivo antes de rodar

  local cmd = nil
  if filetype == "python" then
    cmd = "python3 " .. vim.fn.shellescape(filename)
  elseif filetype == "go" then
    cmd = "go run " .. vim.fn.shellescape(filename)
  elseif filetype == "rust" then
    if vim.fn.filereadable("Cargo.toml") == 1 then
      cmd = "cargo run"
    else
      cmd = "rustc " .. vim.fn.shellescape(filename) .. " -o /tmp/rust_out && /tmp/rust_out"
    end
  elseif filetype == "java" then
    cmd = "java " .. vim.fn.shellescape(filename)
  elseif filetype == "haskell" then
    cmd = "runghc " .. vim.fn.shellescape(filename)
  end

  if cmd then
    Snacks.terminal(cmd)
  else
    vim.notify("Sem runner configurado para o tipo de arquivo: " .. filetype, vim.log.levels.WARN)
  end
end

-- Atalho geral: Rodar arquivo atual com <leader>rf (Space + r + f)
vim.keymap.set("n", "<leader>rf", run_file, { desc = "Rodar arquivo atual" })

-- Atalhos específicos para cada linguagem
vim.keymap.set("n", "<leader>rp", function()
  if vim.bo.filetype == "python" then run_file() else vim.notify("Não é um arquivo Python!", vim.log.levels.WARN) end
end, { desc = "Rodar Python" })

vim.keymap.set("n", "<leader>rg", function()
  if vim.bo.filetype == "go" then run_file() else vim.notify("Não é um arquivo Go!", vim.log.levels.WARN) end
end, { desc = "Rodar Go" })

vim.keymap.set("n", "<leader>rr", function()
  if vim.bo.filetype == "rust" then run_file() else vim.notify("Não é um arquivo Rust!", vim.log.levels.WARN) end
end, { desc = "Rodar Rust" })

vim.keymap.set("n", "<leader>rj", function()
  if vim.bo.filetype == "java" then run_file() else vim.notify("Não é um arquivo Java!", vim.log.levels.WARN) end
end, { desc = "Rodar Java" })

vim.keymap.set("n", "<leader>rh", function()
  if vim.bo.filetype == "haskell" then run_file() else vim.notify("Não é um arquivo Haskell!", vim.log.levels.WARN) end
end, { desc = "Rodar Haskell" })

