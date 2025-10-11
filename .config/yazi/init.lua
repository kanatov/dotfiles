require("full-border"):setup({
	-- Available values: ui.Border.PLAIN, ui.Border.ROUNDED
	type = ui.Border.ROUNDED,
})
require("projects"):setup({
	save = {
		method = "lua", -- yazi | lua
		yazi_load_event = "@projects-load", -- event name when loading projects in `yazi` method
	},
	last = {
		update_after_save = true,
		update_after_load = true,
		load_after_start = true,
	},
	merge = {
		event = "projects-merge",
		quit_after_merge = false,
	},
	event = {
		save = {
			enable = true,
			name = "project-saved",
		},
		load = {
			enable = true,
			name = "project-loaded",
		},
		delete = {
			enable = true,
			name = "project-deleted",
		},
		delete_all = {
			enable = true,
			name = "project-deleted-all",
		},
		merge = {
			enable = true,
			name = "project-merged",
		},
	},
	notify = {
		enable = true,
		title = "Projects",
		timeout = 3,
		level = "info",
	},
})
require("pref-by-location"):setup({
	prefs = {
		location = "*",
		sort = {
			"natural",
			dir_first = true,
		},
		linemode = "size",
		show_hidden = true,
	},
})

require("simple-tag"):setup({
	ui_mode = "icon",
	hints_disabled = false,
	linemode_order = 500,
	colors = {
		reversed = true,
		["*"] = "gold",
		["!"] = "#cc9057",
	},

	icons = {
		default = "󰚋",
		["*"] = "",
		["!"] = "",
		["b"] = "",
	},
})
