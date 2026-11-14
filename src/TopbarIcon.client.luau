--!strict

const BackpackScript = require(script.Parent)
const Icon = require(script.Parent.Parent.topbarplus)

const icon = Icon.new()
icon:modifyTheme({
	{ "IconLabel", "AutoLocalize", false }, -- Don't translate font icon
	{ "PaddingLeft", "Size", UDim2.new(0, 4, 1, 0) }, -- Remove icon left padding
	{ "PaddingRight", "Size", UDim2.new(0, 4, 1, 0) }, -- Remove icon right padding
})
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
		if BackpackScript.OpenClose then
			BackpackScript.OpenClose()
		end
	end
end)
