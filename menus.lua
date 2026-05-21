local menus = {}

local StartMenu = require("startmenu")
local PractiseMenu = require("practisemenu")
local startmenu = StartMenu.new()
local practisemenu = PractiseMenu.new()

menus = {
    startmenu = startmenu,
    practisemenu = practisemenu
}
return menus