-- =============================================================================
-- VSCode / Eclipse Style Keymaps for LazyVim
-- =============================================================================
-- Adds familiar keybindings for users coming from VSCode and Eclipse on macOS.
-- These keymaps supplement (not replace) the default LazyVim keymaps.
-- Leader key remains <Space> for all LazyVim-native shortcuts.
--
-- Mapping philosophy:
--   Cmd (⌘) based shortcuts → mirror VSCode macOS defaults
--   Ctrl based shortcuts    → mirror Eclipse / cross-platform defaults
--   Leader based shortcuts  → remain LazyVim native
-- =============================================================================

return {
  {
    "LazyVim/LazyVim",
    keys = {
      -- =====================================================================
      -- FILE OPERATIONS (⌘S, ⌘Z, ⌘⇧Z, ⌘W)
      -- =====================================================================
      -- Save file (Cmd+S) — works in normal and insert mode
      { "<D-s>", "<cmd>w<cr>", desc = "Save File", mode = { "n", "i", "v" } },
      -- Save all files (Cmd+Alt+S)
      { "<D-A-s>", "<cmd>wa<cr>", desc = "Save All Files", mode = { "n", "i" } },
      -- Undo (Cmd+Z)
      { "<D-z>", "<cmd>undo<cr>", desc = "Undo", mode = { "n", "i" } },
      -- Redo (Cmd+Shift+Z)
      { "<D-S-z>", "<cmd>redo<cr>", desc = "Redo", mode = { "n", "i" } },
      -- Close current buffer (Cmd+W)
      { "<D-w>", function() Snacks.bufdelete() end, desc = "Close Buffer", mode = "n" },

      -- =====================================================================
      -- SEARCH & REPLACE (⌘F, ⌘H, ⌘⇧F, ⌘P)
      -- =====================================================================
      -- Find in current file (Cmd+F)
      { "<D-f>", "/", desc = "Search in File", mode = "n" },
      { "<D-f>", "<esc>/", desc = "Search in File", mode = "i" },
      -- Find and Replace in current file (Cmd+H)
      { "<D-h>", ":%s/", desc = "Find & Replace in File", mode = "n" },
      -- Find in project / Grep (Cmd+Shift+F)
      { "<D-S-f>", function() Snacks.picker.grep() end, desc = "Grep (Find in Files)", mode = "n" },
      -- Quick Open / Go to File (Cmd+P)
      { "<D-p>", function() Snacks.picker.smart() end, desc = "Go to File (Smart)", mode = "n" },
      -- Command Palette (Cmd+Shift+P)
      { "<D-S-p>", "<cmd>lua Snacks.picker.commands()<cr>", desc = "Command Palette", mode = "n" },

      -- =====================================================================
      -- NAVIGATION — GO TO (⌘G, Ctrl+G, F12)
      -- =====================================================================
      -- Go to Line (Ctrl+G — Eclipse/VSCode)
      { "<C-g>", ":", desc = "Go to Line", mode = "n" },
      -- Go to Definition (F12 — VSCode/Eclipse)
      { "<F12>", function() vim.lsp.buf.definition() end, desc = "Go to Definition", mode = "n" },
      -- Go to Type Definition (Cmd+F12)
      { "<D-F12>", function() vim.lsp.buf.type_definition() end, desc = "Go to Type Definition", mode = "n" },
      -- Go to Implementation (Cmd+Shift+F12 — Eclipse style)
      { "<C-F12>", function() vim.lsp.buf.implementation() end, desc = "Go to Implementation", mode = "n" },
      -- Peek Definition (Alt+F12 — VSCode)
      { "<A-F12>", function() vim.lsp.buf.hover() end, desc = "Peek Definition / Hover", mode = "n" },

      -- =====================================================================
      -- CODE ACTIONS & REFACTORING
      -- =====================================================================
      -- Quick Fix / Code Action (Cmd+. — VSCode)
      { "<D-.>", function() vim.lsp.buf.code_action() end, desc = "Code Action (Quick Fix)", mode = { "n", "v" } },
      -- Rename Symbol (F2 — VSCode/Eclipse)
      { "<F2>", function() vim.lsp.buf.rename() end, desc = "Rename Symbol", mode = "n" },
      -- Format Document (Cmd+Shift+I — VSCode macOS / Ctrl+Shift+F — Eclipse)
      { "<D-S-i>", function() LazyVim.format({ force = true }) end, desc = "Format Document", mode = { "n", "v" } },
      { "<C-S-f>", function() LazyVim.format({ force = true }) end, desc = "Format Document (Eclipse)", mode = { "n", "v" } },
      -- Toggle Comment (Cmd+/ — VSCode)
      { "<D-/>", "gcc", desc = "Toggle Line Comment", remap = true, mode = "n" },
      { "<D-/>", "gc", desc = "Toggle Comment", remap = true, mode = "v" },

      -- =====================================================================
      -- EDITOR / TAB MANAGEMENT (⌘1-9, ⌘⇧[, ⌘⇧])
      -- =====================================================================
      -- Switch buffers (Cmd+Shift+[ and Cmd+Shift+])
      { "<D-S-[>", "<cmd>bprevious<cr>", desc = "Previous Buffer", mode = "n" },
      { "<D-S-]>", "<cmd>bnext<cr>", desc = "Next Buffer", mode = "n" },
      -- Alt + Tab style buffer cycling (Ctrl+Tab — Eclipse)
      { "<C-Tab>", "<cmd>bnext<cr>", desc = "Next Buffer", mode = "n" },
      { "<C-S-Tab>", "<cmd>bprevious<cr>", desc = "Previous Buffer", mode = "n" },

      -- =====================================================================
      -- SELECTION & EDITING
      -- =====================================================================
      -- Select All (Cmd+A)
      { "<D-a>", "ggVG", desc = "Select All", mode = "n" },
      -- Duplicate Line Down (Cmd+Shift+D — VSCode / Ctrl+Alt+Down — Eclipse)
      { "<D-S-d>", "<cmd>t.<cr>", desc = "Duplicate Line Down", mode = "n" },
      { "<C-A-Down>", "<cmd>t.<cr>", desc = "Duplicate Line Down (Eclipse)", mode = "n" },
      -- Move Line Up/Down (Alt+Up/Down — VSCode & Eclipse)
      { "<A-Up>", "<cmd>m .-2<cr>==", desc = "Move Line Up", mode = "n" },
      { "<A-Down>", "<cmd>m .+1<cr>==", desc = "Move Line Down", mode = "n" },
      { "<A-Up>", "<esc><cmd>m .-2<cr>==gi", desc = "Move Line Up", mode = "i" },
      { "<A-Down>", "<esc><cmd>m .+1<cr>==gi", desc = "Move Line Down", mode = "i" },
      { "<A-Up>", ":m '<-2<cr>gv=gv", desc = "Move Selection Up", mode = "v" },
      { "<A-Down>", ":m '>+1<cr>gv=gv", desc = "Move Selection Down", mode = "v" },
      -- Delete entire line (Ctrl+Shift+K — VSCode)
      { "<C-S-k>", "dd", desc = "Delete Line", mode = "n" },

      -- =====================================================================
      -- SIDEBAR & PANELS
      -- =====================================================================
      -- Toggle Sidebar / File Explorer (Cmd+B — VSCode)
      { "<D-b>", "<leader>e", desc = "Toggle File Explorer", remap = true, mode = "n" },
      -- Toggle Terminal (Cmd+` — VSCode)
      { "<D-`>", function() Snacks.terminal() end, desc = "Toggle Terminal", mode = { "n", "t" } },
      -- Toggle Problems / Diagnostics (Cmd+Shift+M — VSCode)
      { "<D-S-m>", "<cmd>Trouble diagnostics toggle<cr>", desc = "Toggle Diagnostics", mode = "n" },

      -- =====================================================================
      -- MULTI-CURSOR / FIND NEXT (Cmd+D — VSCode)
      -- =====================================================================
      -- Select word under cursor and find next (Cmd+D equivalent — uses * search)
      { "<D-d>", "*N", desc = "Find Word Under Cursor", mode = "n" },

      -- =====================================================================
      -- WINDOW SPLITS (Eclipse / VSCode style)
      -- =====================================================================
      -- Split Right (Cmd+\)
      { "<D-\\>", "<cmd>vsplit<cr>", desc = "Split Right", mode = "n" },
      -- Split Down (Cmd+Shift+\)
      { "<D-S-\\>", "<cmd>split<cr>", desc = "Split Down", mode = "n" },
    },
  },
}
