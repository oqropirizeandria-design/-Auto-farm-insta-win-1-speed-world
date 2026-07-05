local Rayfield = loadstring(game:HttpGet('https://sirius.menu/rayfield'))()

local Window = Rayfield:CreateWindow({
   Name = "1+ speed world",
   LoadingTitle = "1+ speed world loaded",
   LoadingSubtitle = "by Andria",
   ConfigurationSaving = {
      Enabled = false
   },
   KeySystem = false
})

local MainTab = Window:CreateTab("Main", 4483345998)
local player = game.Players.LocalPlayer

_G.Farm50 = false
_G.FarmAll = false

Rayfield:Notify({
   Title = "USE YOUR HACKS NICELY",
   Content = "1+ speed world loaded",
   Duration = 3,
   Image = 4483345998,
})

local Button = MainTab:CreateButton({
   Name = "insta get 20 speed",
   Callback = function()
      local character = player.Character
      local hrp = character and character:FindFirstChild("HumanoidRootPart")
      local part = workspace:FindFirstChild("TrophyButtons") and workspace.TrophyButtons:FindFirstChild("+20TrophyButton")
      
      if hrp and part then
         hrp.CFrame = part.CFrame
      end
   end,
})

local Toggle = MainTab:CreateToggle({
   Name = "farm 50 trophys",
   CurrentValue = false,
   Flag = "Toggle50",
   Callback = function(Value)
      _G.Farm50 = Value
      while _G.Farm50 do
         local character = player.Character
         local hrp = character and character:FindFirstChild("HumanoidRootPart")
         local part50 = workspace:FindFirstChild("TrophyButtons") and workspace.TrophyButtons:FindFirstChild("+50TrophyButton")
         
         if hrp and part50 then
            hrp.CFrame = part50.CFrame
         end
         task.wait(0.1)
      end
   end,
})

local ToggleAll = MainTab:CreateToggle({
   Name = "auto farm all",
   CurrentValue = false,
   Flag = "ToggleAll",
   Callback = function(Value)
      _G.FarmAll = Value
      while _G.FarmAll do
         local character = player.Character
         local hrp = character and character:FindFirstChild("HumanoidRootPart")
         local folder = workspace:FindFirstChild("TrophyButtons")
         
         if hrp and folder then
            local targetButtons = {"+1TrophyButton", "+3TrophyButton", "+8TrophyButton", "+20TrophyButton", "+50TrophyButton"}
            
            for _, buttonName in ipairs(targetButtons) do
               local buttonPart = folder:FindFirstChild(buttonName)
               if buttonPart and buttonPart:IsA("BasePart") then
                  local touchInterest = buttonPart:FindFirstChild("TouchInterest")
                  if touchInterest then
                     firetouchinterest(hrp, buttonPart, 0)
                     task.wait()
                     firetouchinterest(hrp, buttonPart, 1)
                  end
               end
            end
         end
         task.wait(0.1)
      end
   end,
})

local WinButton = MainTab:CreateButton({
   Name = "insta win (you have to be  in a race)",
   Callback = function()
      local character = player.Character
      local hrp = character and character:FindFirstChild("HumanoidRootPart")
      local finishWall = workspace:FindFirstChild("RaceArena") and workspace.RaceArena:FindFirstChild("FinishWall")
      
      if hrp and finishWall then
         hrp.CFrame = finishWall.CFrame
      end
   end,
})
