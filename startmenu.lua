local StartMenu = {}
StartMenu.__index = StartMenu

local Data = require("data")
local font = love.graphics.newFont(70)
local font1 = love.graphics.newFont(20)

function StartMenu.new()
    local self = setmetatable({}, StartMenu)
    self.buttons = {
        {x = 700, y = 700, w = 200, h = 100, text = "EMPEZAR"},
        {x = 1000, y = 700, w = 200, h = 100, text = "SALIR"},
    }
    return self
end
function StartMenu:draw()
    love.graphics.setLineWidth(10)
    for i, v in ipairs(self.buttons) do
        love.graphics.setColor(0.8, 0.8, 0.8) 
        love.graphics.rectangle("line", v.x, v.y, v.w, v.h)
        love.graphics.setFont(font1)
        love.graphics.print(v.text, (v.x - 40) + v.w / 2, (v.y - 10) + v.h / 2)
    end
    love.graphics.setFont(font)
    love.graphics.print("tpv_learner", 590, 300)
end
function StartMenu:mousepressed(x,y,b,s)
    if b==1 then
        for i,v in ipairs(self.buttons) do
            if x>v.x and x<v.x+v.w and y>v.y and y<v.y+v.h then
                print("Has hecho clic en el "..v.text)
                if v.text=="EMPEZAR" then
                    Data.currentState = "practisemenu"
                elseif v.text=="SALIR" then
                    love.event.quit();
                end
            end
        end
    end
end
return StartMenu