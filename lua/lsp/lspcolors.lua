local ok, lspcolors = pcall(require, "lsp-colors")

if not ok then
	return
end

lspcolors.setup({
	Error = "#BF616A",
	Warning = "#EBCB8B",
	Information = "#5E81AC",
	Hint = "#A3BE8C",
})
