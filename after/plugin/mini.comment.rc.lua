local ok, minicomment = pcall(require, 'mini.comment')
if not ok then
  print("Comment.nvim not loaded")
end

minicomment.setup()
