--[[
    GD50
    Pokemon

    Author: Colton Ogden
    cogden@cs50.harvard.edu
]]

LogMenuState = Class{__includes = BaseState}

function LogMenuState:init()
    if log[1].text == 'No Battles Fought' and #log > 1 then 
        table.remove(log,1)
        print(dump(log))
    end
    self.LogMenu = Menu({
        -- x = VIRTUAL_WIDTH - 256,
        -- y = VIRTUAL_HEIGHT - 128,
        -- width = 256,
        -- height = 128,
        x = 0,
        y = 0,
        width = VIRTUAL_WIDTH,
        height = VIRTUAL_HEIGHT,
        items = log
    },false)   
end

function LogMenuState:update(dt)
    if love.keyboard.wasPressed('l') then
        gStateStack:pop()
    end
    self.LogMenu:update(dt)
end

function LogMenuState:add(status,winner, loser)
    item = status..' - '..winner..' (w) vs '..loser
    print('log string is '..item)
    -- self.LogMenu.items[#self.LogMenu.items + 1] = item
    
end
function LogMenuState:render()
    self.LogMenu:render()
end

function dump(o)
    if type(o) == 'table' then

       local s = '{ '

       for k,v in pairs(o) do

          if type(k) ~= 'number' then k = '"'..k..'"' end

          s = s .. '['..k..'] = ' .. dump(v) .. ','

       end

       return s .. '} '

    else

       return tostring(o)

    end

 end



