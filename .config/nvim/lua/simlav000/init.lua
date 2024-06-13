require("simlav000.set")
require("simlav000.remap")
<<<<<<< HEAD
<<<<<<< HEAD

-- Create a namespace for the extmarks
local ns_id = vim.api.nvim_create_namespace("multiple_cursors")

-- Function to place cursor-like marks in front of each line in visual block mode
function place_cursors_visual_block()
	-- Get the start and end lines of the visual block
	local start_line = vim.fn.line("'<")
	local end_line = vim.fn.line("'>")

	-- Clear existing marks in the namespace
	vim.api.nvim_buf_clear_namespace(0, ns_id, 0, -1)

	-- Loop through each line in the visual block
	for line = start_line, end_line do
		-- Place a cursor-like mark at the beginning of the line
		local buf = vim.fn.bufnr("")
		vim.api.nvim_buf_set_extmark(buf, ns_id, line - 1, 0, {
			virt_text = { { " ", "Comment" } },
		})
	end
	-- Enter insert mode
	vim.cmd("startinsert")
end

-- Keybinding to trigger the function in visual mode
vim.api.nvim_set_keymap("x", "I", ":lua place_cursors_visual_block()<CR>", { noremap = true, silent = true })
=======
>>>>>>> 3f358a1 (kickstart merge pc laptop)
=======
>>>>>>> 3f358a1 (kickstart merge pc laptop)
