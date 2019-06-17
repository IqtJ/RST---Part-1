--------------------------------------------
-------splash screen
--------------------------------------------
----composer
local composer = require( "composer" )
 
local scene = composer.newScene()


-----forwards to screen 2

local function showNameScene()
	
	local options = {
		effect = "fade",
		time = 500
	}
	composer.gotoScene( "name", options) --goes to category selection
end

------------event functions
function scene:create( event )
 
    local sceneGroup = self.view
    --creates the scene
end
 
 
-- show screen
function scene:show( event )
 
    local sceneGroup = self.view
    local phase = event.phase
 
    if ( phase == "will" ) then
        -- about to come on screen

        local background = display.newImageRect("assets/space2.jpg", 600, 500)
		background.x = display.contentCenterX
		background.y = display.contentCenterY
		background.id = "background"
		sceneGroup:insert(background)

 
    elseif ( phase == "did" ) then
        -- on screen
        timer.performWithDelay(1000, showNameScene)
 
    end
end
 
 
-- hide()
function scene:hide( event )
 
    local sceneGroup = self.view
    local phase = event.phase
 
    if ( phase == "will" ) then
        -- about to go off screen 
    elseif ( phase == "did" ) then
        -- entirely off screen
    end
end
 
 
-- destroy()
function scene:destroy( event )
 
    local sceneGroup = self.view
    -- removes scene
 
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
