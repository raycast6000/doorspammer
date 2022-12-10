local doors = {};
table.clear(doors)
local actionHandler2 = game:GetService("ReplicatedStorage").Events.ActionHandler2

for _,v in pairs(workspace:GetDescendants()) do
    if v:isA("Model") and v.Name:match("Door") == "Door" and v:FindFirstChild("meshblock") then
       table.insert(doors, v) 
    end
end

for i = 1, #doors do
    doors[i].Name = "Door_" .. i
    
    for _,m in pairs(doors[i]:GetChildren()) do
       if m:FindFirstChild("SurfaceAppearance") and not m:FindFirstChild("door") then
          m.Name = "meshcontainer"
       end
    end
end

local params = {
	[1] = "Interact",
	[2] = "E"
}

while true do
   wait(.7)
   for i = 1, #doors do
        if doors[i].meshblock:FindFirstChild("door") then
            actionHandler2:FireServer(doors[i].meshblock.door, params) 
        end
    end
end