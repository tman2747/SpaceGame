
local BackgroundColor = {}
BackgroundColor.red = 17 / 255
BackgroundColor.green = 17 / 255
BackgroundColor.blue = 18 / 255
BackgroundColor.alpha = 1



playerX = 1920/2
playerY = 1080/2



function renderGame()
    if gameState == "play" then
        ship = love.graphics.newImage("/images/ship.png")
        love.graphics.draw(ship, 1000, 300, 1.5708)

        love.graphics.setColor(255/255,191/255,128/255,1)
        love.graphics.rectangle("fill", playerX, playerY ,14,14)
        love.graphics.setBackgroundColor( BackgroundColor.red, BackgroundColor.green, BackgroundColor.blue, BackgroundColor.alpha)
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


-- maybe add this to a state machine so im not constantly drawing menu when the time comes?
function engineBoundingBox()
    if playerX <= 220 and playerY >= 495 and playerX >= 94 and playerY <= 690 then
        print("show engine menu")
    end
end