--!strict

--[[
	Copyright 2026 Ryan Luu

	Licensed under the Apache License, Version 2.0 (the "License");
	you may not use this file except in compliance with the License.
	You may obtain a copy of the License at

		http://www.apache.org/licenses/LICENSE-2.0

	Unless required by applicable law or agreed to in writing, software
	distributed under the License is distributed on an "AS IS" BASIS,
	WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
	See the License for the specific language governing permissions and
	limitations under the License.
]]

--[[
	By using Purse, you agree to provide attribution in one of the following ways:
		1. Keep the attribution unmodified and enabled
		2. Provide credit in your experience description by name (Purse) and creator (@WinnersTakesAll)
		3. Have a DevForum topic linked in your experience description, crediting with the above

	For questions or exceptions to the attribution terms, reach out through the social links:
		https://create.roblox.com/store/asset/112061170330936

	Thank you for supporting Purse.
]]

const MarketplaceService = game:GetService("MarketplaceService")
const RunService = game:GetService("RunService")

const VERSION = "1.1.6"

-- Print attribution. Do not modify without reading above
if not RunService:IsStudio() and RunService:IsClient() then
	print(`👛 Running Purse v{VERSION} by @WinnersTakesAll`)
end

-- Check for updates. You may modify the below
local latestVersion: string?

const success, result = pcall(function()
	return MarketplaceService:GetProductInfoAsync(112061170330936)
end)

if success then
	latestVersion = string.match(result.Name, "v(%d+%.%d+%.%d+)")
end

if latestVersion and latestVersion ~= VERSION then
	warn(
		`A new version of Purse (v{VERSION} -> v{latestVersion}) is available: https://create.roblox.com/store/asset/112061170330936`
	)
end
