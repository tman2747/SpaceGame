
local BackgroundColor = {}
BackgroundColor.red = 17 / 255
BackgroundColor.green = 17 / 255
BackgroundColor.blue = 18 / 255
BackgroundColor.alpha = 1


function renderGame()
    if gameState == "play" then
        love.graphics.draw(ship, 1000, 300, 1.5708)
        love.graphics.setColor(255/255,191/255,128/255,1)
        love.graphics.setBackgroundColor( BackgroundColor.red, BackgroundColor.green, BackgroundColor.blue, BackgroundColor.alpha)
        love.graphics.setColor(1,1,1,1)
        love.mouse.setVisible(false)

    end
end

-- maybe add this to a state machine so im not constantly drawing menu when the time comes?
function engineBoundingBox()
    if playerX <= 220 and playerY >= 495 and playerX >= 94 and playerY <= 690 then
        secondaryState = true
    else
        secondaryState = false
    end
end

function electricBoundingBox()
    if playerX >= 609 and playerY >= 494 and playerX <= 719 and playerY <= 555 then
        electricMenuState = true
    else
        electricMenuState = false
    end
end