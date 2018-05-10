-- Title: TouchAndReact
-- Name: Chelsea NF
-- Course: ICS2O/3C
-- This program displays a button that when I click on it, turns colour and 
-- displays text and another object.


-- set the background colour
display.setDefault ("background", 153/255, 255/255, 153/255)

-- hide status bar
display.setStatusBar(display.HiddenStatusBar)



-- create blue button, set its position and make it visible
local blueButton = display.newImageRect("Images/Fast Button Inactive@2x.png", 198, 96)
blueButton.x = display.contentWidth/2
blueButton.y = display.contentHeight/2
blueButton.isVisible = true

-- create red butto, set its position and make it invisible
local redButton = display.newImageRect("Images/Fast Button Active@2x.png", 198, 96)
redButton.x = display.contentWidth/2
redButton.y = display.contentHeight/2
redButton.isVisible = false

-- create text object, set its position and make it invisible
local textObject = display.newText ("Clicked!", 0, 0, nil, 50)
textObject.x = display.contentWidth/2
textObject.y = display.contentHeight/3
textObject:setTextColor (1, 0, 1)
textObject.isVisible = false

-- Function: BlueButtonListener
-- Input: touch Listener
-- Output: none
-- Description: when blue button is clicked, it will make the text appear with the 
-- red button, and make the blue button disappear
local function BlueButtonListener(touch)
	if (touch.phase == "began") then
		blueButton.isVisible = false
		redButton.isVisible = true 
		textObject.isVisible = true
	end

	if (touch.phase == "ended") then
		blueButton.isVisible = true
		redButton.isVisible = false
		textObject.isVisible = false
	end
end

-- add the respective listeners to each object
blueButton:addEventListener("touch", BlueButtonListener)


-- Function: RedButtonListener
-- Input: touch Listener
-- Output: none

local function RedButtonListener(touch)
	if (touch.phase == "began") then
		blueButton.isVisible = true
		redButton.isVisible = false
		textObject.isVisible = false
	end

	if (touch.phase == "ended") then
		blueButton.isVisible = false
		redButton.isVisible = true
		textObject.isVisible = true
	end
end

-- add the respective listeners to each object
redButton:addEventListener("touch", RedButtonListener)