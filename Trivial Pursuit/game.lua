---------------------
-----game scene where the game is played
-------------------------

local composer = require( "composer" )
 
local scene = composer.newScene()

-- create()
function scene:create( event )
 
  local sceneGroup = self.view
end

--show()
function scene:show( event )
 
    local sceneGroup = self.view
    local phase = event.phase
 
    if ( phase == "will" ) then

    	local background = display.newImageRect("assets/space.png", 600, 500)
		background.x = display.contentCenterX
		background.y = display.contentCenterY
		background.id = "background"
		sceneGroup:insert(background)


        ----function for when start is clicked


    elseif ( phase == "did" ) then

    	
    	--scores 
    	local player1score = 0
    	local player2score = 0

    	    	--player positons
    	local player1pos = 0
    	local player2pos = 0

    	--- player total questions 
    	local p1total = 0
    	local p2total = 0

    	-- player percent

    	local p1percent = 0
    	local p2percent = 0

    	--player total correct 

    	local p1correct = 0
    	local p2correct = 0

    	--player squares

    	local p1square = 16
    	local p2square = 16

    	----boxes to land on (there are 16, 4 of each colour)
    	--blue for sports
    	--green for history
    	--yellow for geography
    	--red for pop culture

    	local box1 = display.newImageRect("assets/blue.png", 50, 50)
        box1.x = display.contentCenterX - 200
        box1.y = display.contentCenterY - 50
        box1.id = "box1"
        sceneGroup:insert(box1)


    	local box2 = display.newImageRect("assets/green.jpg", 50, 50)
        box2.x = display.contentCenterX - 150
        box2.y = display.contentCenterY - 50
        box2.id = "box2"
        sceneGroup:insert(box2)

    	local box3 = display.newImageRect("assets/yellow.png", 50, 50)
        box3.x = display.contentCenterX - 100
        box3.y = display.contentCenterY - 50
        box3.id = "box3"
        sceneGroup:insert(box3)

    	local box4 = display.newImageRect("assets/red.jpg", 50, 50)
        box4.x = display.contentCenterX - 50
        box4.y = display.contentCenterY - 50
        box4.id = "box4"
        sceneGroup:insert(box4)

    	local box5 = display.newImageRect("assets/blue.png", 50, 50)
        box5.x = display.contentCenterX 
        box5.y = display.contentCenterY - 50
        box5.id = "box5"
        sceneGroup:insert(box5)


    	local box6 = display.newImageRect("assets/green.jpg", 50, 50)
        box6.x = display.contentCenterX + 50
        box6.y = display.contentCenterY - 50
        box6.id = "box6"
        sceneGroup:insert(box6)

    	local box7 = display.newImageRect("assets/yellow.png", 50, 50)
        box7.x = display.contentCenterX + 50
        box7.y = display.contentCenterY 
        box7.id = "box7"
        sceneGroup:insert(box7)

    	local box8 = display.newImageRect("assets/red.jpg", 50, 50)
        box8.x = display.contentCenterX + 50
        box8.y = display.contentCenterY + 50
        box8.id = "box8"
        sceneGroup:insert(box8)

    	local box9 = display.newImageRect("assets/blue.png", 50, 50)
        box9.x = display.contentCenterX + 50
        box9.y = display.contentCenterY + 100
        box9.id = "box9"
        sceneGroup:insert(box9)


    	local box10 = display.newImageRect("assets/green.jpg", 50, 50)
        box10.x = display.contentCenterX 
        box10.y = display.contentCenterY + 100
        box10.id = "box10"
        sceneGroup:insert(box10)

    	local box11 = display.newImageRect("assets/yellow.png", 50, 50)
        box11.x = display.contentCenterX - 50
        box11.y = display.contentCenterY + 100
        box11.id = "box11"
        sceneGroup:insert(box11)

    	local box12 = display.newImageRect("assets/red.jpg", 50, 50)
        box12.x = display.contentCenterX - 100
        box12.y = display.contentCenterY + 100
        box12.id = "box12"
        sceneGroup:insert(box12)

    	local box13 = display.newImageRect("assets/blue.png", 50, 50)
        box13.x = display.contentCenterX - 150
        box13.y = display.contentCenterY + 100
        box13.id = "box13"
        sceneGroup:insert(box13)


    	local box14 = display.newImageRect("assets/green.jpg", 50, 50)
        box14.x = display.contentCenterX - 200
        box14.y = display.contentCenterY + 100
        box14.id = "box14"
        sceneGroup:insert(box14)

    	local box15 = display.newImageRect("assets/yellow.png", 50, 50)
        box15.x = display.contentCenterX - 200
        box15.y = display.contentCenterY + 50
        box15.id = "box15"
        sceneGroup:insert(box15)

    	local box16 = display.newImageRect("assets/red.jpg", 50, 50)
        box16.x = display.contentCenterX - 200
        box16.y = display.contentCenterY 
        box16.id = "box16"
        sceneGroup:insert(box16)

        --player names
    	local player1 = composer.getVariable( "player 1" )
    	local player2 = composer.getVariable( "player 2" )

    	--player pieces

    	local p1piece = composer.getVariable( "player 1 piece" )
    	local p2piece = composer.getVariable( "player 2 piece" )
    	local player1piece
    	local player2piece

    	--player 1
    	if p1piece == "broom" then
			player1piece = display.newImageRect("assets/broom.png", 50, 45)
        	player1piece.x = display.contentCenterX - 250 
        	player1piece.y = display.contentCenterY - 50
        	player1piece.id = "player1piece"
        	sceneGroup:insert(player1piece)
        elseif p1piece == "parrot" then
        	player1piece = display.newImageRect("assets/parrot.png", 50, 45)
        	player1piece.x = display.contentCenterX - 250 
        	player1piece.y = display.contentCenterY - 50
        	player1piece.id = "player1piece"
        	sceneGroup:insert(player1piece)
        elseif p1piece == "boat" then
        	player1piece = display.newImageRect("assets/boat.png", 50, 45)
       		player1piece.x = display.contentCenterX  - 250
        	player1piece.y = display.contentCenterY - 50
        	player1piece.id = "player1piece"
        	sceneGroup:insert(player1piece)
        elseif p1piece == "hat" then
        	player1piece = display.newImageRect("assets/hat.png", 50, 45)
        	player1piece.x = display.contentCenterX - 250
        	player1piece.y = display.contentCenterY - 50
        	player1piece.id = "player1piece"
        	sceneGroup:insert(player1piece)
        elseif p1piece == "apple" then
        	player1piece = display.newImageRect("assets/apple.png", 50, 45)
        	player1piece.x = display.contentCenterX - 250 
        	player1piece.y = display.contentCenterY - 50
        	player1piece.id = "player1piece"
        	sceneGroup:insert(player1piece)
        end
            	
        --player 2
    	if p2piece == "broom" then
			player2piece = display.newImageRect("assets/broom.png", 50, 45)
        	player2piece.x = display.contentCenterX - 250 
        	player2piece.y = display.contentCenterY 
        	player2piece.id = "player2piece"
        	sceneGroup:insert(player2piece)
        elseif p2piece == "parrot" then
        	player2piece = display.newImageRect("assets/parrot.png", 50, 45)
        	player2piece.x = display.contentCenterX - 250 
        	player2piece.y = display.contentCenterY 
        	player2piece.id = "player2piece"
        	sceneGroup:insert(player2piece)
        elseif p2piece == "boat" then
        	player2piece = display.newImageRect("assets/boat.png", 50, 45)
       		player2piece.x = display.contentCenterX  - 250
        	player2piece.y = display.contentCenterY 
        	player2piece.id = "player2piece"
        	sceneGroup:insert(player2piece)
        elseif p2piece == "hat" then
        	player2piece = display.newImageRect("assets/hat.png", 50, 45)
        	player2piece.x = display.contentCenterX - 250
        	player2piece.y = display.contentCenterY 
        	player2piece.id = "player2piece"
        	sceneGroup:insert(player2piece)
        elseif p2piece == "apple" then
        	player2piece = display.newImageRect("assets/apple.png", 50, 45)
        	player2piece.x = display.contentCenterX - 250 
        	player2piece.y = display.contentCenterY 
        	player2piece.id = "player2piece"
        	sceneGroup:insert(player2piece)
        end


        ---boxes for stuff (questions will be displayed here + answer textfield and an enter button)

        --for answer
        local note = display.newImageRect("assets/note.png", 200, 200)
        note.x = display.contentCenterX + 180
        note.y = display.contentCenterY + 60
        note.id = "note"
        sceneGroup:insert(note) 

        -- for question
        local questionBox = display.newImageRect("assets/stat.png", 600, 30)
        questionBox.x = display.contentCenterX 
        questionBox.y = display.contentCenterY + 140
        questionBox.id = "questionBox"
        sceneGroup:insert(questionBox) 

        --for player stats
        --player1
        local player1stat = display.newImageRect("assets/stat.png", 150, 70)
        player1stat.x = display.contentCenterX - 200
        player1stat.y = display.contentCenterY - 120
        player1stat.id = "player1stat"
        sceneGroup:insert(player1stat) 
		-------------header   
        local p1text = display.newText( player1 , display.contentCenterX - 200, display.contentCenterY - 135, native.labelFont, 10 )
		p1text.id = "p1 text"
		p1text:setFillColor( 255, 255, 255 )
		sceneGroup:insert(p1text)
		--score text
		local p1score = display.newText( "Score:"..player1score , display.contentCenterX - 200, display.contentCenterY - 125, native.labelFont, 10 )
		p1score.id = "p1 score"
		p1score:setFillColor( 255, 255, 255 )
		sceneGroup:insert(p1score) 

		--percentage of correct
		local p1percentText = display.newText( p1percent.."% correct" , display.contentCenterX - 200, display.contentCenterY - 115, native.labelFont, 10 )
		p1percentText.id = "p1 sqyares text"
		p1percentText:setFillColor( 255, 255, 255 )
		sceneGroup:insert(p1percentText) 

		--how many squares left

		local p1squaresText = display.newText( p1square.." squares left!" , display.contentCenterX - 200, display.contentCenterY - 105, native.labelFont, 10 )
		p1squaresText.id = "p1 squares text"
		p1squaresText:setFillColor( 255, 255, 255 )
		sceneGroup:insert(p1squaresText)



        --player2
        local player2stat = display.newImageRect("assets/stat.png", 150, 70)
        player2stat.x = display.contentCenterX - 20
        player2stat.y = display.contentCenterY - 120
        player2stat.id = "player2stat"
        sceneGroup:insert(player2stat) 
        ---------header
        local p2text = display.newText( player2 , display.contentCenterX - 20, display.contentCenterY - 135, native.labelFont, 10 )
		p2text.id = "p2 text"
		p2text:setFillColor( 255, 255, 255 )
		sceneGroup:insert(p2text)        
		--score text
		local p2score = display.newText( "Score:"..player2score , display.contentCenterX - 20, display.contentCenterY - 125, native.labelFont, 10 )
		p2score.id = "p2 score"
		p2score:setFillColor( 255, 255, 255 )
		sceneGroup:insert(p2score)

		--percentage of correct
		local p2percentText = display.newText( p2percent.."% correct" , display.contentCenterX - 20, display.contentCenterY - 115, native.labelFont, 10 )
		p2percentText.id = "p2 sqyares text"
		p2percentText:setFillColor( 255, 255, 255 )
		sceneGroup:insert(p2percentText) 

		--how many squares left

		local p2squaresText = display.newText( p2square.." squares left!" , display.contentCenterX - 20, display.contentCenterY - 105, native.labelFont, 10 )
		p2squaresText.id = "p2 squares text"
		p2squaresText:setFillColor( 255, 255, 255 )
		sceneGroup:insert(p2squaresText) 

        --dice image (this chnages everytime someone rolls, this is just the image upon start)

        local dice = display.newImageRect("assets/dice.png", 80, 80)
        dice.x = display.contentCenterX - 120
        dice.y = display.contentCenterY + 30
        dice.id = "dice"
        sceneGroup:insert(dice)

        ---category legend

        local blueText = display.newText( "Sports", display.contentCenterX + 200, display.contentCenterY - 130, native.labelFont, 15 )
		blueText.id = "sports text"
		blueText:setFillColor( 0, 0, 255 )
		sceneGroup:insert(blueText) 

		local greenText = display.newText( "History", display.contentCenterX + 200, display.contentCenterY - 115, native.labelFont, 15 )
		greenText.id = "history text"
		greenText:setFillColor( 0, 255, 0 )
		sceneGroup:insert(greenText) 

		local yellowText = display.newText( "Sports", display.contentCenterX + 200, display.contentCenterY - 100, native.labelFont, 15 )
		yellowText.id = "geo text"
		yellowText:setFillColor( 255, 255, 0 )
		sceneGroup:insert(yellowText) 

		local redText = display.newText( "Pop Culture", display.contentCenterX + 200, display.contentCenterY - 85, native.labelFont, 15 )
		redText.id = "sports text"
		redText:setFillColor( 255, 0, 0 )
		sceneGroup:insert(redText)  

        ---roll button 
        local rollButton = display.newImageRect("assets/roll.png", 75, 70)
        rollButton.x = display.contentCenterX - 30
        rollButton.y = display.contentCenterY + 30
        rollButton.id = "roll button"
        sceneGroup:insert(rollButton) 


    	----current number to determine whose turn it is( + or - )
    	local currentNumber = 1
    	local currentPlayer

    	---text that says which players turn it is
		local currentPlayerText = display.newText( " ", display.contentCenterX + 180, display.contentCenterY - 200, native.labelFont, 15 )
		currentPlayerText.id = "currentPlayerText"
		currentPlayerText:setFillColor( 255, 255, 255 )
		sceneGroup:insert(currentPlayerText) 

		--question text
		local questionText = display.newText( " ", display.contentCenterX, display.contentCenterY + 140, native.labelFont, 15 )
		questionText.id = "questionText"
		questionText:setFillColor( 255, 255, 255 )
		sceneGroup:insert(questionText) 

		--answer textfield
		local answerTextField = native.newTextField( display.contentCenterX + 180, display.contentCenterY + 40, 100, 30 )
        answerTextField.id = "answer textField"
        sceneGroup:insert(answerTextField)
        ---enter button
        local enterButton = display.newImageRect("assets/enter.png", 75, 70)
        enterButton.x = display.contentCenterX + 180
        enterButton.y = display.contentCenterY + 100
        enterButton.id = "enter button"
        sceneGroup:insert(enterButton) 



    	------when roll is clicked
    	local function rollButtonTouch( event )

    		print(currentNumber)
    		currentNumber = currentNumber*-1

    		---random number gen for dice
    		local number = math.random(1,6)
    		print(number) --to test

    		---random number for questions 
    		local qNumber = math.random(1,4)
    		print(number)

    		---answer variable
    		local answer

    		--what the dice will show
    		if number == 1 then 
    			local dice1 = display.newImageRect("assets/1.png", 80, 80)
        		dice1.x = display.contentCenterX - 120
        		dice1.y = display.contentCenterY + 30
        		dice1.id = "dice1"
        		sceneGroup:insert(dice1)
        	elseif number == 2 then
    			local dice2 = display.newImageRect("assets/2.png", 80, 80)
        		dice2.x = display.contentCenterX - 120
        		dice2.y = display.contentCenterY + 30
        		dice2.id = "dice2"
        		sceneGroup:insert(dice2) 
        	elseif number == 3 then
    			local dice3 = display.newImageRect("assets/3.png", 80, 80)
        		dice3.x = display.contentCenterX - 120
        		dice3.y = display.contentCenterY + 30
        		dice3.id = "dice3"
        		sceneGroup:insert(dice3)
        	elseif number == 4 then 
        	    local dice4 = display.newImageRect("assets/4.png", 80, 80)
        		dice4.x = display.contentCenterX - 120
        		dice4.y = display.contentCenterY + 30
        		dice4.id = "dice4"
        		sceneGroup:insert(dice4)	
        	elseif number == 5 then
        		local dice5 = display.newImageRect("assets/5.png", 80, 80)
        		dice5.x = display.contentCenterX - 120
        		dice5.y = display.contentCenterY + 30
        		dice5.id = "dice5"
        		sceneGroup:insert(dice5)
        	elseif number == 6 then
        		local dice6 = display.newImageRect("assets/6.png", 80, 80)
        		dice6.x = display.contentCenterX - 120
        		dice6.y = display.contentCenterY + 30
        		dice6.id = "dice6"
        		sceneGroup:insert(dice6)
        	end

        	---player positions on board

        	--player1 (each box is associated with a number equivalent to players position number)
        	if currentNumber > 0 then
        		currentPlayer = player1
        		player1pos = player1pos + number
        		currentPlayerText.text = (player1)
        		p1square = 16 - player1pos
        		p1squaresText.text = (p1square.." squares left!")
        		p1total = p1total + 1
        		if player1pos == 1 then
        			player1piece.x = box1.x
        			player1piece.y = box1.y
        			local path = system.pathForFile( "sports.txt", system.DocumentsDirectory )

					local file, errorString = io.open( path, "r" )
	 
					local lines = {}
					if not file then
					print( "File error: " .. errorString )
					else
					for line in file:lines() do
					table.insert( lines, line)
					end
					io.close( file )
					end
					file = nil
					print(lines[qNumber])--to test
					questionText.text = (lines[qNumber])
					---answers
					local path = system.pathForFile( "sportsAns.txt", system.DocumentsDirectory )

					local file, errorString = io.open( path, "r" )
	 
					local lines = {}
					if not file then
					print( "File error: " .. errorString )
					else
					for line in file:lines() do
					table.insert( lines, line)
					end
					io.close( file )
					end
					file = nil
					print(lines[qNumber])--to test
					answer = (lines[qNumber])

					local function enterButtonTouch( event )
					
						print("ok")


						local path = system.pathForFile( "sportsAns.txt", system.DocumentsDirectory )

						local file, errorString = io.open( path, "r" )
		 
						local lines = {}
						if not file then
						print( "File error: " .. errorString )
						else
						for line in file:lines() do
						table.insert( lines, line)
						end
						io.close( file )
						end
						file = nil
						print(lines[qNumber])--to test
						answer = (lines[qNumber])

						if answerTextField.text == answer then
							player1score = player1score + 10
							p1score.text = ("Score:"..player1score)
							questionText.text = "You're Right!"
							p1correct = p1correct + 1
							p1percent = (p1correct/p1total)*100
							p1percentText.text = (p1percent.."% correct")
						else 
							questionText.text = "Incorrect" or "Better luck next time!" or "No Point!" 
							p1percent = (p1correct/p1total)*100
							p1percentText.text = (p1percent.."% correct")

						end




					end

					enterButton:addEventListener( "tap", enterButtonTouch)
					


        		elseif player1pos == 2 then
        			player1piece.x = box2.x
        			player1piece.y = box2.y
        			local path = system.pathForFile( "history.txt", system.DocumentsDirectory )

					local file, errorString = io.open( path, "r" )
	 
					local lines = {}
					if not file then
					print( "File error: " .. errorString )
					else
					for line in file:lines() do
					table.insert( lines, line)
					end
					io.close( file )
					end
					file = nil
					print(lines[qNumber])--to test
					questionText.text = (lines[qNumber])

					local function enterButtonTouch( event )
					
						print("ok")

						local path = system.pathForFile( "historyAns.txt", system.DocumentsDirectory )

						local file, errorString = io.open( path, "r" )
		 
						local lines = {}
						if not file then
						print( "File error: " .. errorString )
						else
						for line in file:lines() do
						table.insert( lines, line)
						end
						io.close( file )
						end
						file = nil
						print(lines[qNumber])--to test
						answer = (lines[qNumber])

						if answerTextField.text == answer then
							player1score = player1score + 10
							p1score.text = ("Score:"..player1score)
							questionText.text = "You're Right!"
							p1correct = p1correct + 1
							p1percent = (p1correct/p1total)*100
							p1percentText.text = (p1percent.."% correct")
						else 
							questionText.text =  "Better luck next time!" or "No Point!" 
							p1percent = (p1correct/p1total)*100
							p1percentText.text = (p1percent.."% correct")

						end

					end

					enterButton:addEventListener( "tap", enterButtonTouch)
				


        		elseif player1pos == 3 then
        			player1piece.x = box3.x
        			player1piece.y = box3.y
        			local path = system.pathForFile( "geo.txt", system.DocumentsDirectory )

					local file, errorString = io.open( path, "r" )
	 
					local lines = {}
					if not file then
					print( "File error: " .. errorString )
					else
					for line in file:lines() do
					table.insert( lines, line)
					end
					io.close( file )
					end
					file = nil
					print(lines[qNumber])--to test
					questionText.text = (lines[qNumber])

					local function enterButtonTouch( event )
					
						print("ok")
						local path = system.pathForFile( "geoAns.txt", system.DocumentsDirectory )

						local file, errorString = io.open( path, "r" )
		 
						local lines = {}
						if not file then
						print( "File error: " .. errorString )
						else
						for line in file:lines() do
						table.insert( lines, line)
						end
						io.close( file )
						end
						file = nil
						print(lines[qNumber])--to test
						answer = (lines[qNumber])

						if answerTextField.text == answer then
							player1score = player1score + 10
							p1score.text = ("Score:"..player1score)
							questionText.text = "You're Right!"
							p1correct = p1correct + 1
							p1percent = (p1correct/p1total)*100
							p1percentText.text = (p1percent.."% correct")
						else 
							questionText.text = "No Point!" 
							p1percent = (p1correct/p1total)*100
							p1percentText.text = (p1percent.."% correct")

						end

					end

					enterButton:addEventListener( "tap", enterButtonTouch)
					

			


        		elseif player1pos == 4 then
        			player1piece.x = box4.x
        			player1piece.y = box4.y
        			local path = system.pathForFile( "popCulture.txt", system.DocumentsDirectory )

					local file, errorString = io.open( path, "r" )
	 
					local lines = {}
					if not file then
					print( "File error: " .. errorString )
					else
					for line in file:lines() do
					table.insert( lines, line)
					end
					io.close( file )
					end
					file = nil
					print(lines[qNumber])--to test
					questionText.text = (lines[qNumber])

					local function enterButtonTouch( event )
					
						print("ok")
						local path = system.pathForFile( "popCultureAns.txt", system.DocumentsDirectory )

						local file, errorString = io.open( path, "r" )
		 
						local lines = {}
						if not file then
						print( "File error: " .. errorString )
						else
						for line in file:lines() do
						table.insert( lines, line)
						end
						io.close( file )
						end
						file = nil
						print(lines[qNumber])--to test
						answer = (lines[qNumber])

						if answerTextField.text == answer then
							player1score = player1score + 10
							p1score.text = ("Score:"..player1score)
							questionText.text = "You're Right!"
							p1correct = p1correct + 1
							p1percent = (p1correct/p1total)*100
							p1percentText.text = (p1percent.."% correct")
						else 
							questionText.text = "Incorrect" or "Better luck next time!" or "No Point!" 
							p1percent = (p1correct/p1total)*100
							p1percentText.text = (p1percent.."% correct")

						end

					end

					enterButton:addEventListener( "tap", enterButtonTouch)


        		elseif player1pos == 5 then
        			player1piece.x = box5.x
        			player1piece.y = box5.y
        			local path = system.pathForFile( "sports.txt", system.DocumentsDirectory )

					local file, errorString = io.open( path, "r" )
	 
					local lines = {}
					if not file then
					print( "File error: " .. errorString )
					else
					for line in file:lines() do
					table.insert( lines, line)
					end
					io.close( file )
					end
					file = nil
					print(lines[qNumber])--to test
					questionText.text = (lines[qNumber])

					local function enterButtonTouch( event )
					
						print("ok")

						local path = system.pathForFile( "sportsAns.txt", system.DocumentsDirectory )

						local file, errorString = io.open( path, "r" )
		 
						local lines = {}
						if not file then
						print( "File error: " .. errorString )
						else
						for line in file:lines() do
						table.insert( lines, line)
						end
						io.close( file )
						end
						file = nil
						print(lines[qNumber])--to test
						answer = (lines[qNumber])

						if answerTextField.text == answer then
							player1score = player1score + 10
							p1score.text = ("Score:"..player1score)
							questionText.text = "You're Right!"
							p1correct = p1correct + 1
							p1percent = (p1correct/p1total)*100
							p1percentText.text = (p1percent.."% correct")
						else 
							questionText.text =  "Better luck next time!" or "No Point!" 
							p1percent = (p1correct/p1total)*100
							p1percentText.text = (p1percent.."% correct")

						end

					end

					enterButton:addEventListener( "tap", enterButtonTouch)




        		elseif player1pos == 6 then
        			player1piece.x = box6.x
        			player1piece.y = box6.y
        			local path = system.pathForFile( "history.txt", system.DocumentsDirectory )

					local file, errorString = io.open( path, "r" )
	 
					local lines = {}
					if not file then
					print( "File error: " .. errorString )
					else
					for line in file:lines() do
					table.insert( lines, line)
					end
					io.close( file )
					end
					file = nil
					print(lines[qNumber])--to test
					questionText.text = (lines[qNumber]) local function enterButtonTouch( event )
					
						print("ok")
						local path = system.pathForFile( "historyAns.txt", system.DocumentsDirectory )

						local file, errorString = io.open( path, "r" )
		 
						local lines = {}
						if not file then
						print( "File error: " .. errorString )
						else
						for line in file:lines() do
						table.insert( lines, line)
						end
						io.close( file )
						end
						file = nil
						print(lines[qNumber])--to test
						answer = (lines[qNumber])

						if answerTextField.text == answer then
							player1score = player1score + 10
							p1score.text = ("Score:"..player1score)
							questionText.text = "You're Right!"
							p1correct = p1correct + 1
							p1percent = (p1correct/p1total)*100
							p1percentText.text = (p1percent.."% correct")
						else 
							questionText.text = "Incorrect" or "Better luck next time!" or "No Point!" 
							p1percent = (p1correct/p1total)*100
							p1percentText.text = (p1percent.."% correct")

						end
					end

					enterButton:addEventListener( "tap", enterButtonTouch)




        		elseif player1pos == 7 then
        			player1piece.x = box7.x
        			player1piece.y = box7.y
        			local path = system.pathForFile( "geo.txt", system.DocumentsDirectory )

					local file, errorString = io.open( path, "r" )
	 
					local lines = {}
					if not file then
					print( "File error: " .. errorString )
					else
					for line in file:lines() do
					table.insert( lines, line)
					end
					io.close( file )
					end
					file = nil
					print(lines[qNumber])--to test
					questionText.text = (lines[qNumber])


					local function enterButtonTouch( event )
					
						print("ok")

						local path = system.pathForFile( "geoAns.txt", system.DocumentsDirectory )

						local file, errorString = io.open( path, "r" )
		 
						local lines = {}
						if not file then
						print( "File error: " .. errorString )
						else
						for line in file:lines() do
						table.insert( lines, line)
						end
						io.close( file )
						end
						file = nil
						print(lines[qNumber])--to test
						answer = (lines[qNumber])

						if answerTextField.text == answer then
							player1score = player1score + 10
							p1score.text = ("Score:"..player1score)
							questionText.text = "You're Right!"
							p1correct = p1correct + 1
							p1percent = (p1correct/p1total)*100
							p1percentText.text = (p1percent.."% correct")
						else 
							questionText.text = "Incorrect" or "Better luck next time!" or "No Point!" 
							p1percent = (p1correct/p1total)*100
							p1percentText.text = (p1percent.."% correct")

						end

					end

					enterButton:addEventListener( "tap", enterButtonTouch)



        		elseif player1pos == 8 then
        			player1piece.x = box8.x
        			player1piece.y = box8.y
        			local path = system.pathForFile( "popCulture.txt", system.DocumentsDirectory )

					local file, errorString = io.open( path, "r" )
	 
					local lines = {}
					if not file then
					print( "File error: " .. errorString )
					else
					for line in file:lines() do
					table.insert( lines, line)
					end
					io.close( file )
					end
					file = nil
					print(lines[qNumber])--to test
					questionText.text = (lines[qNumber])

					local function enterButtonTouch( event )
					
						print("ok")

						local path = system.pathForFile( "popCultureAns.txt", system.DocumentsDirectory )

						local file, errorString = io.open( path, "r" )
		 
						local lines = {}
						if not file then
						print( "File error: " .. errorString )
						else
						for line in file:lines() do
						table.insert( lines, line)
						end
						io.close( file )
						end
						file = nil
						print(lines[qNumber])--to test
						answer = (lines[qNumber])

						if answerTextField.text == answer then
							player1score = player1score + 10
							p1score.text = ("Score:"..player1score)
							questionText.text = "You're Right!"
							p1correct = p1correct + 1
							p1percent = (p1correct/p1total)*100
							p1percentText.text = (p1percent.."% correct")
						else 
							questionText.text = "Incorrect" or "Better luck next time!" or "No Point!" 
							p1percent = (p1correct/p1total)*100
							p1percentText.text = (p1percent.."% correct")

						end
					end

					enterButton:addEventListener( "tap", enterButtonTouch)



        		elseif player1pos == 9 then
        			player1piece.x = box9.x
        			player1piece.y = box9.y
        			local path = system.pathForFile( "sports.txt", system.DocumentsDirectory )

					local file, errorString = io.open( path, "r" )
	 
					local lines = {}
					if not file then
					print( "File error: " .. errorString )
					else
					for line in file:lines() do
					table.insert( lines, line)
					end
					io.close( file )
					end
					file = nil
					print(lines[qNumber])--to test
					questionText.text = (lines[qNumber])

					local function enterButtonTouch( event )
					
						print("ok")

						local path = system.pathForFile( "sportsAns.txt", system.DocumentsDirectory )

						local file, errorString = io.open( path, "r" )
		 
						local lines = {}
						if not file then
						print( "File error: " .. errorString )
						else
						for line in file:lines() do
						table.insert( lines, line)
						end
						io.close( file )
						end
						file = nil
						print(lines[qNumber])--to test
						answer = (lines[qNumber])

						if answerTextField.text == answer then
							player1score = player1score + 10
							p1score.text = ("Score:"..player1score)
							questionText.text = "You're Right!"
							p1correct = p1correct + 1
							p1percent = (p1correct/p1total)*100
							p1percentText.text = (p1percent.."% correct")
						else 
							questionText.text = "Incorrect" or "Better luck next time!" or "No Point!" 
							p1percent = (p1correct/p1total)*100
							p1percentText.text = (p1percent.."% correct")

						end

					end

					enterButton:addEventListener( "tap", enterButtonTouch)



        		elseif player1pos == 10 then
        			player1piece.x = box10.x
        			player1piece.y = box10.y
        			local path = system.pathForFile( "history.txt", system.DocumentsDirectory )

					local file, errorString = io.open( path, "r" )
	 
					local lines = {}
					if not file then
					print( "File error: " .. errorString )
					else
					for line in file:lines() do
					table.insert( lines, line)
					end
					io.close( file )
					end
					file = nil
					print(lines[qNumber])--to test
					questionText.text = (lines[qNumber])

					local function enterButtonTouch( event )
					
						print("ok")

						local path = system.pathForFile( "historyAns.txt", system.DocumentsDirectory )

						local file, errorString = io.open( path, "r" )
		 
						local lines = {}
						if not file then
						print( "File error: " .. errorString )
						else
						for line in file:lines() do
						table.insert( lines, line)
						end
						io.close( file )
						end
						file = nil
						print(lines[qNumber])--to test
						answer = (lines[qNumber])

						if answerTextField.text == answer then
							player1score = player1score + 10
							p1score.text = ("Score:"..player1score)
							questionText.text = "You're Right!"
							p1correct = p1correct + 1
							p1percent = (p1correct/p1total)*100
							p1percentText.text = (p1percent.."% correct")
						else 
							questionText.text = "Incorrect" or "Better luck next time!" or "No Point!" 
							p1percent = (p1correct/p1total)*100
							p1percentText.text = (p1percent.."% correct")

						end
					end

					enterButton:addEventListener( "tap", enterButtonTouch)


        		elseif player1pos == 11 then
        			player1piece.x = box11.x
        			player1piece.y = box11.y
        			local path = system.pathForFile( "geo.txt", system.DocumentsDirectory )

					local file, errorString = io.open( path, "r" )
	 
					local lines = {}
					if not file then
					print( "File error: " .. errorString )
					else
					for line in file:lines() do
					table.insert( lines, line)
					end
					io.close( file )
					end
					file = nil
					print(lines[qNumber])--to test
					questionText.text = (lines[qNumber])

					local function enterButtonTouch( event )
					
						print("ok")

						local path = system.pathForFile( "geoAns.txt", system.DocumentsDirectory )

						local file, errorString = io.open( path, "r" )
		 
						local lines = {}
						if not file then
						print( "File error: " .. errorString )
						else
						for line in file:lines() do
						table.insert( lines, line)
						end
						io.close( file )
						end
						file = nil
						print(lines[qNumber])--to test
						answer = (lines[qNumber])

						if answerTextField.text == answer then
							player1score = player1score + 10
							p1score.text = ("Score:"..player1score)
							questionText.text = "You're Right!"
							p1correct = p1correct + 1
							p1percent = (p1correct/p1total)*100
							p1percentText.text = (p1percent.."% correct")
						else 
							questionText.text = "Incorrect" or "Better luck next time!" or "No Point!" 
							p1percent = (p1correct/p1total)*100
							p1percentText.text = (p1percent.."% correct")

						end
					end


					enterButton:addEventListener( "tap", enterButtonTouch)


        		elseif player1pos == 12 then
        			player1piece.x = box12.x
        			player1piece.y = box12.y
        			local path = system.pathForFile( "popCulture.txt", system.DocumentsDirectory )

					local file, errorString = io.open( path, "r" )
	 
					local lines = {}
					if not file then
					print( "File error: " .. errorString )
					else
					for line in file:lines() do
					table.insert( lines, line)
					end
					io.close( file )
					end
					file = nil
					print(lines[qNumber])--to test
					questionText.text = (lines[qNumber])

					local function enterButtonTouch( event )
					
						print("ok")

						local path = system.pathForFile( "popCultureAns.txt", system.DocumentsDirectory )

						local file, errorString = io.open( path, "r" )
		 
						local lines = {}
						if not file then
						print( "File error: " .. errorString )
						else
						for line in file:lines() do
						table.insert( lines, line)
						end
						io.close( file )
						end
						file = nil
						print(lines[qNumber])--to test
						answer = (lines[qNumber])

						if answerTextField.text == answer then
							player1score = player1score + 10
							p1score.text = ("Score:"..player1score)
							questionText.text = "You're Right!"
							p1correct = p1correct + 1
							p1percent = (p1correct/p1total)*100
							p1percentText.text = (p1percent.."% correct")
						else 
							questionText.text = "Incorrect" or "Better luck next time!" or "No Point!" 
							p1percent = (p1correct/p1total)*100
							p1percentText.text = (p1percent.."% correct")

						end

					end

					enterButton:addEventListener( "tap", enterButtonTouch)


        		elseif player1pos == 13 then
        			player1piece.x = box13.x
        			player1piece.y = box13.y
        			local path = system.pathForFile( "sports.txt", system.DocumentsDirectory )

					local file, errorString = io.open( path, "r" )
	 
					local lines = {}
					if not file then
					print( "File error: " .. errorString )
					else
					for line in file:lines() do
					table.insert( lines, line)
					end
					io.close( file )
					end
					file = nil
					print(lines[qNumber])--to test
					questionText.text = (lines[qNumber])

					local function enterButtonTouch( event )
					
						print("ok")

						local path = system.pathForFile( "sportsAns.txt", system.DocumentsDirectory )

						local file, errorString = io.open( path, "r" )
		 
						local lines = {}
						if not file then
						print( "File error: " .. errorString )
						else
						for line in file:lines() do
						table.insert( lines, line)
						end
						io.close( file )
						end
						file = nil
						print(lines[qNumber])--to test
						answer = (lines[qNumber])

						if answerTextField.text == answer then
							player1score = player1score + 10
							p1score.text = ("Score:"..player1score)
							questionText.text = "You're Right!"
							p1correct = p1correct + 1
							p1percent = (p1correct/p1total)*100
							p1percentText.text = (p1percent.."% correct")
						else 
							questionText.text = "Incorrect" or "Better luck next time!" or "No Point!" 
							p1percent = (p1correct/p1total)*100
							p1percentText.text = (p1percent.."% correct")

						end

					end

					enterButton:addEventListener( "tap", enterButtonTouch)


        		elseif player1pos == 14 then
        			player1piece.x = box14.x
        			player1piece.y = box14.y
        			local path = system.pathForFile( "history.txt", system.DocumentsDirectory )

					local file, errorString = io.open( path, "r" )
	 
					local lines = {}
					if not file then
					print( "File error: " .. errorString )
					else
					for line in file:lines() do
					table.insert( lines, line)
					end
					io.close( file )
					end
					file = nil
					print(lines[qNumber])--to test
					questionText.text = (lines[qNumber])

					local function enterButtonTouch( event )
					
						print("ok")
						local path = system.pathForFile( "historyAns.txt", system.DocumentsDirectory )

						local file, errorString = io.open( path, "r" )
		 
						local lines = {}
						if not file then
						print( "File error: " .. errorString )
						else
						for line in file:lines() do
						table.insert( lines, line)
						end
						io.close( file )
						end
						file = nil
						print(lines[qNumber])--to test
						answer = (lines[qNumber])

						if answerTextField.text == answer then
							player1score = player1score + 10
							p1score.text = ("Score:"..player1score)
							questionText.text = "You're Right!"
							p1correct = p1correct + 1
							p1percent = (p1correct/p1total)*100
							p1percentText.text = (p1percent.."% correct")
						else 
							questionText.text = "Incorrect" or "Better luck next time!" or "No Point!" 
							p1percent = (p1correct/p1total)*100
							p1percentText.text = (p1percent.."% correct")

						end

					end

					enterButton:addEventListener( "tap", enterButtonTouch)


        		elseif player1pos == 15 then
        			player1piece.x = box15.x
        			player1piece.y = box15.y
        			local path = system.pathForFile( "geo.txt", system.DocumentsDirectory )

					local file, errorString = io.open( path, "r" )
	 
					local lines = {}
					if not file then
					print( "File error: " .. errorString )
					else
					for line in file:lines() do
					table.insert( lines, line)
					end
					io.close( file )
					end
					file = nil
					print(lines[qNumber])--to test
					questionText.text = (lines[qNumber])

					local function enterButtonTouch( event )
					
						print("ok")

						local path = system.pathForFile( "geoAns.txt", system.DocumentsDirectory )

						local file, errorString = io.open( path, "r" )
		 
						local lines = {}
						if not file then
						print( "File error: " .. errorString )
						else
						for line in file:lines() do
						table.insert( lines, line)
						end
						io.close( file )
						end
						file = nil
						print(lines[qNumber])--to test
						answer = (lines[qNumber])

						if answerTextField.text == answer then
							player1score = player1score + 10
							p1score.text = ("Score:"..player1score)
							questionText.text = "You're Right!"
							p1correct = p1correct + 1
							p1percent = (p1correct/p1total)*100
							p1percentText.text = (p1percent.."% correct")
						else 
							questionText.text = "Incorrect" or "Better luck next time!" or "No Point!" 
							p1percent = (p1correct/p1total)*100
							p1percentText.text = (p1percent.."% correct")

						end
					end

					enterButton:addEventListener( "tap", enterButtonTouch)


        		elseif player1pos == 16 then
        			player1piece.x = box16.x
        			player1piece.y = box16.y
        			local path = system.pathForFile( "popCulture.txt", system.DocumentsDirectory )

					local file, errorString = io.open( path, "r" )
	 
					local lines = {}
					if not file then
					print( "File error: " .. errorString )
					else
					for line in file:lines() do
					table.insert( lines, line)
					end
					io.close( file )
					end
					file = nil
					print(lines[qNumber])--to test
					questionText.text = (lines[qNumber])

					local function enterButtonTouch( event )
					
						print("ok")
						local path = system.pathForFile( "popCultureAns.txt", system.DocumentsDirectory )

						local file, errorString = io.open( path, "r" )
		 
						local lines = {}
						if not file then
						print( "File error: " .. errorString )
						else
						for line in file:lines() do
						table.insert( lines, line)
						end
						io.close( file )
						end
						file = nil
						print(lines[qNumber])--to test
						answer = (lines[qNumber])

						if answerTextField.text == answer then
							player1score = player1score + 10
							p1score.text = ("Score:"..player1score)
							questionText.text = "You're Right!"
							p1correct = p1correct + 1
							p1percent = (p1correct/p1total)*100
							p1percentText.text = (p1percent.."% correct")
						else 
							questionText.text = "Incorrect" or "Better luck next time!" or "No Point!" 
							p1percent = (p1correct/p1total)*100
							p1percentText.text = (p1percent.."% correct")

						end
					end

					enterButton:addEventListener( "tap", enterButtonTouch)


				elseif player1pos > 16 then
					local path = system.pathForFile( "win.txt", system.DocumentsDirectory )

					local file, errorString = io.open( path, "r" )
	 
					local lines = {}
					if not file then
					print( "File error: " .. errorString )
					else
					for line in file:lines() do
					table.insert( lines, line)
					end
					io.close( file )
					end
					file = nil
					print(lines[qNumber])--to test
					questionText.text = (lines[qNumber])

					local function enterButtonTouch( event )
					
						print("ok")
						local path = system.pathForFile( "winAns.txt", system.DocumentsDirectory )

						local file, errorString = io.open( path, "r" )
		 
						local lines = {}
						if not file then
						print( "File error: " .. errorString )
						else
						for line in file:lines() do
						table.insert( lines, line)
						end
						io.close( file )
						end
						file = nil
						print(lines[qNumber])--to test
						answer = (lines[qNumber])

						if answerTextField.text == answer then
							local endBox = display.newRect( display.contentCenterX, display.contentCenterY, 300, 200)
        					endBox:setFillColor( 255, 255, 255)
        					sceneGroup:insert(endBox)
        					local winText = display.newText( player2.." Wins!", display.contentCenterX, display.contentCenterY, native.labelFont, 30 )
							winText.id = "winText"
							winText:setFillColor( 0, 0, 0 )
							sceneGroup:insert(winText) 
						else 
							questionText.text = "Try Again!"
						end

					end

					enterButton:addEventListener( "tap", enterButtonTouch)
					

        		end


        		print("player1:"..player1pos)

        	end
        		



        		--------------------------------------------------------------------
        		--
        		--player2
        		---
        		-------------------------------------------------------
        	if currentNumber < 0 then
        		currentPlayer = player2
        		player2pos = player2pos + number
        		currentPlayerText.text = (player2.."'s turn")
        		p2square = 16 - player2pos
        		p2squaresText.text = ( p2square.." squares left!" )
        		p2total = p2total + 1

        		if player2pos == 1 then
        			player2piece.x = box1.x
        			player2piece.y = box1.y
        			local path = system.pathForFile( "sports.txt", system.DocumentsDirectory )

					local file, errorString = io.open( path, "r" )
	 
					local lines = {}
					if not file then
					print( "File error: " .. errorString )
					else
					for line in file:lines() do
					table.insert( lines, line)
					end
					io.close( file )
					end
					file = nil
					print(lines[qNumber])--to test
					questionText.text = (lines[qNumber])
					---answers
					
					local function enterButtonTouch( event )
					
						print("ok")


						local path = system.pathForFile( "sportsAns.txt", system.DocumentsDirectory )

						local file, errorString = io.open( path, "r" )
		 
						local lines = {}
						if not file then
						print( "File error: " .. errorString )
						else
						for line in file:lines() do
						table.insert( lines, line)
						end
						io.close( file )
						end
						file = nil
						print(lines[qNumber])--to test
						answer = (lines[qNumber])

						if answerTextField.text == answer then
							player2score = player2score + 10
							p2score.text = ("Score:"..player2score)
							questionText.text = "You're Right!"
							p2correct = p2correct + 1
							p2percent = (p2correct/p2total)*100
							p2percentText.text = (p2percent.."% correct")
						else 
							questionText.text = "Incorrect" or "Better luck next time!" or "No Point!" 
							p2percent = (p2correct/p2total)*100
							p2percentText.text = (p2percent.."% correct")



						end


					end

					enterButton:addEventListener( "tap", enterButtonTouch)
					


        		elseif player2pos == 2 then
        			player2piece.x = box2.x
        			player2piece.y = box2.y
        			local path = system.pathForFile( "history.txt", system.DocumentsDirectory )

					local file, errorString = io.open( path, "r" )
	 
					local lines = {}
					if not file then
					print( "File error: " .. errorString )
					else
					for line in file:lines() do
					table.insert( lines, line)
					end
					io.close( file )
					end
					file = nil
					print(lines[qNumber])--to test
					questionText.text = (lines[qNumber])

					local function enterButtonTouch( event )
					
						print("ok")

						local path = system.pathForFile( "historyAns.txt", system.DocumentsDirectory )

						local file, errorString = io.open( path, "r" )
		 
						local lines = {}
						if not file then
						print( "File error: " .. errorString )
						else
						for line in file:lines() do
						table.insert( lines, line)
						end
						io.close( file )
						end
						file = nil
						print(lines[qNumber])--to test
						answer = (lines[qNumber])

						if answerTextField.text == answer then
							player2score = player2score + 10
							p2score.text = ("Score:"..player2score)
							questionText.text = "You're Right!"
							p2correct = p2correct + 1
							p2percent = (p2correct/p2total)*100
							p2percentText.text = (p2percent.."% correct")
						else 
							questionText.text = "Incorrect" or "Better luck next time!" or "No Point!" 
							p2percent = (p2correct/p2total)*100
							p2percentText.text = (p2percent.."% correct")

						end


					end

					enterButton:addEventListener( "tap", enterButtonTouch)
				


        		elseif player2pos == 3 then
        			player2piece.x = box3.x
        			player2piece.y = box3.y
        			local path = system.pathForFile( "geo.txt", system.DocumentsDirectory )

					local file, errorString = io.open( path, "r" )
	 
					local lines = {}
					if not file then
					print( "File error: " .. errorString )
					else
					for line in file:lines() do
					table.insert( lines, line)
					end
					io.close( file )
					end
					file = nil
					print(lines[qNumber])--to test
					questionText.text = (lines[qNumber])

					local function enterButtonTouch( event )
					
						print("ok")
						local path = system.pathForFile( "geoAns.txt", system.DocumentsDirectory )

						local file, errorString = io.open( path, "r" )
		 
						local lines = {}
						if not file then
						print( "File error: " .. errorString )
						else
						for line in file:lines() do
						table.insert( lines, line)
						end
						io.close( file )
						end
						file = nil
						print(lines[qNumber])--to test
						answer = (lines[qNumber])

						if answerTextField.text == answer then
							player2score = player2score + 10
							p2score.text = ("Score:"..player2score)
							questionText.text = "You're Right!"
							p2correct = p2correct + 1
							p2percent = (p2correct/p2total)*100
							p2percentText.text = (p2percent.."% correct")
						else 
							questionText.text = "Incorrect" or "Better luck next time!" or "No Point!" 
							p2percent = (p2correct/p2total)*100
							p2percentText.text = (p2percent.."% correct")

						end

					end

					enterButton:addEventListener( "tap", enterButtonTouch)
					

			


        		elseif player2pos == 4 then
        			player2piece.x = box4.x
        			player2piece.y = box4.y
        			local path = system.pathForFile( "popCulture.txt", system.DocumentsDirectory )

					local file, errorString = io.open( path, "r" )
	 
					local lines = {}
					if not file then
					print( "File error: " .. errorString )
					else
					for line in file:lines() do
					table.insert( lines, line)
					end
					io.close( file )
					end
					file = nil
					print(lines[qNumber])--to test
					questionText.text = (lines[qNumber])

					local function enterButtonTouch( event )
					
						print("ok")
						local path = system.pathForFile( "popCultureAns.txt", system.DocumentsDirectory )

						local file, errorString = io.open( path, "r" )
		 
						local lines = {}
						if not file then
						print( "File error: " .. errorString )
						else
						for line in file:lines() do
						table.insert( lines, line)
						end
						io.close( file )
						end
						file = nil
						print(lines[qNumber])--to test
						answer = (lines[qNumber])

						if answerTextField.text == answer then
							player2score = player2score + 10
							p2score.text = ("Score:"..player2score)
							questionText.text = "You're Right!"
							p2correct = p2correct + 1
							p2percent = (p2correct/p2total)*100
							p2percentText.text = (p2percent.."% correct")
						else 
							questionText.text = "Incorrect" or "Better luck next time!" or "No Point!" 
							p2percent = (p2correct/p2total)*100
							p2percentText.text = (p2percent.."% correct")

						end

					end

					enterButton:addEventListener( "tap", enterButtonTouch)


        		elseif player2pos == 5 then
        			player2piece.x = box5.x
        			player2piece.y = box5.y
        			local path = system.pathForFile( "sports.txt", system.DocumentsDirectory )

					local file, errorString = io.open( path, "r" )
	 
					local lines = {}
					if not file then
					print( "File error: " .. errorString )
					else
					for line in file:lines() do
					table.insert( lines, line)
					end
					io.close( file )
					end
					file = nil
					print(lines[qNumber])--to test
					questionText.text = (lines[qNumber])

					local function enterButtonTouch( event )
					
						print("ok")

						local path = system.pathForFile( "sportsAns.txt", system.DocumentsDirectory )

						local file, errorString = io.open( path, "r" )
		 
						local lines = {}
						if not file then
						print( "File error: " .. errorString )
						else
						for line in file:lines() do
						table.insert( lines, line)
						end
						io.close( file )
						end
						file = nil
						print(lines[qNumber])--to test
						answer = (lines[qNumber])

						if answerTextField.text == answer then
							player2score = player2score + 10
							p2score.text = ("Score:"..player2score)
							questionText.text = "You're Right!"
							p2correct = p2correct + 1
							p2percent = (p2correct/p2total)*100
							p2percentText.text = (p2percent.."% correct")
						else 
							questionText.text = "Incorrect" or "Better luck next time!" or "No Point!" 
							p2percent = (p2correct/p2total)*100
							p2percentText.text = (p2percent.."% correct")

						end
					end

					enterButton:addEventListener( "tap", enterButtonTouch)




        		elseif player2pos == 6 then
        			player2piece.x = box6.x
        			player2piece.y = box6.y
        			local path = system.pathForFile( "history.txt", system.DocumentsDirectory )

					local file, errorString = io.open( path, "r" )
	 
					local lines = {}
					if not file then
					print( "File error: " .. errorString )
					else
					for line in file:lines() do
					table.insert( lines, line)
					end
					io.close( file )
					end
					file = nil
					print(lines[qNumber])--to test
					questionText.text = (lines[qNumber]) local function enterButtonTouch( event )
					
						print("ok")
						local path = system.pathForFile( "historyAns.txt", system.DocumentsDirectory )

						local file, errorString = io.open( path, "r" )
		 
						local lines = {}
						if not file then
						print( "File error: " .. errorString )
						else
						for line in file:lines() do
						table.insert( lines, line)
						end
						io.close( file )
						end
						file = nil
						print(lines[qNumber])--to test
						answer = (lines[qNumber])

						if answerTextField.text == answer then
							player2score = player2score + 10
							p2score.text = ("Score:"..player2score)
							questionText.text = "You're Right!"
							p2correct = p2correct + 1
							p2percent = (p2correct/p2total)*100
							p2percentText.text = (p2percent.."% correct")
						else 
							questionText.text = "Incorrect" or "Better luck next time!" or "No Point!" 
							p2percent = (p2correct/p2total)*100
							p2percentText.text = (p2percent.."% correct")

						end

					end

					enterButton:addEventListener( "tap", enterButtonTouch)




        		elseif player2pos == 7 then
        			player2piece.x = box7.x
        			player2piece.y = box7.y
        			local path = system.pathForFile( "geo.txt", system.DocumentsDirectory )

					local file, errorString = io.open( path, "r" )
	 
					local lines = {}
					if not file then
					print( "File error: " .. errorString )
					else
					for line in file:lines() do
					table.insert( lines, line)
					end
					io.close( file )
					end
					file = nil
					print(lines[qNumber])--to test
					questionText.text = (lines[qNumber])


					local function enterButtonTouch( event )
					
						print("ok")

						local path = system.pathForFile( "geoAns.txt", system.DocumentsDirectory )

						local file, errorString = io.open( path, "r" )
		 
						local lines = {}
						if not file then
						print( "File error: " .. errorString )
						else
						for line in file:lines() do
						table.insert( lines, line)
						end
						io.close( file )
						end
						file = nil
						print(lines[qNumber])--to test
						answer = (lines[qNumber])

						if answerTextField.text == answer then
							player2score = player2score + 10
							p2score.text = ("Score:"..player2score)
							questionText.text = "You're Right!"
							p2correct = p2correct + 1
							p2percent = (p2correct/p2total)*100
							p2percentText.text = (p2percent.."% correct")
						else 
							questionText.text = "Incorrect" or "Better luck next time!" or "No Point!" 
							p2percent = (p2correct/p2total)*100
							p2percentText.text = (p2percent.."% correct")

						end

					end

					enterButton:addEventListener( "tap", enterButtonTouch)



        		elseif player2pos == 8 then
        			player2piece.x = box8.x
        			player2piece.y = box8.y
        			local path = system.pathForFile( "popCulture.txt", system.DocumentsDirectory )

					local file, errorString = io.open( path, "r" )
	 
					local lines = {}
					if not file then
					print( "File error: " .. errorString )
					else
					for line in file:lines() do
					table.insert( lines, line)
					end
					io.close( file )
					end
					file = nil
					print(lines[qNumber])--to test
					questionText.text = (lines[qNumber])

					local function enterButtonTouch( event )
					
						print("ok")

						local path = system.pathForFile( "popCultureAns.txt", system.DocumentsDirectory )

						local file, errorString = io.open( path, "r" )
		 
						local lines = {}
						if not file then
						print( "File error: " .. errorString )
						else
						for line in file:lines() do
						table.insert( lines, line)
						end
						io.close( file )
						end
						file = nil
						print(lines[qNumber])--to test
						answer = (lines[qNumber])

						if answerTextField.text == answer then
							player2score = player2score + 10
							p2score.text = ("Score:"..player2score)
							questionText.text = "You're Right!"
							p2correct = p2correct + 1
							p2percent = (p2correct/p2total)*100
							p2percentText.text = (p2percent.."% correct")
						else 
							questionText.text = "Incorrect" or "Better luck next time!" or "No Point!" 
							p2percent = (p2correct/p2total)*100
							p2percentText.text = (p2percent.."% correct")

						end

					end

					enterButton:addEventListener( "tap", enterButtonTouch)



        		elseif player2pos == 9 then
        			player2piece.x = box9.x
        			player2piece.y = box9.y
        			local path = system.pathForFile( "sports.txt", system.DocumentsDirectory )

					local file, errorString = io.open( path, "r" )
	 
					local lines = {}
					if not file then
					print( "File error: " .. errorString )
					else
					for line in file:lines() do
					table.insert( lines, line)
					end
					io.close( file )
					end
					file = nil
					print(lines[qNumber])--to test
					questionText.text = (lines[qNumber])

					local function enterButtonTouch( event )
					
						print("ok")

						local path = system.pathForFile( "sportsAns.txt", system.DocumentsDirectory )

						local file, errorString = io.open( path, "r" )
		 
						local lines = {}
						if not file then
						print( "File error: " .. errorString )
						else
						for line in file:lines() do
						table.insert( lines, line)
						end
						io.close( file )
						end
						file = nil
						print(lines[qNumber])--to test
						answer = (lines[qNumber])

						if answerTextField.text == answer then
							player2score = player2score + 10
							p2score.text = ("Score:"..player2score)
							questionText.text = "You're Right!"
							p2correct = p2correct + 1
							p2percent = (p2correct/p2total)*100
							p2percentText.text = (p2percent.."% correct")
						else 
							questionText.text = "Incorrect" or "Better luck next time!" or "No Point!" 
							p2percent = (p2correct/p2total)*100
							p2percentText.text = (p2percent.."% correct")

						end

					end

					enterButton:addEventListener( "tap", enterButtonTouch)



        		elseif player2pos == 10 then
        			player2piece.x = box10.x
        			player2piece.y = box10.y
        			local path = system.pathForFile( "history.txt", system.DocumentsDirectory )

					local file, errorString = io.open( path, "r" )
	 
					local lines = {}
					if not file then
					print( "File error: " .. errorString )
					else
					for line in file:lines() do
					table.insert( lines, line)
					end
					io.close( file )
					end
					file = nil
					print(lines[qNumber])--to test
					questionText.text = (lines[qNumber])

					local function enterButtonTouch( event )
					
						print("ok")

						local path = system.pathForFile( "historyAns.txt", system.DocumentsDirectory )

						local file, errorString = io.open( path, "r" )
		 
						local lines = {}
						if not file then
						print( "File error: " .. errorString )
						else
						for line in file:lines() do
						table.insert( lines, line)
						end
						io.close( file )
						end
						file = nil
						print(lines[qNumber])--to test
						answer = (lines[qNumber])

						if answerTextField.text == answer then
							player2score = player2score + 10
							p2score.text = ("Score:"..player2score)
							questionText.text = "You're Right!"
							p2correct = p2correct + 1
							p2percent = (p2correct/p2total)*100
							p2percentText.text = (p2percent.."% correct")
						else 
							questionText.text = "Incorrect" or "Better luck next time!" or "No Point!" 
							p2percent = (p2correct/p2total)*100
							p2percentText.text = (p2percent.."% correct")

						end

					end

					enterButton:addEventListener( "tap", enterButtonTouch)


        		elseif player2pos == 11 then
        			player2piece.x = box11.x
        			player2piece.y = box11.y
        			local path = system.pathForFile( "geo.txt", system.DocumentsDirectory )

					local file, errorString = io.open( path, "r" )
	 
					local lines = {}
					if not file then
					print( "File error: " .. errorString )
					else
					for line in file:lines() do
					table.insert( lines, line)
					end
					io.close( file )
					end
					file = nil
					print(lines[qNumber])--to test
					questionText.text = (lines[qNumber])

					local function enterButtonTouch( event )
					
						print("ok")

						local path = system.pathForFile( "geoAns.txt", system.DocumentsDirectory )

						local file, errorString = io.open( path, "r" )
		 
						local lines = {}
						if not file then
						print( "File error: " .. errorString )
						else
						for line in file:lines() do
						table.insert( lines, line)
						end
						io.close( file )
						end
						file = nil
						print(lines[qNumber])--to test
						answer = (lines[qNumber])

						if answerTextField.text == answer then
							player2score = player2score + 10
							p2score.text = ("Score:"..player2score)
							questionText.text = "You're Right!"
							p2correct = p2correct + 1
							p2percent = (p2correct/p2total)*100
							p2percentText.text = (p2percent.."% correct")
						else 
							questionText.text = "Incorrect" or "Better luck next time!" or "No Point!" 
							p2percent = (p2correct/p2total)*100
							p2percentText.text = (p2percent.."% correct")

						end

					end

					enterButton:addEventListener( "tap", enterButtonTouch)


        		elseif player2pos == 12 then
        			player2piece.x = box12.x
        			player2piece.y = box12.y
        			local path = system.pathForFile( "popCulture.txt", system.DocumentsDirectory )

					local file, errorString = io.open( path, "r" )
	 
					local lines = {}
					if not file then
					print( "File error: " .. errorString )
					else
					for line in file:lines() do
					table.insert( lines, line)
					end
					io.close( file )
					end
					file = nil
					print(lines[qNumber])--to test
					questionText.text = (lines[qNumber])

					local function enterButtonTouch( event )
					
						print("ok")

						local path = system.pathForFile( "popCultureAns.txt", system.DocumentsDirectory )

						local file, errorString = io.open( path, "r" )
		 
						local lines = {}
						if not file then
						print( "File error: " .. errorString )
						else
						for line in file:lines() do
						table.insert( lines, line)
						end
						io.close( file )
						end
						file = nil
						print(lines[qNumber])--to test
						answer = (lines[qNumber])

						if answerTextField.text == answer then
							player2score = player2score + 10
							p2score.text = ("Score:"..player2score)
							questionText.text = "You're Right!"
							p2correct = p2correct + 1
							p2percent = (p2correct/p2total)*100
							p2percentText.text = (p2percent.."% correct")
						else 
							questionText.text = "Incorrect" or "Better luck next time!" or "No Point!" 
							p2percent = (p2correct/p2total)*100
							p2percentText.text = (p2percent.."% correct")

						end
					end

					enterButton:addEventListener( "tap", enterButtonTouch)


        		elseif player2pos == 13 then
        			player2piece.x = box13.x
        			player2piece.y = box13.y
        			local path = system.pathForFile( "sports.txt", system.DocumentsDirectory )

					local file, errorString = io.open( path, "r" )
	 
					local lines = {}
					if not file then
					print( "File error: " .. errorString )
					else
					for line in file:lines() do
					table.insert( lines, line)
					end
					io.close( file )
					end
					file = nil
					print(lines[qNumber])--to test
					questionText.text = (lines[qNumber])

					local function enterButtonTouch( event )
					
						print("ok")

						local path = system.pathForFile( "sportsAns.txt", system.DocumentsDirectory )

						local file, errorString = io.open( path, "r" )
		 
						local lines = {}
						if not file then
						print( "File error: " .. errorString )
						else
						for line in file:lines() do
						table.insert( lines, line)
						end
						io.close( file )
						end
						file = nil
						print(lines[qNumber])--to test
						answer = (lines[qNumber])

						if answerTextField.text == answer then
							player2score = player2score + 10
							p2score.text = ("Score:"..player2score)
							questionText.text = "You're Right!"
							p2correct = p2correct + 1
							p2percent = (p2correct/p2total)*100
							p2percentText.text = (p2percent.."% correct")
						else 
							questionText.text = "Incorrect" or "Better luck next time!" or "No Point!" 
							p2percent = (p2correct/p2total)*100
							p2percentText.text = (p2percent.."% correct")

						end

					end

					enterButton:addEventListener( "tap", enterButtonTouch)


        		elseif player2pos == 14 then
        			player2piece.x = box14.x
        			player2piece.y = box14.y
        			local path = system.pathForFile( "history.txt", system.DocumentsDirectory )

					local file, errorString = io.open( path, "r" )
	 
					local lines = {}
					if not file then
					print( "File error: " .. errorString )
					else
					for line in file:lines() do
					table.insert( lines, line)
					end
					io.close( file )
					end
					file = nil
					print(lines[qNumber])--to test
					questionText.text = (lines[qNumber])

					local function enterButtonTouch( event )
					
						print("ok")
						local path = system.pathForFile( "historyAns.txt", system.DocumentsDirectory )

						local file, errorString = io.open( path, "r" )
		 
						local lines = {}
						if not file then
						print( "File error: " .. errorString )
						else
						for line in file:lines() do
						table.insert( lines, line)
						end
						io.close( file )
						end
						file = nil
						print(lines[qNumber])--to test
						answer = (lines[qNumber])

						if answerTextField.text == answer then
							player2score = player2score + 10
							p2score.text = ("Score:"..player2score)
							questionText.text = "You're Right!"
							p2correct = p2correct + 1
							p2percent = (p2correct/p2total)*100
							p2percentText.text = (p2percent.."% correct")
						else 
							questionText.text = "Incorrect" or "Better luck next time!" or "No Point!" 
							p2percent = (p2correct/p2total)*100
							p2percentText.text = (p2percent.."% correct")

						end
					end

					enterButton:addEventListener( "tap", enterButtonTouch)


        		elseif player2pos == 15 then
        			player2piece.x = box15.x
        			player2piece.y = box15.y
        			local path = system.pathForFile( "geo.txt", system.DocumentsDirectory )

					local file, errorString = io.open( path, "r" )
	 
					local lines = {}
					if not file then
					print( "File error: " .. errorString )
					else
					for line in file:lines() do
					table.insert( lines, line)
					end
					io.close( file )
					end
					file = nil
					print(lines[qNumber])--to test
					questionText.text = (lines[qNumber])

					local function enterButtonTouch( event )
					
						print("ok")

						local path = system.pathForFile( "geoAns.txt", system.DocumentsDirectory )

						local file, errorString = io.open( path, "r" )
		 
						local lines = {}
						if not file then
						print( "File error: " .. errorString )
						else
						for line in file:lines() do
						table.insert( lines, line)
						end
						io.close( file )
						end
						file = nil
						print(lines[qNumber])--to test
						answer = (lines[qNumber])

						if answerTextField.text == answer then
							player2score = player2score + 10
							p2score.text = ("Score:"..player2score)
							questionText.text = "You're Right!"
							p2correct = p2correct + 1
							p2percent = (p2correct/p2total)*100
							p2percentText.text = (p2percent.."% correct")
						else 
							questionText.text = "Incorrect" or "Better luck next time!" or "No Point!" 
							p2percent = (p2correct/p2total)*100
							p2percentText.text = (p2percent.."% correct")

						end

					end

					enterButton:addEventListener( "tap", enterButtonTouch)


        		elseif player2pos == 16 then
        			player2piece.x = box16.x
        			player2piece.y = box16.y
        			local path = system.pathForFile( "popCulture.txt", system.DocumentsDirectory )

					local file, errorString = io.open( path, "r" )
	 
					local lines = {}
					if not file then
					print( "File error: " .. errorString )
					else
					for line in file:lines() do
					table.insert( lines, line)
					end
					io.close( file )
					end
					file = nil
					print(lines[qNumber])--to test
					questionText.text = (lines[qNumber])

					local function enterButtonTouch( event )
					
						print("ok")
						local path = system.pathForFile( "popCultureAns.txt", system.DocumentsDirectory )

						local file, errorString = io.open( path, "r" )
		 
						local lines = {}
						if not file then
						print( "File error: " .. errorString )
						else
						for line in file:lines() do
						table.insert( lines, line)
						end
						io.close( file )
						end
						file = nil
						print(lines[qNumber])--to test
						answer = (lines[qNumber])

						if answerTextField.text == answer then
							player2score = player2score + 10
							p2score.text = ("Score:"..player2score)
							questionText.text = "You're Right!"
							p2correct = p2correct + 1
							p2percent = (p2correct/p2total)*100
							p2percentText.text = (p2percent.."% correct")
						else 
							questionText.text = "Incorrect" or "Better luck next time!" or "No Point!" 
							p2percent = (p2correct/p2total)*100
							p2percentText.text = (p2percent.."% correct")

						end

					end

					enterButton:addEventListener( "tap", enterButtonTouch)


				elseif player2pos > 16 then
					local path = system.pathForFile( "win.txt", system.DocumentsDirectory )

					local file, errorString = io.open( path, "r" )
	 
					local lines = {}
					if not file then
					print( "File error: " .. errorString )
					else
					for line in file:lines() do
					table.insert( lines, line)
					end
					io.close( file )
					end
					file = nil
					print(lines[qNumber])--to test
					questionText.text = (lines[qNumber])

					local function enterButtonTouch( event )
					
						print("ok")
						local path = system.pathForFile( "winAns.txt", system.DocumentsDirectory )

						local file, errorString = io.open( path, "r" )
		 
						local lines = {}
						if not file then
						print( "File error: " .. errorString )
						else
						for line in file:lines() do
						table.insert( lines, line)
						end
						io.close( file )
						end
						file = nil
						print(lines[qNumber])--to test
						answer = (lines[qNumber])

						if answerTextField.text == answer then
							local endBox = display.newRect( display.contentCenterX, display.contentCenterY, 300, 200)
        					endBox:setFillColor( 255, 255, 255)
        					sceneGroup:insert(endBox)
        					local winText = display.newText( player2.." Wins!", display.contentCenterX, display.contentCenterY, native.labelFont, 30 )
							winText.id = "winText"
							winText:setFillColor( 0, 0, 0 )
							sceneGroup:insert(winText) 
						else 
							questionText.text = "Try Again!"
						end

					end

					enterButton:addEventListener( "tap", enterButtonTouch)
					

        		end


        		print("player2:"..player2pos)
        	end 

        	
        end

        rollButton:addEventListener("tap", rollButtonTouch)

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

