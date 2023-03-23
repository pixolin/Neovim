local ok, git = pcall(require, 'git')
if not ok then
  print("git.nvim not loaded")
end

git.setup()
