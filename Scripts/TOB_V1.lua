plr=game.Players.LocalPlayer
char=plr.Character or plr.CharacterAdded:Wait()
capsuleR=nil
capsuleL=nil
handleR=nil
handleL=nil
--wait(1)

-----right-----

capsuleR=script.capsuleAccessory:Clone()
handleR=capsuleR.Handle
handleR.SpecialMesh.TextureId=""
handleR.SpecialMesh.Scale=Vector3.new(0.7,0.8,0.8)
handleR.Color=char.Torso.Color
capsuleR.Parent=char
handleR.HatAttachment:Destroy()
handleR:WaitForChild("AccessoryWeld").C0=CFrame.new(1.0370903, 1.54686356, 0.264009476, -0.173648149, 0.336824685, 0.92541641, 1.13562834e-07, 0.939692438, -0.34202072, -0.984807789, -0.0593911558, -0.163175896)

-----left-----

capsuleL=script.capsuleAccessory:Clone()
handleL=capsuleL.Handle
handleL.SpecialMesh.Scale=Vector3.new(0.7,0.8,0.8)
handleL.Color=char.Torso.Color
capsuleL.Parent=char
handleL.HatAttachment:Destroy()
handleL:WaitForChild("AccessoryWeld").C0=CFrame.new(1.03481293, 1.56710815, 0.189231873, 0.0893132612, 0.372761667, 0.923619032, 0.33506003, 0.862033546, -0.380306602, -0.937954187, 0.343434215, -0.0479065031)

-----tops-----

shirt=char:FindFirstChildWhichIsA("Shirt")
tshirt=char:FindFirstChildWhichIsA("ShirtGraphic")
if shirt then
	shirt:Destroy()
elseif tshirt then
	shirt:Destroy()
end