local M = {}

local has_fzf, fzf_matcher = pcall(require, 'fuzzy_nvim.fzf_matcher')
if has_fzf then
	M.fzf = fzf_matcher
end

local has_fzy, fzy_matcher = pcall(require, 'fuzzy_nvim.fzy_matcher')
if has_fzy then
	M.fzy = fzy_matcher
end

local has_zf, zf_matcher = pcall(require, 'fuzzy_nvim.zf_matcher')
if has_zf then
	M.zf = zf_matcher
end

--- Get a specific backend by name, falling back to the default if unavailable.
---@param name? string "fzf", "fzy", or "zf"
---@return table matcher with :filter(pattern, lines, extra_arg) method
function M.get(name)
	if name and M[name] then
		return M[name]
	end
	return require('fuzzy_nvim')
end

return M
