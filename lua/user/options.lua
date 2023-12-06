-- :help option

local options = {
	showtabline = 4, -- always show tab
	smartcase = true, -- smart case
	smartindent = true, -- smart indent
	timeoutlen = 1000, -- time await to map sequence to complete
	shiftwidth = 4, -- number of space indent
	tabstop = 4, -- insert tab 4 space
	number = true, -- number is side
	backup = false, -- create a backup file
	clipboard = "unnamedplus", -- allow neovim to access the system clipboard
	cmdheight = 2, -- more space in neovim cmd
	completeopt = {"menuone","noselect"}, -- mostly just for cmp
	conceallevel = 0, -- so that `` is visible in markdown files
	fileencoding = "utf-8", -- the encoding file in utf-8
	hlsearch = true, -- highlight all the match in previous search pattern
	ignorecase = true, -- ingonce case in search
	mouse = "a", -- allow mouse to used in neovim
	pumheight = 10, -- pop up menu height
	showmode = false, -- we don't need to see like --INSERT--
	splitbelow = true, -- force all horizontal split below current window
	splitright = true, -- force all vertical split right current window
	swapfile = false, -- create a swap file
	undofile = true, -- enable persistent undo
	updatetime = 300, -- faster completion (default 4000ms)
	writebackup = false, -- if a file is being edited by another program (or was written to file while editing with another program), it is not allowed to be edited
	cursorline = true, -- highlight current line
	relativenumber = true, -- set relative number
	signcolumn = yes, -- always show the signcolumn
	wrap = false, -- display line as one line
	scrolloff = 8,
	sidescrolloff = 8,
	guifont = "monospace:h17", -- monospace in neovim
}

vim.opt.shortmess:append "c"

for k,v in pairs(options) do
	vim.opt[k] = v
end

vim.cmd "set whichwarp+=<,>,[,],h,l"
vim.cmd [[set iskeyword+=-]]
