-- Convert an epoch (seconds or milliseconds) to local time and replace selection/word
local function epoch_to_local(epoch_str)
  local num = tonumber(epoch_str)
  if not num then return nil end
  if #epoch_str >= 13 then  -- heuristics: treat 13+ digits as ms
    num = math.floor(num / 1000)
  end
  return os.date("%Y-%m-%d %H:%M:%S %Z", num)
end

-- Visual selection: convert and replace
vim.api.nvim_create_user_command("EpochConvertVisual", function()
  local s = vim.fn.getreg("v")
  local converted = epoch_to_local(s)
  if converted then
    vim.api.nvim_paste(converted, true, -1)
  else
    vim.notify("Not a valid epoch: " .. s, vim.log.levels.WARN)
  end
end, {})

-- Normal mode: convert word under cursor
vim.api.nvim_create_user_command("EpochConvertWord", function()
  local w = vim.fn.expand("<cword>")
  local converted = epoch_to_local(w)
  if converted then
    vim.cmd("normal! ciw" .. converted)
  else
    vim.notify("Not a valid epoch near cursor", vim.log.levels.WARN)
  end
end, {})

-- Example keymaps (adjust to taste)
vim.keymap.set("n", "<leader>te", ":EpochConvertWord<CR>", { desc = "Convert epoch under cursor" })
vim.keymap.set("x", "<leader>te", [[:<C-U>normal! gv"vy<Esc>:EpochConvertVisual<CR>]], { desc = "Convert selected epoch" })
