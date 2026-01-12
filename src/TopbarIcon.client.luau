--!nonstrict

local BackpackScript = require(script.Parent)
local Icon = require(script.Parent.Parent.topbarplus)

local ICON_SELECTED_IMAGE = "rbxasset://textures/ui/TopBar/inventoryOn.png"
local ICON_DESELECTED_IMAGE = "rbxasset://textures/ui/TopBar/inventoryOff.png"

local icon = Icon.new()
icon:setLabel("backpack")
icon:setOrder(-1)
icon:setTextSize(24)
icon:setTextFont(
	"rbxasset://LuaPackages/Packages/_Index/BuilderIcons/BuilderIcons/BuilderIcons.json",
	Enum.FontWeight.Bold,
	Enum.FontStyle.Normal,
	"Selected"
)
icon:setTextFont(
	"rbxasset://LuaPackages/Packages/_Index/BuilderIcons/BuilderIcons/BuilderIcons.json",
	Enum.FontWeight.Regular,
	Enum.FontStyle.Normal,
	"Deselected"
)
icon:bindToggleKey(Enum.KeyCode.Backquote)
icon:autoDeselect(false)
icon:setCaption("Inventory")

BackpackScript.StateChanged.Event:Connect(function(isNowOpen)
	if isNowOpen then
		icon:select()
	else
		icon:deselect()
	end
end)

icon.toggled:Connect(function(_isSelected, fromSource)
	if fromSource == "User" then
		BackpackScript.OpenClose()
	end
end)
