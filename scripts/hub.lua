-- funcs
Players = game:GetService('Players')
LocalPlayer = Players.LocalPlayer
function LocalRoot()
   return(LocalPlayer.Character.HumanoidRootPart)
end

function ANTI_BANG(AB_bool)
   if AB_bool then
      local destroyHeight = game.Workspace.FallenPartsDestroyHeight
      originalPos = LocalRoot().CFrame
      LocalRoot().CFrame = CFrame.new(10^4, destroyHeight+1, 10^4) * CFrame.fromEulerAngles(math.rad(ABDegree), 0, 0)
      task.wait(0.05) LocalRoot().Anchored = true
   elseif originalPos ~= nil then
      LocalRoot().Anchored = false
      LocalRoot().CFrame = originalPos
   end
end
-- rayfield

local Rayfield = loadstring(game:HttpGet('https://sirius.menu/rayfield'))()

local Window = Rayfield:CreateWindow({
   Name = "eQhub",
   Icon = 114282498599210, -- Icon in Topbar. Can use Lucide Icons (string) or Roblox Image (number). 0 to use no icon (default).
   LoadingTitle = "eQploit hub",
   LoadingSubtitle = "by eQploit team",
   Theme = "DarkBlue", -- Check https://docs.sirius.menu/rayfield/configuration/themes

   DisableRayfieldPrompts = false,
   DisableBuildWarnings = false, -- Prevents Rayfield from warning when the script has a version mismatch with the interface

   ConfigurationSaving = {
      Enabled = false,
      FolderName = nil, -- Create a custom folder for your hub/game
      FileName = "Big Hub"
   },

   Discord = {
      Enabled = true, -- Prompt the user to join your Discord server if their executor supports it
      Invite = "3wdGWjy5UJ", -- The Discord invite code, do not include discord.gg/. E.g. discord.gg/ ABCD would be ABCD
      RememberJoins = true -- Set this to false to make them join the discord every time they load it up
   },

   KeySystem = true, -- Set this to true to use our key system
   KeySettings = {
      Title = "eQey system",
      Subtitle = "haha i changed the K from key to eQ",
      Note = "The key is key. No, seriously. The key is literally \"key\"", -- Use this to tell the user how to get a key
      FileName = "eQKey", -- It is recommended to use something unique as other scripts using Rayfield may overwrite your key file
      SaveKey = true, -- The user's key will be saved, but if you change the key, they will be unable to use your script
      GrabKeyFromSite = false, -- If this is true, set Key below to the RAW site you would like Rayfield to get the key from
      Key = {"key"} -- List of keys that will be accepted by the system, can be RAW file links (pastebin, github etc) or simple strings ("hello","key22")
   }
})

local InfoTab = Window:CreateTab("Info", "info")

local YruLabel = InfoTab:CreateLabel("You are currently using eQteam's script hub", 114282498599210, Color3.fromRGB(50, 50, 150), false) -- Title, Icon, Color, IgnoreTheme
local copyDc = InfoTab:CreateButton({
   Name = "Copy discord",
   Callback = function()
      setclipboard("https://discord.gg/3wdGWjy5UJ")
   end,
})

local MenuTab = Window:CreateTab("Menus/Admins/Hubs", "app-window")

local IY = MenuTab:CreateButton({
      Name = "Infinite Yield",
         Callback = function()
            loadstring(game:HttpGet("https://raw.githubusercontent.com/EdgeIY/infiniteyield/master/source"))()
               end,
})
local Krunox = MenuTab:CreateButton({
      Name = "Krunox",
         Callback = function()
            loadstring(game:HttpGet("https://rawscripts.net/raw/Universal-Script-Krunox-13336"))()
               end,
})
local Idk = MenuTab:CreateButton({
   Name = "Skyhub trolling gui",
   Callback = function()
      loadstring(game:HttpGet("https://raw.githubusercontent.com/yofriendfromschool1/Sky-Hub/main/FE%20Trolling%20GUI.luau"))()
   end,
})

local ToolTab = Window:CreateTab("Tools", "wrench")
ABDegree = 90
local FaceDownToggle = ToolTab:CreateToggle({
   Name = "Look down AntiBang",
   CurrentValue = false,
   Flag = "Toggle1", -- A flag is the identifier for the configuration file, make sure every element has a different flag if you're using configuration saving to ensure no overlaps
   Callback = function(ABFacebool)
      if ABFacebool then
         ABDegree = -90
      else
         ABDegree = 90
      end
   end,
})

local ABtoggle = ToolTab:CreateToggle({
   Name = "AntiBang",
   CurrentValue = false,
   Flag = "Toggle1", -- A flag is the identifier for the configuration file, make sure every element has a different flag if you're using configuration saving to ensure no overlaps
   Callback = function(ABBool)
      ANTI_BANG(ABBool)
   end,
})

local StrollerBanish = ToolTab:CreateButton({
   Name = "Stroller Banish(get someone first)",
   Callback = function()
      local originalPos = LocalRoot().CFrame
      LocalRoot().CFrame = CFrame.new(0, 10^10, 0)
      task.wait(0.5)
      LocalPlayer.Character.Humanoid:UnequipTools()
      task.wait(0.2)
      LocalRoot().CFrame = originalPos
   end,
})

local ssTab = Window:CreateTab("Games", 'gamepad-2')

local sseLabel = ssTab:CreateLabel("Click the search button on top in this tab to search for a specific game", 'info', Color3.fromRGB(0, 50, 0), false) -- Title, Icon, Color, IgnoreTheme

local scp3199sec = ssTab:CreateSection("SCP: 3199 Demonstration")
