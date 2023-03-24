local ok, Comment = pcall(require, 'Comment')
if not ok then
  print("Comment.nvim not loaded")
end

comment.setup()
