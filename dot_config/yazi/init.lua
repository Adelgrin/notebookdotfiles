require("git"):setup()
require("relative-motions"):setup({ show_numbers = "relative", show_motion = true, enter_mode = "first" })
require("telegram-send"):setup({
	command = "telegram-send --file",
	notification = true,
})

Status:children_add(function()
	local command = "df -kh .|awk '!/^Filesystem/{printf \" %s FREE \", $(NF-2)}'"
	local info = ui.Span(io.popen(command):read("*a")):fg("green")
	return info
end, 1500, Header.RIGHT)
