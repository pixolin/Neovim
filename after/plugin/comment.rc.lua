local ok, todocomment = pcall(require, 'Comment')
if not ok then
  print("Comment.nvim not loaded")
end

todocomment.setup()
