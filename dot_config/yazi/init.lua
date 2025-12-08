require("git"):setup()
require("relative-motions"):setup({ show_numbers = "relative", show_motion = true, enter_mode = "first" })
require("telegram-send"):setup({
	command = "telegram-send --file",
	notification = true,
})
