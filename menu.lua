-- used to render everything on main menu

-- 
MOVE_OVER_PIXEL = .8

function rendermenu()
    if gameState == "menu" then
        love.graphics.setFont(mainMenuFont)
        love.graphics.print("Sky Captain: Space Combat", (WINDOW_WIDTH * .5), 175,0)
        love.graphics.print("Play", WINDOW_WIDTH * MOVE_OVER_PIXEL, 375)
        love.graphics.print("Settings", WINDOW_WIDTH * MOVE_OVER_PIXEL, 475)
        love.graphics.print("Quit", WINDOW_WIDTH * MOVE_OVER_PIXEL, 575)

    end
end

function mouseDEBUG()
    x = love.mouse.getX()
    y = love.mouse.getY()
    print(x,y)
end

function buttonPressed()
    function love.mousereleased(x, y, button)        
        if gameState == "menu" and button == 1 and x >= WINDOW_WIDTH * MOVE_OVER_PIXEL and y >= 375 and x <= WINDOW_WIDTH * MOVE_OVER_PIXEL
         + mainMenuFont:getWidth("Play") and y <= 375 + 50 then 
            gameState = "play"
            print("play")
        elseif gameState == "menu" and button == 1 and x >= WINDOW_WIDTH *MOVE_OVER_PIXEL and y >= 575 and x <= WINDOW_WIDTH *MOVE_OVER_PIXEL
         + mainMenuFont:getWidth("Quit") and y <= 575 + 50 then 
                love.event.quit()
                print("quit")
        end
    end
end

-- need to move setfont out of fuction so it isnt setting new font every frame

function engineMenu(secondaryState)
    if secondaryState == true then
        love.mouse.setVisible(true) -- show the mouse
        love.graphics.setColor(0, 0, 0, 0.8) -- set the color of the rectangle
        love.graphics.setFont(subMenuFont)
        love.graphics.rectangle("fill", (WINDOW_WIDTH / 2) - 300, (WINDOW_HEIGHT / 2) - 300, 600, 600) -- Draw the rectangle
        love.graphics.setColor(1,1,1, 0.8) -- set the color of the text
        love.graphics.print("Engine Menu", (WINDOW_WIDTH / 2) - 300, (WINDOW_HEIGHT / 2) - 300)
        love.graphics.setColor( 1, 1, 1, 1) -- set the color back to its orginal so it doesnt draw everything weird
    end
end


function electricMenu(electricMenuState)
    if electricMenuState == true then
        love.mouse.setVisible(true) -- show the mouse
        love.graphics.setColor(0, 0, 0, 0.8) -- set the color of the rectangle
        love.graphics.setFont(subMenuFont)
        love.graphics.rectangle("fill", (WINDOW_WIDTH / 2) - 300, (WINDOW_HEIGHT / 2) - 300, 600, 600) -- Draw the rectangle
        love.graphics.setColor(1,1,1, 0.8) -- set the color of the text
        love.graphics.print("Electric Menu", (WINDOW_WIDTH / 2) - 300, (WINDOW_HEIGHT / 2) - 300)

        -- Add the button
        local buttonX = (WINDOW_WIDTH / 2) - 200
        local buttonY = (WINDOW_HEIGHT / 2) - 250
        local buttonWidth = 400
        local buttonHeight = 50

        love.graphics.setColor(0.5, 0.5, 0.5, 1) -- set the color of the button
        love.graphics.rectangle("fill", buttonX, buttonY, buttonWidth, buttonHeight)
        love.graphics.setColor(1, 1, 1, 1) -- set the color of the text
        love.graphics.print("Button", buttonX + (buttonWidth / 2) - 50, buttonY + (buttonHeight / 2) - 15)

        -- Check if the mouse is clicking inside the button
        if love.mouse.isDown(1) and love.mouse.getX() >= buttonX and love.mouse.getX() <= buttonX + buttonWidth and love.mouse.getY() >= buttonY and love.mouse.getY() <= buttonY + buttonHeight then
            -- Perform desired action here
            love.event.quit()
        end

        love.graphics.setColor( 1, 1, 1, 1) -- set the color back to its original so it doesn't draw everything weird
    end
end