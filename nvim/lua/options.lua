--
-- Options module.
-- Configuration's options are defined here and exported inside a module.
--

local M = {}

-- <ESC> and <leader> mappings
M.esc = "jh"
M.leader = " "

-- Remap default options
M.remap_opt = { silent = true, noremap = true }

-- Tabs options
M.tab_width = 4
M.use_tab = true

-- Window scrolloff
M.scrolloff = 8

return M
