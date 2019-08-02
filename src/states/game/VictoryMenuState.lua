--[[
    GD50
    Pokemon

    Author: Colton Ogden
    cogden@cs50.harvard.edu
]]

VictoryMenuState = Class{__includes = BaseState}

function VictoryMenuState:init(stats)
    -- self.battleState = battleState
    self.VictoryMenu = Menu({
        x = VIRTUAL_WIDTH - 256,
        y = VIRTUAL_HEIGHT - 128,
        width = 256,
        height = 128,
        items = {
            {
                text = 'HP '..stats.ogHp..' + '..stats.hpI..' = '..(stats.ogHp + stats.hpI)
            },
            {
                text = 'Attack '..stats.ogAtt..' + '..stats.attI..' = '..(stats.ogAtt + stats.attI)
            },
            {
                text = 'Defense '..stats.ogDef..' + '..stats.defI..' = '..(stats.ogDef + stats.defI)
            },
            {
                text = 'Speed '..stats.ogSp..' + '..stats.speedI..' = '..(stats.ogSp + stats.speedI)
            }
        }
    },false)   
end

function VictoryMenuState:update(dt)
    self.VictoryMenu:update(dt)
end

function VictoryMenuState:render()
    self.VictoryMenu:render()
end