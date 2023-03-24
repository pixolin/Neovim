local ok, wk = pcall(require, 'which-key')
if not ok then
  print("Which-Key not loaded")
end

wk.setup()
wk.register({
  ["<leader>f"] = { name = "+file" },
  ["<leader>fb"] = { "<cmd>Telescope file_browser<cr>", "File-Browser" },
  ["<leader>ff"] = { "<cmd>Telescope find_files<cr>", "Find File" },
  ["<leader>fr"] = { "<cmd>Telescope oldfiles<cr>", "Open Recent File" },
  ["<leader>fn"] = { "<cmd>enew<cr>", "New File" },
})
