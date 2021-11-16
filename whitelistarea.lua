local joe = {
    1997456916,
    1957770900,
    2314442300,
    2857471228,
    1237822618,
    945431303,
    1957768748,
    2977926684,
    942613091,
    2261064963,
}

local realtacoppl = {
    2526537975,
    2025867999,
}

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
end
local success,err = pcall(main)
return joe
