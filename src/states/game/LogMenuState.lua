--[[
    GD50
    Pokemon

    Author: Colton Ogden
    cogden@cs50.harvard.edu
]]

LogMenuState = Class{__includes = BaseState}

function LogMenuState:init()
    self.LogMenu = Menu({
        x = VIRTUAL_WIDTH - 256,
        y = VIRTUAL_HEIGHT - 128,
        width = 256,
        height = 128,
        items = {
            {
                text = 'Victory - Cardwin (w) vs Aardart'
            },
            {
                text = 'Loss - Anoleaf (w) vs Bamboon'
            }
        }
    },false)   
end

function LogMenuState:update(dt)
    if love.keyboard.wasPressed('l') then
        gStateStack:pop()
    end
    self.LogMenu:update(dt)
end


function LogMenuState:render()
    self.LogMenu:render()
end

