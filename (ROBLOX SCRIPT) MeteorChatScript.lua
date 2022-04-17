local Players = game:GetService("Players")
local DeleteFunction = coroutine.create(function(Object,Time)
wait(Time)
Object:Destroy()
end)
Players.PlayerAdded:Connect(function(Player)
	Player.Chatted:Connect(function(Message)
		local PlayerCharacter = Player.Character
		local HumanoidRootPart = PlayerCharacter:FindFirstChild("HumanoidRootPart")
		local Humanoid = PlayerCharacter:FindFirstChild("Humanoid")
		if Message == "The sky is clear today!" then
			local Meteor = Instance.new("Part",workspace)
			local MeteorFire = Instance.new("Fire",Meteor)
			Meteor.Name = "METEOR"
			MeteorFire.Name = "METEORFIRE"
			Meteor.Shape = Enum.PartType.Ball
			Meteor.Size = Vector3.new(15,15,15)
			Meteor.Anchored = false
			Meteor.CanCollide = true
			Meteor.Material = Enum.Material.Concrete
			Meteor.Color = Color3.fromRGB(57, 57, 57)
			MeteorFire.Size = 25
			MeteorFire.Heat = 25
			Meteor.CFrame = HumanoidRootPart.CFrame * CFrame.new(0,150,0)
			Meteor.Touched:Connect(function(Part)
				if Part.parent:FindFirstChild("Humanoid") ~= nil then
					local TarCharacter = Part.parent
					local Humanoid = Part.parent:FindFirstChild("Humanoid")
					if TarCharacter == PlayerCharacter then
					Humanoid.Health = 0
					end
				end
			end)
			Humanoid.WalkSpeed = 0
			Humanoid.JumpPower = 0
			coroutine.resume(DeleteFunction,Meteor,15)
		end
	end)
end)