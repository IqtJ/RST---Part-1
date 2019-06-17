-----------------------------------
------player piece selection
-------------------------------------


local composer = require( "composer" )
 
local scene = composer.newScene()

-- create()
function scene:create( event )
 
  local sceneGroup = self.view
end

--game scene opening
local function showGameScene()
    
    local options = {
        effect = "fade",
        time = 500
    }
    composer.gotoScene( "game", options) --goes to category selection
end


--show()
function scene:show( event )
 
    local sceneGroup = self.view
    local phase = event.phase
 
    if ( phase == "will" ) then
        -- about to come on screen

    	local background = display.newImageRect("assets/bg2.jpg", 600, 600)
		background.x = display.contentCenterX
		background.y = display.contentCenterY
		background.id = "background"
		sceneGroup:insert(background)
 
    elseif ( phase == "did" ) then
        local player1 = composer.getVariable( "player 1" )
        local player2 = composer.getVariable( "player 2" )
        --TEST
        print(player1, player2)

        local choosePieceText = display.newText( "Choose Your Pieces", display.contentCenterX, display.contentCenterY - 120, native.labelFont, 30 )
		choosePieceText.id = "piece text"
		choosePieceText:setFillColor( 0, 0, 0 )
		sceneGroup:insert(choosePieceText)

		----pieces
        --broom
		local broom = display.newImageRect("assets/broom.png", 75, 70)
        broom.x = display.contentCenterX - 200 
        broom.y = display.contentCenterY - 50
        broom.id = "broom"
        sceneGroup:insert(broom)

        local broomText = display.newText( "1", display.contentCenterX - 200, display.contentCenterY, native.labelFont, 30 )
		broomText.id = "broom text"
		broomText:setFillColor( 0, 0, 0 )
		sceneGroup:insert(broomText)

        --parrot
        local parrot = display.newImageRect("assets/parrot.png", 75, 70)
        parrot.x = display.contentCenterX - 100 
        parrot.y = display.contentCenterY - 50
        parrot.id = "parrot"
        sceneGroup:insert(parrot)

        local parrotText = display.newText( "2", display.contentCenterX - 100, display.contentCenterY, native.labelFont, 30 )
		parrotText.id = "parrot text"
		parrotText:setFillColor( 0, 0, 0 )
		sceneGroup:insert(parrotText)

        --boat
        local boat = display.newImageRect("assets/boat.png", 75, 70)
        boat.x = display.contentCenterX  
        boat.y = display.contentCenterY - 50
        boat.id = "boat"
        sceneGroup:insert(boat)

        local boatText = display.newText( "3", display.contentCenterX, display.contentCenterY, native.labelFont, 30 )
		boatText.id = "boat text"
		boatText:setFillColor( 0, 0, 0 )
		sceneGroup:insert(boatText)

        --hat
        local hat = display.newImageRect("assets/hat.png", 75, 70)
        hat.x = display.contentCenterX + 100
        hat.y = display.contentCenterY - 50
        hat.id = "hat"
        sceneGroup:insert(hat)

        local hatText = display.newText( "4", display.contentCenterX + 100, display.contentCenterY, native.labelFont, 30 )
		hatText.id = "hat text"
		hatText:setFillColor( 0, 0, 0 )
		sceneGroup:insert(hatText)

        --apple
        local apple = display.newImageRect("assets/apple.png", 75, 70)
        apple.x = display.contentCenterX + 200 
        apple.y = display.contentCenterY - 50
        apple.id = "apple"
        sceneGroup:insert(apple)

        local appleText = display.newText( "5", display.contentCenterX + 200, display.contentCenterY, native.labelFont, 30 )
		appleText.id = "apple text"
		appleText:setFillColor( 0, 0, 0 )
		sceneGroup:insert(appleText)


		----textfields for players to enter their piece number
		--player 1
		local player1textfield = native.newTextField( display.contentCenterX - 100 , display.contentCenterY + 50, 50, 50 )
        player1textfield.id = "player 1 textField"
        sceneGroup:insert(player1textfield)
        local player1text = display.newText( player1..":" , display.contentCenterX -200, display.contentCenterY + 50, native.labelFont, 30 )
		player1text.id = "player 1 text"
		player1text:setFillColor( 0, 0, 0 )
		sceneGroup:insert(player1text)

		--player 2
        local player2textfield = native.newTextField( display.contentCenterX + 100 , display.contentCenterY +50, 50, 50 )
        player2textfield.id = "player 2 textField"
        sceneGroup:insert(player2textfield)
        local player2text = display.newText( player2..":" , display.contentCenterX, display.contentCenterY + 50, native.labelFont, 30 )
		player2text.id = "player 2 text"
		player2text:setFillColor( 0, 0, 0 )
		sceneGroup:insert(player2text)
		
		---start button

		local startButton = display.newImageRect("assets/start.png", 75, 70)
        startButton.x = display.contentCenterX 
        startButton.y = display.contentCenterY + 100
        startButton.id = "start button"
        sceneGroup:insert(startButton)

        --if start is touched 

        local function startButtonTouch( event )

        	--for player 1
        	local player1piece

        	if player1textfield.text == "1" then
        		player1piece = "broom"
        	elseif player1textfield.text == "2" then
        		player1piece = "parrot"
        	elseif player1textfield.text == "3" then
        		player1piece = "boat"
        	elseif player1textfield.text == "4" then
        		player1piece = "hat"
        	elseif player1textfield.text == "5" then
        		player1piece = "apple"
        	end

        	composer.setVariable( "player 1 piece", player1piece)

        	-- for player2
        	local player2piece

        	if player2textfield.text == "1" then
        		player2piece = "broom"
        	elseif player2textfield.text == "2" then
        		player2piece = "parrot"
        	elseif player2textfield.text == "3" then
        		player2piece = "boat"
        	elseif player2textfield.text == "4" then
        		player2piece = "hat"
        	elseif player2textfield.text == "5" then
        		player2piece = "apple"
        	end

        	composer.setVariable( "player 2 piece", player2piece)

        	local p1p = composer.getVariable( "player 1 piece")
        	local p2p = composer.getVariable( "player 2 piece")

        	--test

        	if p1p == "broom" then
        		print(p1p)
        	end
        	if p2p == "apple" then
	        	print(p2p)
	        end

	        timer.performWithDelay(500, showGameScene)

	        player1textfield:removeSelf()
	        player2textfield:removeSelf()

	        ---go to game scene
	        timer.performWithDelay(500, showPieceScene)

        end

        startButton:addEventListener("tap", startButtonTouch)

      
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
