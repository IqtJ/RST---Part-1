---------------------
-----name selection
--------------------


local composer = require( "composer" )
 
local scene = composer.newScene()

-- create()
function scene:create( event )
 
  local sceneGroup = self.view
end

local function showPieceScene()
    
    local options = {
        effect = "fade",
        time = 500
    }
    composer.gotoScene( "piece", options) --goes to category selection
end



--show()
function scene:show( event )
 
    local sceneGroup = self.view
    local phase = event.phase
 
    if ( phase == "will" ) then

    	local background = display.newImageRect("assets/space.png", 600, 600)
		background.x = display.contentCenterX
		background.y = display.contentCenterY
		background.id = "background"
		sceneGroup:insert(background)


        ----function for when start is clicked


    elseif ( phase == "did" ) then


        local startButton = display.newImageRect("assets/start.png", 75, 70)
        startButton.x = display.contentCenterX 
        startButton.y = display.contentCenterY + 100
        startButton.id = "start button"
        sceneGroup:insert(startButton)

        -----enter player names
        local player1textfield = native.newTextField( display.contentCenterX, display.contentCenterY - 125, 300, 50 )
        player1textfield.id = "player 1 textField"
        sceneGroup:insert(player1textfield)

        local player2textfield = native.newTextField( display.contentCenterX, display.contentCenterY , 300, 50 )
        player2textfield.id = "player 2 textField"
        sceneGroup:insert(player2textfield)

        ----function for when start is clicked
        local function startButtonTouch ( event )

            ---player 1 and 2 
            composer.setVariable( "player 1", player1textfield.text ) --adds players as vvariable, to exchange info between scenes
            composer.setVariable( "player 2", player2textfield.text )
            local player1 = composer.getVariable( "player 1" )
            local player2= composer.getVariable( "player 2" )
            --test
            print(player1)
            print(player2)
            player1textfield:removeSelf()
            player2textfield:removeSelf()
            ---
            timer.performWithDelay(500, showPieceScene)

        end

        startButton:addEventListener( "tap", startButtonTouch)

 
    end
end

-- hide()
function scene:hide( event )
 
    local sceneGroup = self.view
    local phase = event.phase
 
    if ( phase == "will" ) then
        
 
    elseif ( phase == "did" ) then



    end
end

-- destroy()
function scene:destroy( event )
 
    local sceneGroup = self.view
    -- Code here runs prior to the removal of scene's view
 
end

-- -----------------------------------------------------------------------------------
-- Scene event function listeners
-- -----------------------------------------------------------------------------------
scene:addEventListener( "create", scene )
scene:addEventListener( "show", scene )
scene:addEventListener( "hide", scene )
scene:addEventListener( "destroy", scene )
-- -----------------------------------------------------------------------------------



return scene

