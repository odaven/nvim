-- Autocmds are automatically loaded on the VeryLazy event
-- Default autocmds that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/autocmds.lua
-- Add any additional autocmds here

-- Hide cursor line and dim windows when inactive
vim.cmd([[
  augroup ActiveWindow
    autocmd!
    " When entering a window
    autocmd WinEnter,BufEnter * setlocal winhighlight=Normal:WinActive,CursorLine:CursorLineActive
    autocmd WinEnter,BufEnter * setlocal cursorline
    " When leaving a window
    autocmd WinLeave,BufLeave * setlocal winhighlight=Normal:WinInactive,CursorLine:CursorLineInactive
    autocmd WinLeave,BufLeave * setlocal nocursorline
  augroup END

  " Highlight groups
  hi WinActive guibg=#000000         " active window: pure black
  hi WinInactive guibg=#080808       " inactive windows: very dark gray (slightly lighter than black)
  hi CursorLineActive guibg=#111111  " subtle cursorline in active window
  hi CursorLineInactive guibg=#080808 " match inactive background
]])
