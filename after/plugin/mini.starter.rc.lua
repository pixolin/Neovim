local ok, starter = pcall(require, 'mini.starter')
if not ok then
  print("Plugin mini not loaded")
end

starter.setup()
