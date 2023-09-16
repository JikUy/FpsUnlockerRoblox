-------------------------------------------------------------------------
---------------------------JikUy GITHUB----------------------------------
-------------------------------------------------------------------------
-------------------------ALL RIGHTS RESERVED-----------------------------
-------------------------------------------------------------------------
print("JikUy AT GITHUB")
print("GGsKick, 0fantastc, Inductian MADE THIS")
print("FPS UNLOCKER LOADED")




local message = "FPS UNLOCKER LOADING"
local duration = 4

local notification = Instance.new("Message")
notification.Text = message
notification.Parent = game.Workspace

wait(duration)

notification:Destroy()

for _, object in ipairs(workspace:GetDescendants()) do
	if object:IsA("Texture") then
		object:Destroy()
	end
end

local decalsyeeted = true
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
--Brightness is not here but if u want to add it then just add:
--l.Brightness = 0
settings().Rendering.QualityLevel = "Level01"
for i, v in pairs(g:GetDescendants()) do
	if v:IsA("Part") or v:IsA("UnionOperation") or v:IsA("TrussPart") then
		v.Material = "Plastic"
		v.Reflectance = 0
	elseif v:IsA("Decal") and decalsyeeted then
		v.Transparency = 1
	elseif v:IsA("ParticleEmitter") or v:IsA("Trail") then
		v.Lifetime = NumberRange.new(0)
	elseif v:IsA("Explosion") then
		v.BlastPressure = 1
		v.BlastRadius = 1
	elseif v:IsA("Fire") or v:IsA("SpotLight") or v:IsA("Smoke") then
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

while true do
	wait(1)
	game.Lighting.GlobalShadows = false
end
