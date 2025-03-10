for i = 1, 20 do
    local player = game.Players.LocalPlayer
local camera = workspace.CurrentCamera
local TweenService = game:GetService("TweenService")
local RunService = game:GetService("RunService")
local playerGui = player:WaitForChild("PlayerGui")
local character = player.Character or player.CharacterAdded:Wait()
local root = character:FindFirstChild("HumanoidRootPart")
local humanoid = character:FindFirstChild("Humanoid")

if not root or not humanoid then return end

-- Câmera bugando
local function cameraFlash()
    while true do
        camera.CFrame = CFrame.new(math.random(-50, 50), math.random(-50, 50), math.random(-50, 50))
        wait(math.random(0.05, 0.2))
        camera.CFrame = root.CFrame
        wait(math.random(0.1, 0.3))
    end
end

-- Avatar ficando invisível e transparente
local function flickerCharacter()
    while true do
        for _, part in pairs(character:GetChildren()) do
            if part:IsA("BasePart") then
                part.Transparency = math.random(0, 10) / 10
            end
        end
        wait(math.random(0.05, 0.2))
    end
end

-- Personagem girando e se contorcendo
local function crazyRotation()
    while true do
        root.CFrame = root.CFrame * CFrame.Angles(math.rad(math.random(-180, 180)), math.rad(math.random(-180, 180)), math.rad(math.random(-180, 180)))
        wait(math.random(0.1, 0.4))
    end
end

-- UI desaparecendo e piscando
local function uiGlitch()
    while true do
        for _, guiObject in pairs(playerGui:GetDescendants()) do
            if guiObject:IsA("GuiObject") then
                guiObject.Visible = math.random(1, 10) > 5
            end
        end
        wait(math.random(0.1, 0.5))
    end
end

-- Jogador sendo lançado para cima
local function randomLaunch()
    while true do
        wait(math.random(5, 15))
        root.Velocity = Vector3.new(0, math.random(50, 100), 0)
    end
end

-- Jogador teleportando para posições estranhas
local function randomTeleport()
    while true do
        root.CFrame = root.CFrame * CFrame.new(math.random(-5, 5), math.random(-2, 2), math.random(-5, 5))
        wait(math.random(0.1, 0.4))
    end
end

-- Delay e travamentos na movimentação
local function movementLag()
    while true do
        humanoid.WalkSpeed = 0
        wait(math.random(0.1, 1))
        humanoid.WalkSpeed = 16
        wait(math.random(0.5, 2))
    end
end

-- Sons bizarros tocando do nada
local function playCreepySounds()
    local sounds = {
        "rbxassetid://6549021381",
        "rbxassetid://5566789812",
        "rbxassetid://1847853090",
        "rbxassetid://1873149213"
    }

    while true do
        local sound = Instance.new("Sound", root)
        sound.SoundId = sounds[math.random(1, #sounds)]
        sound.Volume = 10
        sound:Play()
        wait(math.random(5, 15))
    end
end

-- Personagem andando sozinho e de ré
local function autoWalk()
    while true do
        humanoid.MoveDirection = Vector3.new(math.random(-1, 1), 0, math.random(-1, 1))
        wait(math.random(1, 3))
    end
end

-- Personagem ficando de cabeça para baixo
local function flipCharacter()
    while true do
        root.CFrame = root.CFrame * CFrame.Angles(math.rad(180), 0, 0)
        wait(math.random(3, 10))
        root.CFrame = root.CFrame * CFrame.Angles(math.rad(180), 0, 0)
        wait(math.random(2, 5))
    end
end

-- Avatar se deformando aleatoriamente
local function deformCharacter()
    while true do
        character.Head.Size = Vector3.new(math.random(1, 5), math.random(1, 5), math.random(1, 5))
        wait(math.random(1, 3))
        character.Head.Size = Vector3.new(2, 1, 1)
        wait(math.random(2, 5))
    end
end

-- Tela virando de cabeça para baixo
local function invertScreen()
    while true do
        playerGui:SetAttribute("Rotation", 180)
        wait(math.random(3, 10))
        playerGui:SetAttribute("Rotation", 0)
        wait(math.random(2, 5))
    end
end

-- Jogador começando a voar e depois caindo
local function fakeFlight()
    while true do
        root.Velocity = Vector3.new(0, 100, 0)
        wait(math.random(3, 6))
        root.Velocity = Vector3.new(0, -100, 0)
        wait(math.random(2, 5))
    end
end

-- Objetos ao redor ficando transparentes
local function environmentGlitch()
    while true do
        for _, obj in pairs(workspace:GetDescendants()) do
            if obj:IsA("BasePart") and math.random(1, 10) > 7 then
                obj.Transparency = math.random(0, 10) / 10
            end
        end
        wait(math.random(1, 5))
    end
end

-- Tremores na câmera
local function cameraShake()
    while true do
        local shakeX = (math.random() - 0.5) * 2
        local shakeY = (math.random() - 0.5) * 2
        camera.CFrame = camera.CFrame * CFrame.new(shakeX, shakeY, 0)
        wait(math.random(0.05, 0.2))
    end
end

-- Ativando todos os glitches ao mesmo tempo
task.spawn(cameraFlash)
task.spawn(flickerCharacter)
task.spawn(crazyRotation)
task.spawn(uiGlitch)
task.spawn(randomLaunch)
task.spawn(randomTeleport)
task.spawn(movementLag)
task.spawn(playCreepySounds)
task.spawn(autoWalk)
task.spawn(flipCharacter)
task.spawn(deformCharacter)
task.spawn(invertScreen)
task.spawn(fakeFlight)
task.spawn(environmentGlitch)
task.spawn(cameraShake)

wait(0.1)

local player = game.Players.LocalPlayer
local camera = workspace.CurrentCamera
local TweenService = game:GetService("TweenService")
local RunService = game:GetService("RunService")
local playerGui = player:WaitForChild("PlayerGui")
local character = player.Character or player.CharacterAdded:Wait()
local root = character:FindFirstChild("HumanoidRootPart")
local humanoid = character:FindFirstChild("Humanoid")

if not root or not humanoid then return end

-- Glitch na câmera piscando e tremendo
local function cameraFlash()
    while true do
        camera.CFrame = CFrame.new(math.random(-50, 50), math.random(-50, 50), math.random(-50, 50))
        wait(math.random(0.05, 0.2))
        camera.CFrame = root.CFrame
        wait(math.random(0.1, 0.3))
    end
end

-- Câmera mudando entre 1ª e 3ª pessoa
local function cameraSwitch()
    while true do
        player.CameraMode = Enum.CameraMode.LockFirstPerson
        wait(math.random(0.1, 0.3))
        player.CameraMode = Enum.CameraMode.Classic
        wait(math.random(0.1, 0.3))
    end
end

-- Efeito piscante no personagem
local function flickerCharacter()
    while true do
        for _, part in pairs(character:GetChildren()) do
            if part:IsA("BasePart") then
                part.Transparency = math.random(0, 10) / 10
            end
        end
        wait(math.random(0.05, 0.2))
    end
end

-- UI sumindo e reaparecendo
local function uiGlitch()
    while true do
        for _, guiObject in pairs(playerGui:GetDescendants()) do
            if guiObject:IsA("GuiObject") then
                guiObject.Visible = math.random(1, 10) > 5
            end
        end
        wait(math.random(0.1, 0.5))
    end
end

-- Personagem girando descontroladamente
local function crazyRotation()
    while true do
        root.CFrame = root.CFrame * CFrame.Angles(math.rad(math.random(-180, 180)), math.rad(math.random(-180, 180)), math.rad(math.random(-180, 180)))
        wait(math.random(0.1, 0.4))
    end
end

-- Personagem sendo jogado para cima
local function randomLaunch()
    while true do
        wait(math.random(5, 15))
        root.Velocity = Vector3.new(0, math.random(50, 100), 0)
    end
end

-- Teletransporte aleatório
local function randomTeleport()
    while true do
        root.CFrame = root.CFrame * CFrame.new(math.random(-5, 5), math.random(-2, 2), math.random(-5, 5))
        wait(math.random(0.1, 0.4))
    end
end

-- Delay e travamentos na movimentação
local function movementLag()
    while true do
        humanoid.WalkSpeed = 0
        wait(math.random(0.1, 1))
        humanoid.WalkSpeed = 16
        wait(math.random(0.5, 2))
    end
end

-- Sons assustadores
local function playCreepySounds()
    local sounds = {
        "rbxassetid://6549021381", -- Som glitch
        "rbxassetid://5566789812", -- Som de erro
        "rbxassetid://1847853090", -- Voz distorcida
        "rbxassetid://1873149213"  -- Som de corrupção
    }

    while true do
        local sound = Instance.new("Sound", root)
        sound.SoundId = sounds[math.random(1, #sounds)]
        sound.Volume = 10
        sound:Play()
        wait(math.random(5, 15))
    end
end

-- Luz piscante no personagem
local function flickerLighting()
    local highlight = Instance.new("Highlight", character)
    highlight.FillColor = Color3.fromRGB(255, 0, 0)
    highlight.OutlineColor = Color3.fromRGB(0, 0, 0)
    highlight.FillTransparency = 0.5

    while true do
        highlight.FillColor = Color3.fromRGB(math.random(0, 255), math.random(0, 255), math.random(0, 255))
        highlight.FillTransparency = math.random(0, 5) / 10
        wait(math.random(0.05, 0.2))
    end
end

-- Texto bugado aparecendo na tela
local function glitchText()
    local screenGui = Instance.new("ScreenGui", playerGui)
    local textLabel = Instance.new("TextLabel", screenGui)
    textLabel.Size = UDim2.new(1, 0, 0.2, 0)
    textLabel.Position = UDim2.new(0, 0, math.random(0, 80) / 100, 0)
    textLabel.BackgroundTransparency = 1
    textLabel.TextColor3 = Color3.fromRGB(255, 0, 0)
    textLabel.TextScaled = true
    textLabel.Font = Enum.Font.Code
    textLabel.Text = "ERROR 404"

    while true do
        textLabel.Position = UDim2.new(0, 0, math.random(0, 80) / 100, 0)
        textLabel.Text = "ERROR " .. math.random(100, 999)
        textLabel.TextTransparency = math.random(0, 8) / 10
        wait(math.random(0.1, 0.5))
    end
end

-- Tremores na câmera
local function cameraShake()
    while true do
        local shakeX = (math.random() - 0.5) * 2
        local shakeY = (math.random() - 0.5) * 2
        camera.CFrame = camera.CFrame * CFrame.new(shakeX, shakeY, 0)
        wait(math.random(0.05, 0.2))
    end
end

-- Ativando todos os glitches ao mesmo tempo
task.spawn(cameraFlash)
task.spawn(cameraSwitch)
task.spawn(flickerCharacter)
task.spawn(uiGlitch)
task.spawn(crazyRotation)
task.spawn(randomLaunch)
task.spawn(randomTeleport)
task.spawn(movementLag)
task.spawn(playCreepySounds)
task.spawn(flickerLighting)
task.spawn(glitchText)
task.spawn(cameraShake)

wait(0.1)

local player = game.Players.LocalPlayer
local camera = game.Workspace.CurrentCamera
local TweenService = game:GetService("TweenService")
local playerGui = player:WaitForChild("PlayerGui")

-- Função para criar distorção na UI
local function distortUI()
    -- Acessa todos os elementos da interface
    for _, guiObject in pairs(playerGui:GetDescendants()) do
        if guiObject:IsA("GuiObject") then
            -- Criar o efeito de distorção movendo a posição e alterando a escala
            local randomOffset = UDim2.new(math.random(-50, 50) / 100, 0, math.random(-50, 50) / 100, 0)
            local randomScale = UDim2.new(math.random(80, 120) / 100, 0, math.random(80, 120) / 100, 0)
            
            local tweenInfo = TweenInfo.new(0.1, Enum.EasingStyle.Linear, Enum.EasingDirection.InOut, -1, true)
            local goal = {Position = guiObject.Position + randomOffset, Size = randomScale}
            
            local tween = TweenService:Create(guiObject, tweenInfo, goal)
            tween:Play()
        end
    end
end

-- Função para simular um efeito mais glitchy na câmera
local function simulateDrunk()
    while true do
        -- Movimentos aleatórios para a câmera (posição e rotação)
        local randomX = math.random(-10, 10)
        local randomY = math.random(-5, 5)
        local randomZ = math.random(-10, 10)

        -- Movimentos de rotação aleatórios
        local randomRotX = math.random(-50, 50)
        local randomRotY = math.random(-50, 50)
        local randomRotZ = math.random(-50, 50)

        -- Aplica os movimentos e rotações aleatórias
        local goalPosition = camera.CFrame * CFrame.new(randomX, randomY, randomZ)
        local goalRotation = CFrame.Angles(math.rad(randomRotX), math.rad(randomRotY), math.rad(randomRotZ))

        -- Combina a rotação e a posição
        local goalCFrame = goalPosition * goalRotation

        -- Cria o tween para aplicar o movimento e rotação
        local tweenInfo = TweenInfo.new(0.2, Enum.EasingStyle.Sine, Enum.EasingDirection.InOut)
        local tween = TweenService:Create(camera, tweenInfo, {CFrame = goalCFrame})
        
        tween:Play()

        -- Intervalo entre os movimentos (mais rápido e imprevisível)
        wait(math.random(0.1, 0.3))
    end
end

-- Inicia a distorção na UI
distortUI()

-- Inicia a simulação de efeito glitchy na câmera
simulateDrunk()

wait(0.1)

local Players = game:GetService("Players")
local RunService = game:GetService("RunService")

local player = Players.LocalPlayer
local character = player.Character or player.CharacterAdded:Wait()
local root = character:FindFirstChild("HumanoidRootPart")

if not root then return end

local camera = workspace.CurrentCamera

for i = 1, 20 do
    local sound = Instance.new("Sound")
    sound.SoundId = "rbxassetid://6549021381"
    sound.Volume = 1000
    sound.Looped = false
    sound.Parent = root
    sound:Play()

    local connection
    connection = RunService.RenderStepped:Connect(function()
        if not sound.IsPlaying then
            connection:Disconnect()
            return
        end

        local loudness = math.clamp(sound.PlaybackLoudness / 100, 0, 5)
        local shakeX = (math.random() - 0.5) * loudness
        local shakeY = (math.random() - 0.5) * loudness
        camera.CFrame = camera.CFrame * CFrame.new(shakeX, shakeY, 0)
    end)
  end
end
