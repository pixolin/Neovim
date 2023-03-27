local ok, surround = pcall(require, 'mini.surround')
if not ok then
  print("Plugin mini not loaded")
end

surround.setup()
