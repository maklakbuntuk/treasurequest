local Players2 = game:GetService("Players")
local Player3 = Players2.LocalPlayer
local Module = require(Player3.PlayerScripts.Shared.Client.CombatController)
local Attack = Module.BasicAttack
local Ability = Module.UseAbility
function attack()
            _G.on = true
while wait(_G.on) do
for _,v in pairs(game.Workspace:GetDescendants()) do
 if v:FindFirstChild("TargetHumanoid") ~= nil then
  v:FindFirstChild("HumanoidRootPart").CanCollide = true
v:FindFirstChild("HumanoidRootPart").Anchored = true
  v:FindFirstChild("HumanoidRootPart").CFrame = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame*CFrame.new(0,0,-15)--Legit Cfrane --1,1,-3.5
--v:FindFirstChild("Head").CFrame = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame*CFrame.new(1,1,-1)--Legit Cfrane --1,1,-3.5
               
               
                game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(Vector3.new(-2.32776427, 100.6644421, 3.105334178))
              
            
            game.Players.LocalPlayer.Character.Humanoid:ChangeState(11)
              Attack(Module)
              Ability(Module,Vector3)

			

end
end
end
end
function hit()
while wait(0.5) do
for i,v in pairs(game.Players.LocalPlayer.Character.FighterVisuals:GetDescendants())do
    if v.Name == "Hitbox" then 
v.Size = Vector3.new(30,10,30)
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
function move()

end
spawn(start)
spawn(hit)
spawn(attack)
spawn(heal)
--spawn(move)
