return {
  {
    "mg979/vim-visual-multi",
    branch = "master",
    init = function()
      -- VM prefix key. Defaults to '\\' but many prefer '<C-n>' like VSCode/Sublime
      vim.g.VM_maps = {
        ["Find Under"] = "<C-d>",           -- Like VSCode Ctrl+D
        ["Find Subword Under"] = "<C-d>",   -- Like VSCode Ctrl+D in visual mode
        ["Add Cursor Down"] = "<C-Down>",   -- Add cursor down
        ["Add Cursor Up"] = "<C-Up>",       -- Add cursor up
      }
      -- Set the VM leader key
      vim.g.VM_leader = "\\"
    end,
  },
}
