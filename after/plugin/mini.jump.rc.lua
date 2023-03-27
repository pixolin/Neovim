local status, minijump = pcall(require, "mini.jump")
if (not status) then return end

minijump.setup()
