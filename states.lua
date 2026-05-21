local states = {}
local menus = require("menus")

states["startmenu"] = {
    load = function()
    end,
    update = function(dt)
    end,
    draw = function()
        menus.startmenu:draw()
    end
}
states["practisemenu"] = {
    load = function()
    end,
    update = function(dt)
    end,
    draw = function()
        menus.practisemenu:draw()
    end
}
return states