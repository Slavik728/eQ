local Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/bloodball/-back-ups-for-libs/main/Revenant", true))()
local Flags = Library.Flags

local Window = Library:Window({
   Text = "eQ microscript"
})

grs = game.workspace.GameRunningService
Window:Toggle({
    Text = 'See tempered glass',
    Callback = function(bool)
        if bool then
            for i, g in pairs(grs.GlassBridges.CorrectGlass:GetChildren()) do
                g.Transparency = .7
            end
            local function onGlassReset(c)
                if c:IsA('Model') and c.Name == 'GlassBridges' then
                    task.wait(4)
                    for i, g in pairs(grs.GlassBridges:WaitForChild('CorrectGlass'):GetChildren()) do
                        g.Transparency = .7
                    end
                end
            end
        else
            for i, g in pairs(grs.GlassBridges.CorrectGlass:GetChildren()) do
                g.Transparency = 1
            end
        end
        grs.ChildAdded:Connect(onGlassReset)
    end
})
