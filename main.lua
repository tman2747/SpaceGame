
require "menu"
require "escapeMenu"
require "game"

-- constants
WINDOW_WIDTH = 1920
WINDOW_HEIGHT = 1080

function love.load()
    love.window.setMode(WINDOW_WIDTH, WINDOW_HEIGHT, {
        fullscreen=false
    })
    love.window.setTitle("check")
    love.mouse.setVisible(true)
    mainMenuFont = love.graphics.newFont("/fonts/spacetheme.ttf", 50)
    gameState = "menu"
end

-- quit program with escape key FOR DEBUG ONLY
function love.keypressed(key)
    if key == "escape" then
        love.event.quit()
    end
end


function love.update(dt)
    -- main menu buttons checking for what button is clicekd
    --debugPrintChar()
    if gameState == "menu" then
         buttonPressed()
    end
    movement(dt)
    engineBoundingBox()


end

function love.draw()
    -- render menu
    rendermenu()
    -- render game stuff
    renderGame()
end