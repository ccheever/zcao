local Object =
    require "https://raw.githubusercontent.com/rxi/classic/e5610756c98ac2f8facd7ab90c94e1a097ecd2c6/classic.lua"

local boilerplate = require("./boilerplate")

local Zcao = {
    -- Renderer = require("./renderer"),
    -- Vector = require("./vector"),
    -- Anchor = require("./anchor"),
    -- Dragger = require("./dragger"),
    -- Illustration = require("./illustration"),
    -- PathCommand = require("./path-command"),
    -- Shape = require("./shape"),
    -- Group = require("./group"),
    -- Rect = require("./rect"),
    -- RoundedRect = require("./roundedRect"),
    -- Ellipse = require("./ellipse"),
    -- Polygon = require("./polygon"),
    -- Hemisphere = require("./hemisphere"),
    -- Cylinder = require("./cylinder"),
    -- Cone = require("./cone"),
    -- Box = require("./box"),

    Object = Object
}

for k, v in pairs(boilerplate) do
    Zcao[k] = v
end

return Zcao