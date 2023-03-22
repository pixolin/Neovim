local ok, colorizer = pcall(require, 'colorizer')
if not ok then
  print("Colorizer not loaded")
end

require('colorizer').setup({
  '*',
})
