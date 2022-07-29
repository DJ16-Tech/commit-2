local player = game.Players.LocalPlayer
Character = player.Character

distance = 30

larm = Character["Left Arm"]
rarm = Character["Right Arm"]

lleg = Character["Left Leg"]
rleg = Character["Right Leg"]

head = Character["Head"]
torso = Character["Torso"]

root = Character["HumanoidRootPart"]
local mouse = player:GetMouse()

partymodes = {
    "Child's play!", 
    "How quaint.", 
    "Feeling scared yet?", 
    "Foolish.", 
    "Hmph.", 
    "Move.", 
    "Such petty affairs."}

print(mode)

function tpfunction()
    for i,v in pairs(game.Players:GetPlayers()) do
   if v ~= game.Players.LocalPlayer and game.Players.LocalPlayer:DistanceFromCharacter(v.Character.HumanoidRootPart.Position) < distance then
       root.CFrame = v.Character.HumanoidRootPart.CFrame * CFrame.new(0, 0, 3)
       local value = math.random(1,#partymodes)
       local mode = partymodes[value]
       game.ReplicatedStorage.DefaultChatSystemChatEvents.SayMessageRequest:FireServer(mode, 'All');
   end
end

   end
mouse.KeyDown:connect(function(key)
    if key:lower() == "e" or key:upper() == "E" then
      tpfunction()
    end
end)