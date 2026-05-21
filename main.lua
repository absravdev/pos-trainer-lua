local states = require("states")
local menus = require("menus")
local Data = require("data")
local fullscreen = not love.window.getFullscreen()
love.window.setFullscreen(fullscreen)

function love.load()
    if states[Data.currentState] and states[Data.currentState].load then
        states[Data.currentState].load()
    end
end
function love.update(dt)
    if states[Data.currentState] and states[Data.currentState].update then
        states[Data.currentState].update(dt)
    end
end
function love.draw()
    if states[Data.currentState] and states[Data.currentState].draw then
        states[Data.currentState].draw()
    end
end
function love.mousepressed(x, y, button)
    if Data.currentState and menus[Data.currentState] then
        menus[Data.currentState]:mousepressed(x, y, button, states)
    end
end