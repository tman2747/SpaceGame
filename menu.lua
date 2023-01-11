-- used to render everything on main menu

-- 
MOVE_OVER_PIXEL = .8

function rendermenu()
    if gameState == "menu" then
        love.graphics.setFont(mainMenuFont)
        love.graphics.print("Sky Captain: Fecal Combat", (WINDOW_WIDTH * .5), 175,0)
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
