require("nnn").setup({
    picker = {
        command = "nnn -deA",
        style = {
			width = 0.4,     -- percentage relative to terminal size when < 1, absolute otherwise
			height = 0.8,    -- ^
			xoffset = 0.5,   -- ^
			yoffset = 0.5,   -- ^
			border = "rounded"-- border decoration for example "rounded"(:h nvim_open_win)
		},
        replace_netrw = "picker",
    },
	offset = false
})

local builtin = require("nnn").builtin
mappings = {
    { "<C-t>", builtin.open_in_tab },       -- open file(s) in tab
    { "<C-s>", builtin.open_in_split },     -- open file(s) in split
    { "<C-v>", builtin.open_in_vsplit },    -- open file(s) in vertical split
    { "<C-p>", builtin.open_in_preview },   -- open file in preview split keeping nnn focused
    { "<C-y>", builtin.copy_to_clipboard }, -- copy file(s) to clipboard
    { "<C-w>", builtin.cd_to_path },        -- cd to file directory
    { "<C-e>", builtin.populate_cmdline },  -- populate cmdline (:) with file(s)
}
