local Players2 = game:GetService("Players")
local Player3 = Players2.LocalPlayer
local Module = require(Player3.PlayerScripts.Shared.Client.CombatController)
local Attack = Module.BasicAttack
local Ability = Module.UseAbility

local decalsyeeted = true -- Leaving this on makes games look shitty but the fps goes up by at least 20.
local g = game
local w = g.Workspace
local l = g.Lighting
local t = w.Terrain
t.WaterWaveSize = 0
t.WaterWaveSpeed = 0
t.WaterReflectance = 0
t.WaterTransparency = 0
l.GlobalShadows = false
l.FogEnd = 9e9
l.Brightness = 0
settings().Rendering.QualityLevel = "Level01"
for i, v in pairs(g:GetDescendants()) do
    if v:IsA("Part") or v:IsA("Union") or v:IsA("CornerWedgePart") or v:IsA("TrussPart") then
        v.Material = "Plastic"
        v.Reflectance = 0
    elseif v:IsA("Decal") or v:IsA("Texture") and decalsyeeted then
        v.Transparency = 1
    elseif v:IsA("ParticleEmitter") or v:IsA("Trail") then
        v.Lifetime = NumberRange.new(0)
    elseif v:IsA("Explosion") then
        v.BlastPressure = 1
        v.BlastRadius = 1
    elseif v:IsA("Fire") or v:IsA("SpotLight") or v:IsA("Smoke") or v:IsA("Sparkles") then
        v.Enabled = false
    elseif v:IsA("MeshPart") then
        v.Material = "Plastic"
        v.Reflectance = 0
        v.TextureID = 10385902758728957
    end
end
for i, e in pairs(l:GetChildren()) do
    if e:IsA("BlurEffect") or e:IsA("SunRaysEffect") or e:IsA("ColorCorrectionEffect") or e:IsA("BloomEffect") or e:IsA("DepthOfFieldEffect") then
        e.Enabled = false
    end
end

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
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(1,100,-3)

function attack()
            
while wait() do

for _,v in pairs(game.Workspace:GetDescendants()) do
 if v:FindFirstChild("EvilHumanoid") ~= nil then
  v:FindFirstChild("EvilHumanoid").RootPart.Anchored = true
if (v.EvilHumanoid.Health > 0) then

    v.EvilHumanoid.RootPart.CFrame = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame*CFrame.new(1,1,-3)

  v:FindFirstChild("EvilHumanoid").RootPart.CFrame = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame*CFrame.new(1,1,-3)--Legit Cfrane --1,1,-3.5
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
while wait(0.5) do
for i,v in pairs(game.workspace:GetDescendants())do
    if v.Name == "EvilHumanoid" then 
v.RootPart.Size = Vector3.new(500,500,500)
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
