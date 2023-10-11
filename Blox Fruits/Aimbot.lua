local SexyAimbot = nil
local Mouse = game.Players.LocalPlayer:GetMouse()
SexyAimbot = hookmetamethod(game, "__index", newcclosure(function(self, Index)
	if self == Mouse and not checkcaller() then
		if Index == "Hit" or Index == "hit" then
		    return _G.CFrameTar or LocalPlayer.Character:WaitForChild("HumanoidRootPart").CFrame
		end
	end
	return SexyAimbot(self, Index)
end))
