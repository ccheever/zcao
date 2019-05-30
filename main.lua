local zcao = require("./zcao")

function love.draw()
    love.graphics.print("Hello World" .. zcao.tau, 400, 300)
end

