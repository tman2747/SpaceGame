
local BackgroundColor = {}
BackgroundColor.red = 61 / 255
BackgroundColor.green = 64 / 255
BackgroundColor.blue = 69 / 255
BackgroundColor.alpha = 1







playerX = 1920/2
playerY = 1080/2



function renderGame()
    if gameState == "play" then
        love.graphics.rectangle("fill", playerX, playerY ,50,50)
        love.graphics.setBackgroundColor( BackgroundColor.red, BackgroundColor.green, BackgroundColor.blue, BackgroundColor.alpha)
    end
end

-- not 100% sure if this is the right way to implement the dt with playermovement
local speed = 500
function movement(dt)
    if love.keyboard.isDown("w") and gameState == "play" then
        movedistance = speed *dt
        playerY = playerY - movedistance
    end
    if love.keyboard.isDown("s") and gameState == "play" then
        movedistance = speed *dt
        playerY = playerY + movedistance
    end
    if love.keyboard.isDown("a") and gameState == "play" then
        movedistance = speed *dt
        playerX = playerX - movedistance
    end
    if love.keyboard.isDown("d") and gameState == "play" then
        movedistance = speed *dt
        playerX = playerX + movedistance
    end
end

