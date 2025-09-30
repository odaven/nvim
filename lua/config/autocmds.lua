-- Autocmds are automatically loaded on the VeryLazy event
-- Default autocmds that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/autocmds.lua
-- Add any additional autocmds here

-- List of filetypes where you DON'T want dimming or cursorline
local ignore_filetypes = {
  "snacks_dashboard",
}

local function should_ignore()
  return vim.tbl_contains(ignore_filetypes, vim.bo.filetype)
end

local group = vim.api.nvim_create_augroup("ActiveWindow", { clear = true })

vim.api.nvim_create_autocmd({ "WinEnter", "BufEnter" }, {
  group = group,
  callback = function()
    if should_ignore() then
      return
    end
    vim.opt_local.winhighlight = "Normal:WinActive,CursorLine:CursorLineActive"
    vim.opt_local.cursorline = true
  end,
})

vim.api.nvim_create_autocmd({ "WinLeave", "BufLeave" }, {
  group = group,
  callback = function()
    if should_ignore() then
      return
    end
    vim.opt_local.winhighlight = "Normal:WinInactive,CursorLine:CursorLineInactive"
    vim.opt_local.cursorline = false
  end,
})

-- Highlight groups
vim.cmd([[
  hi WinActive guibg=#000000
  hi WinInactive guibg=#080808
  hi CursorLineActive guibg=#111111
  hi CursorLineInactive guibg=#080808
]])
