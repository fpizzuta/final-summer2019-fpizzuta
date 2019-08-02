--[[
    GD50
    Pokemon

    Author: Colton Ogden
    cogden@cs50.harvard.edu

    A Menu is simply a Selection layered onto a Panel, at least for use in this
    game. More complicated Menus may be collections of Panels and Selections that
    form a greater whole.
]]

Menu = Class{}

function Menu:init(def, cursor)
    self.panel = Panel(def.x, def.y, def.width, def.height)
    print("in menu cursor = "..tostring(cursor))
    if cursor == nil then
        cur = true
    else
        cur = false
    end
    print('now checking self.cursor = '..tostring(cur))
    self.selection = Selection({
        items = def.items,
        x = def.x,
        y = def.y,
        width = def.width,
        height = def.height
    }, cur)
end

function Menu:update(dt)
    self.selection:update(dt)
end

function Menu:render()
    self.panel:render()
    self.selection:render()
end