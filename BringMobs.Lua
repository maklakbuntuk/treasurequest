local Players2 = game:GetService("Players")
local Player3 = Players2.LocalPlayer
local Module = require(Player3.PlayerScripts.Shared.Client.CombatController)
local Attack = Module.BasicAttack
local Ability = Module.UseAbility
local CanTouch = type(firetouchinterest) == "function"

noclip = true 
game:GetService('RunService').Stepped:connect(function()
if noclip then
game.Players.LocalPlayer.Character.Humanoid:ChangeState(11)
end
end)
plr = game.Players.LocalPlayer
mouse = plr:GetMouse()
mouse.KeyDown:connect(function(key)

if key == "true" then
noclip = not noclip
game.Players.LocalPlayer.Character.Humanoid:ChangeState(11)
end
end)
--game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(1,100,-3)

function attack()
            
while wait() do

for _,v in pairs(game.Workspace:GetDescendants()) do
 if v:FindFirstChild("EvilHumanoid") ~= nil then
  v:FindFirstChild("EvilHumanoid").RootPart.Anchored = true
if (v.EvilHumanoid.Health > 0) then

    v.EvilHumanoid.RootPart.CFrame = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame*CFrame.new(1,1,-3)

 -- v:FindFirstChild("EvilHumanoid").RootPart.CFrame = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame*CFrame.new(1,1,-3)--Legit Cfrane --1,1,-3.5
--v:FindFirstChild("Head").CFrame = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame*CFrame.new(1,1,-1)--Legit Cfrane --1,1,-3.5

              -- game.Players.LocalPlayer.Character.Humanoid:ChangeState(11)
              --Attack(Module)
              Ability(Module,Vector3.new(1,1,-3))
--v.EvilHumanoid.Health == 0

if (v.EvilHumanoid.Health == 0) then
               v:Destroy()
           end
  
           

end
end
end
end
end
function hit()
while wait() do
for i,v in pairs(game.workspace:GetDescendants())do
    if v.Name == "EvilHumanoid" then 
v.RootPart.Size = Vector3.new(250,250,250)
                
            if CanTouch then
        local Chests = Workspace:GetDescendants()
        for _ = 1, #Chests do local Chest = Chests[_]
            if Chest.Name == "Chest" and Chest:FindFirstChild("Hitbox") and Chest.Hitbox:FindFirstChild("TouchInterest") then
                pcall(function()
                    firetouchinterest(Player3.Character.HumanoidRootPart,Chest.Hitbox,0)
                    firetouchinterest(Player3.Character.HumanoidRootPart,Chest.Hitbox,1)
                end)
            end
end
end    
                
                
               
end
end
end
end
function start()
while wait() do		
local Event = game:GetService("ReplicatedStorage").Dungeon.Remotes.StartDungeon
Event:FireServer()
end
end  
 function heal()
            while wait() do 
 for i,v in pairs(game:GetService("Workspace"):GetDescendants())do
            if v:IsA("Part") and v.Name == "Finish"then
            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = v.CFrame
end
end
end
end
spawn(start)
spawn(hit)
spawn(attack)
spawn(heal)
--spawn(fps)
