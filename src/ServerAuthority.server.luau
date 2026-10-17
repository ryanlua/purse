--!strict

const requestToolEvent = Instance.new("RemoteEvent")
requestToolEvent.Name = "RequestToolEvent"
requestToolEvent.Parent = script

const function onRequestTool(player: Player, tool: Tool?)
	const character = player.Character
	if not character then
		return
	end

	const humanoid = character:FindFirstChildOfClass("Humanoid")
	if not humanoid then
		return
	end

	if tool == nil then
		humanoid:UnequipTools()
	elseif typeof(tool) == "Instance" and tool:IsA("Tool") then
		-- Only tools the player already owns
		if tool.Parent == character or tool.Parent == player:FindFirstChildOfClass("Backpack") then
			humanoid:EquipTool(tool)
		end
	end
end

requestToolEvent.OnServerEvent:Connect(onRequestTool)
