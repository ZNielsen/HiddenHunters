
function love.load()
    x = 100
    y = 100
end

function love.update(dt)
    if love.keyboard.isDown("up") then
        y = y - (50*dt)
    end
    if love.keyboard.isDown("down") then
        y = y + (50*dt)
    end
    if love.keyboard.isDown("left") then
        x = x - (50*dt)
    end
    if love.keyboard.isDown("right") then
        x = x + (50*dt)
    end
end

function love.draw()
    love.graphics.rectangle("fill", x, y, 50, 80)
end
