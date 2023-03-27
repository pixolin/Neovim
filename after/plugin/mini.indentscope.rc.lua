local ok, indentscope = pcall(require, 'mini.indentscope')
if not ok then
  print("Plugin mini not loaded")
end

indentscope.setup()
