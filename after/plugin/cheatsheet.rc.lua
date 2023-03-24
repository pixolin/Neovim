local ok, cheatsheet = pcall(require, 'cheatsheet')
if not ok then
  print("Cheatsheet plugin not loaded")
end

cheatsheet.setup()
