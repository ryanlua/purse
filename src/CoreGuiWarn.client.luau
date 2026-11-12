--!strict

const StarterGui = game:GetService("StarterGui")

repeat
	task.wait(3)
until StarterGui:GetCoreGuiEnabled(Enum.CoreGuiType.Backpack)

warn("Purse and CoreGui backpack enabled at the same time")
