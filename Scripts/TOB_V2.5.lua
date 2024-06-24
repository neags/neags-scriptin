--[[

credits to neags on github, noshirt false, nonips true, and custom color as the shirt is a good combo.

-----dependancies, please wear (make sure the handles are only parts and not meshparts) or put in startercharacterscripts if in studio.-----

https://www.roblox.com/catalog/14241413891/capsule-head (capsuleAccessory)
https://www.roblox.com/catalog/12162984985/Big-Pearl-Earrings-Pink (PearlAccessory)
https://www.roblox.com/catalog/17331373966/WHITE-STERN-FACE (Accessory (MeshPartAccessory))

please check if there arent any other hats with any matching names unless you want to be stupid.

if else you might have to buy them or somehow spawn them

planning to add physics somehow sometime.

]]--

wait(5)

plr = game.Players.LocalPlayer
char = plr.Character or plr.CharacterAdded:Wait()

-----tbc-----

capsuleR = nil
capsuleL = nil
pearlA = nil
vagI = nil

handleV = nil
handleP = nil
handleR = nil
handleL = nil

th = nil --for the torslock
tc = nil --for the custom color
tc2 = nil --for the cc2

-----cframes-----

right = nil
left = nil
mid = nil
last = nil

-----customizable part-----

cc, customcolor = false, BrickColor.new("Black") --custom color of the breasts. first value for custom, second for the color.
cc2, customcolor2 = false, BrickColor.new("White") --custom color of the vagina and nipples. first value for custom, second for the color.

torslock = true --if you want the accessories to lock onto the torso or not, reccomended setting is true.

noshirt = true
nopants = true

nonips = false --would be best if you have noshirt set to true. same goes reverse.
novag = false --would be best if you have nopants set to true. same goes reverse.

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
	last = CFrame.new( 0, 0.4, 1.1, 1, 7.87137555e-09, 3.02998127e-15, -7.87137555e-09, 1, -4.1444258e-16, -3.02998127e-15, 4.14442554e-16, 1)
	th = "Torso"

else --lock to head

	wait()
	right = CFrame.new(1, 1.5, 0.26, -0.173648149, 0.336824685, 0.92541641, 1.13562834e-07, 0.939692438, -0.34202072, -0.984807789, -0.0593911558, -0.163175896)
	left = CFrame.new(1, 1.5, 0.12, 0.0893132612, 0.372761667, 0.923619032, 0.33506003, 0.862033546, -0.380306602, -0.937954187, 0.343434215, -0.0479065031)
	mid = CFrame.new(0, 1.83, 2.33, 1, 0, 0, 0, 0.707106829, -0.707106769, 0, 0.707106769, 0.707106829)
	last = CFrame.new(0, 1.9, 1, 1, 7.87137555e-09, 3.02998127e-15, -7.87137555e-09, 1, -4.1444258e-16, -3.02998127e-15, 4.14442554e-16, 1)
	th = "Head"

end

if cc == true then

	tc = customcolor

else

	tc = char.Torso.BrickColor

end

if cc2 == true then

	tc2 = customcolor2

else

	tc2 = BrickColor.new("Medium red")

end

-----mirror module below by @BackspaceRGB-----

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

-----actual workings-----

vagI = char:FindFirstChild("Accessory (MeshPartAccessory)")
pearlA = char:FindFirstChild("PearlAccessory")
capsuleR = char:WaitForChild("capsuleAccessory")
capsuleL = capsuleR:Clone() --

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
	
	-----right-----

	capsuleR.Name = "RightB"

	handleR = capsuleR:WaitForChild("Handle")
	handleR.BrickColor = tc
	handleR.HatAttachment:Destroy()
	handleR:WaitForChild("AccessoryWeld").Part1 = char[th]
	handleR:WaitForChild("AccessoryWeld").C0 = right

	MESH = handleR:FindFirstChildWhichIsA("SpecialMesh")
	MESH.TextureId = ""
	MESH.Scale = Vector3.new(0.65,0.8,0.8)

	-----left-----

	capsuleL.Name = "LeftB"
	capsuleL.Parent = char

	handleL = capsuleL:WaitForChild("Handle")
	handleL.BrickColor = tc
	handleL.HatAttachment:Destroy()
	handleL:WaitForChild("AccessoryWeld").Part1 = char[th]
	handleL:WaitForChild("AccessoryWeld").C0 = MirrorPart(right, Enum.Axis.X, right, false)

	MESH = handleL:FindFirstChildWhichIsA("SpecialMesh")
	MESH.TextureId = ""
	MESH.Scale = Vector3.new(0.65,-0.8,0.8)

	-----V-----

	if vagI and novag ~= true then

		vagI.Name = "V"
		vagI.Parent = char

		handleV = vagI:WaitForChild("Handle")
		handleV.BrickColor = tc2
		handleV.HatAttachment:Destroy()
		handleV:WaitForChild("AccessoryWeld").Part1 = char[th]
		handleV:WaitForChild("AccessoryWeld").C0 = mid

		MESH = handleV:FindFirstChildWhichIsA("SpecialMesh")
		MESH.TextureId = ""
		MESH.Scale = Vector3.new(0.12, 0.3, 0.3)

	elseif vagI and novag == true then

		vagI:Destroy()

	end

	-----mid-----

	if pearlA and nonips ~= true then

		pearlA.Name = "Mid"
		pearlA.Parent = char

		handleP = pearlA:WaitForChild("Handle")
		handleP.BrickColor = tc2
		handleP.HatAttachment:Destroy()
		handleP:WaitForChild("AccessoryWeld").Part1 = char[th]
		handleP:WaitForChild("AccessoryWeld").C0 = last

		MESH = handleP:FindFirstChildWhichIsA("SpecialMesh")
		MESH.TextureId = ""
		MESH.Scale = Vector3.new(0.8, 0.8, 0.95)

	elseif pearlA and nonips == true then

		pearlA:Destroy()

	end

	-----colors-----
	
	while wait() do
		capsuleL.Handle.BrickColor=capsuleR.Handle.BrickColor
		handleP.BrickColor = tc2
		handleV.BrickColor = tc2
	end
end