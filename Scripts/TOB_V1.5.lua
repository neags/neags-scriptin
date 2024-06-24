--[[
credits to neags, noshirt false and nonips true is a good combo if the torso color is identical to the shirt

-----dependancies-----

https://www.roblox.com/catalog/14241413891/capsule-head
https://www.roblox.com/catalog/12162984985/Big-Pearl-Earrings-Pink

import hats and put inside this script if in studio
if else you might have to buy them

]]

-----dont change anything unless you know what youre doing! planning to add physics somehow sometime.----- 

plr=game.Players.LocalPlayer
char=plr.Character or plr.CharacterAdded:Wait()

-----tbc-----

capsuleR=nil
capsuleL=nil
pearlA=nil
handleP=nil
handleR=nil
handleL=nil


-----cframes-----

right=nil
left=nil
last=nil

-----customizable part-----

torslock=true --if you want them to lock onto the torso or not, reccomended setting is true.
noshirt=true
nopants=true
nonips=false
th=nil

-----var check-----

if torslock==true then --yes

	--right=CFrame.new(0.6, 0.13, 0.45, -0.17364803, 0.336824685, 0.92541641, 1.13562834e-07, 0.939692438, -0.34202072, -0.984807789, -0.0593911186, -0.163175777)
	--left=CFrame.new(0.62, 0.28, -0.35, 0.21510312, 0.317160755, 0.923655689, 0.332272977, 0.865600705, -0.374606609, -0.918327451, 0.387484848, 0.0808094591)

	--oldies^^^

	right=CFrame.new(0.6, 0.13, 0.3, -0.173648074, 0.336824656, 0.92541641, 0, 0.939692438, -0.34202072, -0.984807789, -0.0593912378, -0.163175777)
	left=CFrame.new(0.6, -0.13, 0.3, 0.17364803, 0.336824149, 0.925416589, 1.41889643e-07, -0.939692616, 0.342020154, 0.984807789, -0.0593909919, -0.163175806)
	last=CFrame.new( 0, 0.4, 1.1, 1, 7.87137555e-09, 3.02998127e-15, -7.87137555e-09, 1, -4.1444258e-16, -3.02998127e-15, 4.14442554e-16, 1)
	th="Torso"

else --no

	right=CFrame.new(1, 1.5, 0.26, -0.173648149, 0.336824685, 0.92541641, 1.13562834e-07, 0.939692438, -0.34202072, -0.984807789, -0.0593911558, -0.163175896)
	left=CFrame.new(1, 1.5, 0.12, 0.0893132612, 0.372761667, 0.923619032, 0.33506003, 0.862033546, -0.380306602, -0.937954187, 0.343434215, -0.0479065031)
	last=CFrame.new(0, 1.9, 1, 1, 7.87137555e-09, 3.02998127e-15, -7.87137555e-09, 1, -4.1444258e-16, -3.02998127e-15, 4.14442554e-16, 1)
	th="Head"

end

-----mirror function by @BackspaceRGB-----

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

wait(1.6)

if script:FindFirstChild("capsuleAccessory") then

	-----right-----

	capsuleR=script.capsuleAccessory:Clone()
	capsuleR.Name="RightB"
	handleR=capsuleR.Handle
	handleR.SpecialMesh.TextureId=""
	handleR.SpecialMesh.Scale=Vector3.new(0.65,0.8,0.8)
	handleR.Color=char.Torso.Color
	capsuleR.Parent=char
	handleR.HatAttachment:Destroy()
	handleR.AccessoryWeld.Part1=char[th]
	handleR:WaitForChild("AccessoryWeld").C0=right

	-----left-----

	capsuleL=script.capsuleAccessory:Clone()
	capsuleL.Name="LeftB"
	handleL=capsuleL.Handle
	handleL.SpecialMesh.TextureId=""
	handleL.SpecialMesh.Scale=Vector3.new(0.65,0.8,0.8)
	handleL.Color=char.Torso.Color
	capsuleL.Parent=char
	handleL.HatAttachment:Destroy()
	handleL.AccessoryWeld.Part1=char[th]
	handleL:WaitForChild("AccessoryWeld").C0=left

	-----last-----
	
	if script:FindFirstChild("PearlAccessory") then
		
		pearlA=script.PearlAccessory:Clone()
		pearlA.Name="Mid"
		handleP=pearlA.Handle
		handleP.SpecialMesh.Scale=Vector3.new(0.8, 0.8, 0.95)
		pearlA.Parent=char
		handleP.HatAttachment:Destroy()
		handleP.AccessoryWeld.Part1=char[th]
		handleP:WaitForChild("AccessoryWeld").C0=last
		
		if pearlA and nonips==true then

			pearlA:Destroy()
			
		end
	end

	-----clothes-----

	shirt=char:FindFirstChildWhichIsA("Shirt")
	pants=char:FindFirstChildWhichIsA("Pants")

	if shirt and noshirt==true then

		shirt:Destroy()

	end

	if pants and nopants==true then

		pants:Destroy()

	end
else

	pearlA=char:FindFirstChild("PearlAccessory")
	capsuleR=char:WaitForChild("capsuleAccessory")
	capsuleL=capsuleR:Clone() --

	if capsuleR then

		-----right-----

		capsuleR.Name="RightB"
		handleR=capsuleR.Handle
		handleR.SpecialMesh.TextureId=""
		handleR.SpecialMesh.Scale=Vector3.new(0.65,0.8,0.8)
		handleR.Color=char.Torso.Color
		handleR.HatAttachment:Destroy()
		handleR.AccessoryWeld.Part1=char[th]
		handleR:WaitForChild("AccessoryWeld").C0=right

		-----left-----

		capsuleL.Name="LeftB"
		handleL=capsuleL.Handle
		handleL.SpecialMesh.TextureId=""
		handleL.SpecialMesh.Scale=Vector3.new(0.65,-0.8,0.8)
		handleL.Color=char.Torso.Color
		capsuleL.Parent=char
		handleL.HatAttachment:Destroy()
		handleL.AccessoryWeld.Part1=char[th]
		handleL:WaitForChild("AccessoryWeld").C0=MirrorPart(right,Enum.Axis.X,right,false)

		-----last-----

		if pearlA and nonips~=true then

			pearlA.Name="Mid"
			handleP=pearlA.Handle
			handleP.SpecialMesh.Scale=Vector3.new(0.8, 0.8, 0.95)
			pearlA.Parent=char
			handleP.HatAttachment:Destroy()
			handleP.AccessoryWeld.Part1=char[th]
			handleP:WaitForChild("AccessoryWeld").C0=last

		elseif pearlA and nonips==true then

			pearlA:Destroy()

		end
	end

	-----tops-----

	shirt=char:FindFirstChild("Shirt")
	pants=char:FindFirstChild("Pants")

	if shirt and noshirt==true then
		shirt:Destroy()
	end

	if pants and nopants==true  then
		pants:Destroy()
	end

end
