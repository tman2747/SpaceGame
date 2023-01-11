
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

-- need to add movement with DT accounted this is not currently finished
function movement(dt)
    if love.keyboard.isDown("w") then
        playerY = (playerY - 1)  
    end
    if love.keyboard.isDown("s") then
        playerY = (playerY + 1)
    end
end