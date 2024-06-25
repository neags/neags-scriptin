--[[

credits to neags on github, noshirt false, nonips true, and custom color as the shirt is a good combo.

-----dependancies, please wear (make sure the handles are only parts and not meshparts) or put in startercharacterscripts if in studio.-----

https://www.roblox.com/catalog/14241413891/capsule-head (capsuleAccessory)
https://www.roblox.com/catalog/12162984985/Big-Pearl-Earrings-Pink (PearlAccessory)
https://www.roblox.com/catalog/17331373966/WHITE-STERN-FACE (Accessory (MeshPartAccessory))
https://www.roblox.com/catalog/13769586807/Black-Fluffy-Tail (cat tail)

please check if there arent any other hats with any matching names unless you want to be stupid.

if else you might have to buy them or somehow spawn them

planning to add physics somehow sometime.

]]--

wait(5)

plr = game.Players.LocalPlayer
char = plr.Character or plr.CharacterAdded:Wait()

-----tbc-----

th = nil --for the torslock

-----cframes-----

right = nil
left = nil
mid = nil
last = nil

-----customizable part-----

colors = {
	--breasts=char.Torso.BrickColor;
	breasts=BrickColor.new("White");
	glans=BrickColor.new("Medium red"); --default: BrickColor.new("Medium red");
	vagina=BrickColor.new("Medium red"); --default: BrickColor.new("Medium red");
	shaft=BrickColor.new("Terra Cotta"); --default BrickColor.new("Terra Cotta");
	nips=BrickColor.new("Salmon"); --default: BrickColor.new("Medium red");
	balls=BrickColor.new("Medium red")
}

torslock = true --if you want the accessories to lock onto the torso or not, reccomended setting is true.

noshirt = false
nopants = true

nonips = true --would be best if you have noshirt set to true. same goes reverse.
noboobs = false --no breasts
genitalia = 2 --0 is none, 1 is vagina, 2 is penis.

-----dont change anything below unless you know what youre doing!----- 

-----var check-----

if torslock == true then --lock to torso

	--right = CFrame.new(0.6, 0.13, 0.45, -0.17364803, 0.336824685, 0.92541641, 1.13562834e-07, 0.939692438, -0.34202072, -0.984807789, -0.0593911186, -0.163175777)
	--left = CFrame.new(0.62, 0.28, -0.35, 0.21510312, 0.317160755, 0.923655689, 0.332272977, 0.865600705, -0.374606609, -0.918327451, 0.387484848, 0.0808094591)

	--oldies^^^

	wait()
	right = CFrame.new(0.6, 0.13, 0.3, -0.173648074, 0.336824656, 0.92541641, 0, 0.939692438, -0.34202072, -0.984807789, -0.0593912378, -0.163175777)
	left = CFrame.new(0.6, -0.13, 0.3, 0.17364803, 0.336824149, 0.925416589, 1.41889643e-07, -0.939692616, 0.342020154, 0.984807789, -0.0593909919, -0.163175806)
	mid = CFrame.new(0, 0.775, 1.28, 1, 0, 0, 0, 0.707106829, -0.707106769, 0, 0.707106769, 0.707106829)
	last = CFrame.new(0, 0.4, 1.1, 1, 7.87137555e-09, 3.02998127e-15, -7.87137555e-09, 1, -4.1444258e-16, -3.02998127e-15, 4.14442554e-16, 1)
	last2 = CFrame.new(0, 0.400000006, 0.36500001, 1, 7.87137555e-09, 0, -7.87137555e-09, 1, -4.1444258e-16, -3.2622331e-24, 4.1444258e-16, 1)
	shft = CFrame.new(0, -0.52, -0.3, -1, 8.74227766e-08, -3.82137093e-15, 0, -4.37113883e-08, -1, -8.74227766e-08, -1, 4.37113883e-08)
	glns = CFrame.new(0.6, 1.18, 0, -0.0163401552, -0.374250084, 0.927183867, 0.0404431969, 0.92630142, 0.374606609, -0.999048233, 0.0436194055, -4.05284943e-08)
	blr = CFrame.new(1.2, 0, -0.45, -0.433012754, 0.75, 0.49999997, -0.249999985, 0.433012664, -0.866025448, -0.866025388, -0.50000006, -2.18556924e-08)
	bll = CFrame.new(1.2, 0, 0.45, 0.433012694, 0.75, 0.49999997, 0.249999985, 0.433012664, -0.866025448, -0.866025388, 0.49999997, -2.18556924e-08)
	zero = CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1)
	th = "Torso"

else --lock to head

	wait()
	right = CFrame.new(1, 1.5, 0.26, -0.173648149, 0.336824685, 0.92541641, 1.13562834e-07, 0.939692438, -0.34202072, -0.984807789, -0.0593911558, -0.163175896)
	left = CFrame.new(1, 1.5, 0.12, 0.0893132612, 0.372761667, 0.923619032, 0.33506003, 0.862033546, -0.380306602, -0.937954187, 0.343434215, -0.0479065031)
	mid = CFrame.new(0, 1.83, 2.33, 1, 0, 0, 0, 0.707106829, -0.707106769, 0, 0.707106769, 0.707106829)
	last = CFrame.new(0, 1.9, 1, 1, 7.87137555e-09, 3.02998127e-15, -7.87137555e-09, 1, -4.1444258e-16, -3.02998127e-15, 4.14442554e-16, 1)
	last2 = CFrame.new( 0, 1.8, 0.365, 1, 7.87137555e-09, 0, -7.87137555e-09, 1, -4.1444258e-16, -3.2622331e-24, 4.1444258e-16, 1)
	shft = CFrame.new(0, -0.5, -1.78, -1, 1.50995803e-07, -6.60023616e-15, 0, -4.37113883e-08, -1, -1.50995803e-07, -1, 4.37113883e-08)
	glns = CFrame.new(0.05, 2.55, 0, -0.00523036905, -0.374570101, 0.927183867, 0.0129455095, 0.927093506, 0.374606609, -0.999902546, 0.013962198, -4.05284943e-08)
	blr = CFrame.new(2.35, 0.75, -1.2, -0.433012754, 0.75, 0.49999997, -0.249999985, 0.433012664, -0.866025448, -0.866025388, -0.50000006, -2.18556924e-08)
	bll = CFrame.new(2.35, 0.75, 1.2, 0.433012694, 0.75, 0.49999997, 0.249999985, 0.433012664, -0.866025448, -0.866025388, 0.49999997, -2.18556924e-08)
	zero = CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1)
	th = "Head"

end

-----mirror module made by @BackspaceRGB-----

local AXIS_ANGLES = {
	[Enum.Axis.X] = {0, math.pi / 2, 0},
	[Enum.Axis.Y] = {math.pi / 2, 0, 0},
	[Enum.Axis.Z] = {0,0,0}
}


-- Reflect vector
local function reflectVector(vector: Vector3, axis: Vector3): Vector3

	return vector + 2 * (axis * vector:Dot(axis))

end


-- Reflect cframe
local function reflectCFrame(cframe: CFrame, overCFrame: CFrame, isCorner: boolean): CFrame

	local mirrorPoint = overCFrame.Position
	local mirrorAxis = overCFrame.LookVector

	local x, y, z,
	xx, yx, zx,
	xy, yy, zy,
	xz, yz, zz = cframe:GetComponents()

	local newPos = mirrorPoint + reflectVector(Vector3.new(x, y, z) - mirrorPoint, mirrorAxis)

	local xAxis = -Vector3.new(xx, xy, xz)
	local yAxis = Vector3.new(yx, yy, yz)
	local zAxis = Vector3.new(zx, zy, zz)

	xAxis = reflectVector(xAxis, mirrorAxis)
	yAxis = reflectVector(yAxis, mirrorAxis)
	zAxis = reflectVector(zAxis, mirrorAxis)

	--xAxis = -xAxis

	if isCorner then

		xAxis, zAxis = -zAxis, xAxis

	end

	return CFrame.new(newPos.X, newPos.Y, newPos.Z,
		xAxis.X, yAxis.X, zAxis.X,
		xAxis.Y, yAxis.Y, zAxis.Y,
		xAxis.Z, yAxis.Z, zAxis.Z)

end


-- Get mirrored part cframe
function MirrorPart(mirror: CFrame, axis: Enum.Axis, cframe: CFrame, isCorner: boolean): CFrame

	return reflectCFrame(cframe, mirror * CFrame.Angles(unpack(AXIS_ANGLES[axis])), isCorner)

end

function toPart(target: MeshPart, scale: Vector3)
	
	local part = Instance.new("Part")
	local mesh = Instance.new("SpecialMesh")
	
	part.Size = target.Size
	part.CFrame = target.CFrame
	part.Name = target.Name
	
	mesh.MeshId = target.MeshId
	mesh.TextureId = target.TextureID
	mesh.Scale = scale
	mesh.Parent = part
	part.Size = Vector3.new(1,1,1)
	
	for i,v in ipairs(target:GetChildren()) do
		
		v.Parent=part
		
		if v:IsA("Weld") then
			v.Part0 = part
		end
		
	end
	
	part.Parent=target.Parent
	
	wait()
	
	target:Destroy() 
	
	return part
end

-----actual workings-----

vagI = char:FindFirstChild("Accessory (MeshPartAccessory)")

shaft = char:FindFirstChild("cat tail")

pearlA = char:FindFirstChild("PearlAccessory")

capsuleR = char:WaitForChild("capsuleAccessory")
capsuleL = capsuleR:Clone() --

glans = capsuleR:Clone() 

ballr = capsuleR:Clone() 
balll = capsuleR:Clone() 

if capsuleR then
	
	-----clothings-----

	wait()

	shirt = char:FindFirstChild("Shirt")
	pants = char:FindFirstChild("Pants")

	if shirt and noshirt == true then

		shirt:Destroy()

	end

	if pants and nopants == true  then

		pants:Destroy()

	end
	
	if noboobs~=true then

		-----right boob-----

		capsuleR.Name = "RightB"

		handle = capsuleR:WaitForChild("Handle")
		
		if handle:IsA("MeshPart") then
			
			handle = toPart(capsuleR:WaitForChild("Handle"),Vector3.new(0.65,0.8,0.8))
			
		end
		
		handle.BrickColor = colors.breasts
		handle:FindFirstChildWhichIsA("Attachment"):Destroy()
		handle:WaitForChild("AccessoryWeld").Part1 = char[th]
		handle:WaitForChild("AccessoryWeld").C0 = right

		MESH = handle:FindFirstChildWhichIsA("SpecialMesh")
		MESH.TextureId = ""
		MESH.Scale = Vector3.new(0.65,0.8,0.8)

		-----left boob-----

		capsuleL.Name = "LeftB"
		capsuleL.Parent = char

		handle = capsuleL:WaitForChild("Handle")
		
		if handle:IsA("MeshPart") then
			
			handle = toPart(capsuleL:WaitForChild("Handle"),Vector3.new(0.65,-0.8,0.8))
			
		end
		
		handle.BrickColor = colors.breasts
		handle:FindFirstChildWhichIsA("Attachment"):Destroy()
		handle:WaitForChild("AccessoryWeld").Part1 = char[th]
		handle:WaitForChild("AccessoryWeld").C0 = MirrorPart(right, Enum.Axis.X, right, false)

		MESH = handle:FindFirstChildWhichIsA("SpecialMesh")
		MESH.TextureId = ""
		MESH.Scale = Vector3.new(0.65,-0.8,0.8)
		
	else

		capsuleR:Destroy()
		capsuleL:Destroy()
		
	end
	
	-----nipples-----

	if pearlA then
		
		if nonips ~= true then

			pearlA.Name = "Nips"
			pearlA.Parent = char

			handle = pearlA:WaitForChild("Handle")
			
			if handle:IsA("MeshPart") then
				
				handle = toPart(pearlA:WaitForChild("Handle"),Vector3.new(0.8, 0.8, 0.8))
				
			end
			
			handle.BrickColor = colors.nips
			handle:FindFirstChildWhichIsA("Attachment"):Destroy()
			handle:WaitForChild("AccessoryWeld").Part1 = char[th]

			MESH = handle:FindFirstChildWhichIsA("SpecialMesh")
			MESH.TextureId = ""

			if noboobs==true then

				handle:WaitForChild("AccessoryWeld").C0 = last2
				MESH.Scale = Vector3.new(0.8, 0.8, 0.8)

			else

				handle:WaitForChild("AccessoryWeld").C0 = last
				MESH.Scale = Vector3.new(0.8, 0.8, 0.95)

			end
			
		elseif nonips == true then
			
			pearlA:Destroy()
			
		end

	end

	-----vagina-----

	if vagI and genitalia == 1 then

		vagI.Name = "Vag"
		vagI.Parent = char

		handle = vagI:WaitForChild("Handle")
		
		if handle:IsA("MeshPart") then
			
			handle = toPart(vagI:WaitForChild("Handle"),Vector3.new(0.12, 0.3, 0.3))
			
		end
		
		handle.BrickColor = colors.vagina
		handle:FindFirstChildWhichIsA("Attachment"):Destroy()
		handle:WaitForChild("AccessoryWeld").Part1 = char[th]
		handle:WaitForChild("AccessoryWeld").C0 = mid

		MESH = handle:FindFirstChildWhichIsA("SpecialMesh")
		MESH.TextureId = ""
		MESH.Scale = Vector3.new(0.12, 0.3, 0.3)

	elseif vagI and genitalia ~= 1 then

		vagI:Destroy()

	end
	
	-----penis-----

	if shaft then
		
		if genitalia == 2 then

			shaft.Name = "Shaft"
			shaft.Parent = char

			handle = shaft:WaitForChild("Handle")
			
			if handle:IsA("MeshPart") then
				
				handle = toPart(shaft:WaitForChild("Handle"),Vector3.new(1.3, 1.2, 1.4))
				
			end
			
			handle.BrickColor = colors.shaft
			handle:FindFirstChildWhichIsA("Attachment"):Destroy()
			handle:WaitForChild("AccessoryWeld").Part1 = char[th]
			handle:WaitForChild("AccessoryWeld").C0 = shft
			handle:WaitForChild("AccessoryWeld").C1 = zero

			MESH = handle:FindFirstChildWhichIsA("SpecialMesh")
			MESH.TextureId = ""
			MESH.Scale = Vector3.new(1.3, 1.2, 1.4)

			glans.Name = "Glans"
			glans.Parent = char

			handle = glans:WaitForChild("Handle")
			
			if handle:IsA("MeshPart") then
				
				handle = toPart(glans:WaitForChild("Handle"),Vector3.new(0.44, 0.3, 0.3))
				
			end
			
			handle.BrickColor = colors.glans
			handle:FindFirstChildWhichIsA("Attachment"):Destroy()
			handle:WaitForChild("AccessoryWeld").Part1 = char[th]
			handle:WaitForChild("AccessoryWeld").C0 = glns
			handle:WaitForChild("AccessoryWeld").C1 = zero

			MESH = handle:FindFirstChildWhichIsA("SpecialMesh")
			MESH.TextureId = ""
			MESH.Scale = Vector3.new(0.44, 0.3, 0.3)

			hole=Instance.new("SphereHandleAdornment",handle)
			hole.Color3=Color3.new(0,0,0)
			hole.Transparency=.5
			hole.Radius=.06
			hole.CFrame=CFrame.new(-0.47,0,0)
			hole.Adornee=handle

			----right testicle----
			
			ballr.Name = "TesticleR"
			ballr.Parent = char
			
			handle = ballr:WaitForChild("Handle")
			
			if handle:IsA("MeshPart") then
				
				handle = toPart(ballr:WaitForChild("Handle"),Vector3.new(0.35, 0.35, 0.35))
				
			end
			
			handle.BrickColor = colors.balls
			handle:FindFirstChildWhichIsA("Attachment"):Destroy()
			handle:WaitForChild("AccessoryWeld").Part1 = char[th]
			handle:WaitForChild("AccessoryWeld").C0 = blr
			handle:WaitForChild("AccessoryWeld").C1 = zero

			MESH = handle:FindFirstChildWhichIsA("SpecialMesh")
			MESH.TextureId = ""
			MESH.Scale = Vector3.new(0.35, 0.35, 0.35)
			
			----left testicle----
			
			balll.Name = "TesticleL"
			balll.Parent = char

			handle = balll:WaitForChild("Handle")
			
			if handle:IsA("MeshPart") then
				
				handle = toPart(balll:WaitForChild("Handle"),Vector3.new(0.35, 0.35, 0.35))
				
			end
			
			handle.BrickColor = colors.balls
			handle:FindFirstChildWhichIsA("Attachment"):Destroy()
			handle:WaitForChild("AccessoryWeld").Part1 = char[th]
			handle:WaitForChild("AccessoryWeld").C0 = bll
			handle:WaitForChild("AccessoryWeld").C1 = zero

			MESH = handle:FindFirstChildWhichIsA("SpecialMesh")
			MESH.TextureId = ""
			MESH.Scale = Vector3.new(0.35, 0.35, 0.35)
			
		else
			
			shaft:Destroy()
			glans:Destroy()
			balll:Destroy()
			ballr:Destroy()
			
		end
		
	end

	-----colors-----
	
	while wait() do
		
		if noboobs~=true then

			capsuleL.Handle.BrickColor=capsuleR.Handle.BrickColor
			
		end
		
		if nonips~=true then
			
			pearlA:WaitForChild("Handle").BrickColor = colors.nips
			
		end
		
		if genitalia==1 then

			vagI:WaitForChild("Handle").BrickColor = colors.vagina
			
		elseif genitalia==2 then

			glans:WaitForChild("Handle").BrickColor = colors.glans
			shaft:WaitForChild("Handle").BrickColor = colors.shaft
			balll:WaitForChild("Handle").BrickColor = colors.balls
			ballr:WaitForChild("Handle").BrickColor = colors.balls
			
		end
		
	end
	
end

char:FindFirstChildWhichIsA("Humanoid").Died:Connect(function()
	script:Destroy()
end) --best for if youre executing this local, feel free to delete