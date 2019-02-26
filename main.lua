local dOfCircleTextField = native.newTextField( display.contentCenterX, display.contentCenterY + 100, 600, 110 )
dOfCircleTextField.id = "d textField"

local areaOfCirlceTextField = display.newText( "Area", display.contentCenterX, display.contentCenterY - 330, native.systemFont, 90 )
areaOfCirlceTextField.id = "area textField"
areaOfCirlceTextField:setFillColor( 1, 1, 1 )

local circumferenceOfCirlceTextField = display.newText( "Circumference", display.contentCenterX, display.contentCenterY - 430, native.systemFont, 90 )
circumferenceOfCirlceTextField.id = "circumference textField"
circumferenceOfCirlceTextField:setFillColor( 1, 1, 1 )

local diameterTextField = display.newText( "Enter Diameter", display.contentCenterX, display.contentCenterY - 10, native.systemFont, 90 )
diameterTextField.id = "diameter textField"
diameterTextField:setFillColor( 1, 1, 1 )

local calculateButton = display.newImageRect( "./calculate.png", 406, 157 )
calculateButton.x = display.contentCenterX
calculateButton.y = 1300
calculateButton.id = "calculate button"
display.setDefault("background", 0, 255, 0)

function round(num, numDecimalPlaces)
  local mult = 10^(numDecimalPlaces or 2)
  return math.floor(num * mult + 0.5) / mult
end
 
local function calculateButtonTouch( event )
    
    local diameterOfCircle
    local areaOfCirlce
    local circumferenceOfCircle
 
    dOfCirlce = dOfCircleTextField.text
    areaOfCirlce = ((dOfCirlce / 2) * (dOfCirlce / 2)) * 3.141592653
    areaOfCirlce = round(areaOfCirlce)
    circumferenceOfCircle = (dOfCirlce / 2) * 2 * 3.141592653
    circumferenceOfCircle = round(circumferenceOfCircle)

    areaOfCirlceTextField.text = "The area is " .. areaOfCirlce
    circumferenceOfCirlceTextField.text = "The circumference is " .. circumferenceOfCircle

    return true
end

calculateButton:addEventListener( "touch", calculateButtonTouch )