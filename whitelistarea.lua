local joe = {
	171832169,
	2526537975,
	2025867999,
	171832854,
}

local realtacoppl = {}

local function main()
    for i,v in pairs(game.Players:GetChildren()) do
	if table.find(joe,v.UserId) then
		if v.Character then
			v.Character:FindFirstChild("Humanoid").DisplayName = '[⭐]'..v.DisplayName
	    	end
	elseif table.find(realtacoppl,v.UserId) then
		if v.Character then
			v.Character:FindFirstChild("Humanoid").DisplayName = '[💎]'..v.DisplayName
		end
	else
		if v.Character then
			if not v.Character.LeftFoot:FindFirstChild("OriginalSize") then
				v.Character:FindFirstChild("Humanoid").DisplayName = '[🌮]'..v.DisplayName
			end
		end
	end
end
local success,err = pcall(main)
return joe
