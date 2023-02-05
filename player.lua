playerX = 1920/2
playerY = 1080/2

function renderplayer()
    if gameState == "play" then
    love.graphics.setColor(255/255,191/255,128/255,1)
    love.graphics.rectangle("fill", playerX, playerY ,14,14)
    love.graphics.setColor(1,1,1,1)
    end
end

-- not 100% sure if this is the right way to implement the dt with playermovement
local speed = 250
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

function debugPrintChar()
    print("PlayerX: ", playerX, "playerY: ", playerY)
end