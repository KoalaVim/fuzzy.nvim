local backends = require('fuzzy_nvim.backends')

if backends.fzf then
   return backends.fzf
end

if backends.fzy then
   return backends.fzy
end

if backends.zf then
   return backends.zf
end

vim.notify('fuzzy.nvim: Cannot find neither fzy nor fzf or zf. Please install any of them')
return
