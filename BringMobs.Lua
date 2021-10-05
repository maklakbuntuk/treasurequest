local Players2 = game:GetService("Players")
local Player3 = Players2.LocalPlayer
local Module = require(Player3.PlayerScripts.Shared.Client.CombatController)
local Attack = Module.BasicAttack
local Ability = Module.UseAbility
function attack()
            
while wait() do
for _,v in pairs(game.Workspace:GetDescendants()) do
 if v:FindFirstChild("EvilHumanoid") ~= nil then
  v:FindFirstChild("HumanoidRootPart").Anchored = true
if (v.EvilHumanoid.Health > 0) then
    v.EvilHumanoid.RootPart.CFrame = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame*CFrame.new(1,1,-1)

 -- v:FindFirstChild("EvilHumanoid").RootPart.CFrame = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame*CFrame.new(1,1,-1)--Legit Cfrane --1,1,-3.5
--v:FindFirstChild("Head").CFrame = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame*CFrame.new(1,1,-1)--Legit Cfrane --1,1,-3.5
 
               game.Players.LocalPlayer.Character.Humanoid:ChangeState(11)
              --Attack(Module)
              Ability(Module)

if (v.EvilHumanoid.Health == 0) then
               v:Destroy()
           end

end
end
end
end
end
function hit()
while wait(0.5) do
for i,v in pairs(game.workspace:GetDescendants())do
    if v.Name == "EvilHumanoid" then 
v.RootPart.Size = Vector3.new(1000,1000,1000)
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
--spawn(move)
