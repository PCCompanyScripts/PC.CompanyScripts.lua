-- PC COMPANY EXECUTOR v1.3.30 (XENO STYLE)
local Player = game.Players.LocalPlayer
local PlayerGui = Player:WaitForChild("PlayerGui")
local TweenService = game:GetService("TweenService")

-- 1. ESTRUTURA DA GUI
local ScreenGui = Instance.new("ScreenGui")
ScreenGui.Name = "PCC_Xeno_System"
ScreenGui.IgnoreGuiInset = true
ScreenGui.ResetOnSpawn = false
ScreenGui.Parent = PlayerGui

-- [INTRO DE GLITCH - MANTIDA IGUAL]
local function IniciarIntro()
    local Background = Instance.new("Frame")
    Background.Size = UDim2.new(1, 0, 1, 0)
    Background.BackgroundColor3 = Color3.new(0, 0, 0)
    Background.ZIndex = 100
    Background.Parent = ScreenGui

    local Sound = Instance.new("Sound")
    Sound.SoundId = "rbxassetid://109233656094126"
    Sound.Volume = 2
    Sound.Parent = game.Workspace
    Sound:Play()

    local Overlay = Instance.new("ImageLabel")
    Overlay.Size = UDim2.new(1, 0, 1, 0)
    Overlay.BackgroundTransparency = 1
    Overlay.Image = "rbxassetid://6546690415"
    Overlay.ZIndex = 110
    Overlay.Parent = ScreenGui

    local MainText = Instance.new("TextLabel")
    MainText.Size = UDim2.new(1, 0, 0.2, 0)
    MainText.Position = UDim2.new(0, 0, 0.4, 0)
    MainText.BackgroundTransparency = 1
    MainText.Font = Enum.Font.Code
    MainText.TextColor3 = Color3.new(1, 1, 1)
    MainText.TextSize = 60
    MainText.Text = "PC Company"
    MainText.ZIndex = 111
    MainText.Parent = ScreenGui

    local SubText = Instance.new("TextLabel")
    SubText.Size = UDim2.new(1, 0, 0.1, 0)
    SubText.Position = UDim2.new(0, 0, 0.55, 0)
    SubText.BackgroundTransparency = 1
    SubText.Font = Enum.Font.Code
    SubText.TextColor3 = Color3.fromRGB(255, 0, 0)
    SubText.TextSize = 30
    SubText.Text = "- Scripts -"
    SubText.ZIndex = 111
    SubText.Parent = ScreenGui

    local BarBack = Instance.new("Frame")
    BarBack.Size = UDim2.new(0.3, 0, 0.015, 0)
    BarBack.Position = UDim2.new(0.35, 0, 0.7, 0)
    BarBack.BackgroundColor3 = Color3.fromRGB(20, 20, 20)
    BarBack.ZIndex = 112
    BarBack.Parent = ScreenGui
    Instance.new("UICorner", BarBack).CornerRadius = UDim.new(1, 0)

    local BarFill = Instance.new("Frame")
    BarFill.Size = UDim2.new(0, 0, 1, 0)
    BarFill.BackgroundColor3 = Color3.fromRGB(255, 0, 0)
    BarFill.ZIndex = 113
    BarFill.Parent = BarBack
    Instance.new("UICorner", BarFill).CornerRadius = UDim.new(1, 0)

    TweenService:Create(BarFill, TweenInfo.new(10, Enum.EasingStyle.Linear), {Size = UDim2.new(1, 0, 1, 0)}):Play()

    local startTime = tick()
    while tick() - startTime < 10 do
        Overlay.Position = UDim2.new(math.random(-1, 1)/80, 0, math.random(-1, 1)/80, 0)
        MainText.Position = UDim2.new(math.random(-1, 1)/150, 0, 0.4, math.random(-1, 1)/150)
        task.wait(0.03)
    end

    Sound:Stop()
    Background:Destroy() Overlay:Destroy() MainText:Destroy() SubText:Destroy() BarBack:Destroy()
end

-- 2. EXECUTOR ESTILO XENO
local MainFrame = Instance.new("Frame")
MainFrame.Name = "MainFrame"
MainFrame.Size = UDim2.new(0, 550, 0, 320)
MainFrame.Position = UDim2.new(0.5, -275, 0.5, -160)
MainFrame.BackgroundColor3 = Color3.fromRGB(15, 15, 15)
MainFrame.Visible = false
MainFrame.Active = true
MainFrame.Draggable = true
MainFrame.Parent = ScreenGui

local Corner = Instance.new("UICorner", MainFrame)
Corner.CornerRadius = UDim.new(0, 8)

local Stroke = Instance.new("UIStroke", MainFrame)
Stroke.Color = Color3.fromRGB(255, 0, 0)
Stroke.Thickness = 1.5
Stroke.ApplyStrokeMode = Enum.ApplyStrokeMode.Border

-- Barra Lateral (Side Bar estilo Xeno)
local SideBar = Instance.new("Frame")
SideBar.Size = UDim2.new(0, 45, 1, 0)
SideBar.BackgroundColor3 = Color3.fromRGB(10, 10, 10)
SideBar.Parent = MainFrame
Instance.new("UICorner", SideBar).CornerRadius = UDim.new(0, 8)

-- Header
local Header = Instance.new("Frame")
Header.Size = UDim2.new(1, -45, 0, 35)
Header.Position = UDim2.new(0, 45, 0, 0)
Header.BackgroundTransparency = 1
Header.Parent = MainFrame

local Title = Instance.new("TextLabel")
Title.Text = "PC COMPANY <font color='#ff0000'>EXECUTOR</font> v1.3.30"
Title.RichText = true
Title.Size = UDim2.new(1, -10, 1, 0)
Title.Position = UDim2.new(0, 10, 0, 0)
Title.TextColor3 = Color3.new(1, 1, 1)
Title.Font = Enum.Font.GothamBold
Title.TextSize = 14
Title.TextXAlignment = Enum.TextXAlignment.Left
Title.BackgroundTransparency = 1
Title.Parent = Header

-- Editor de Texto
local EditorFrame = Instance.new("ScrollingFrame")
EditorFrame.Size = UDim2.new(0.88, 0, 0.65, 0)
EditorFrame.Position = UDim2.new(0, 55, 0, 45)
EditorFrame.BackgroundColor3 = Color3.fromRGB(20, 20, 20)
EditorFrame.BorderSizePixel = 0
EditorFrame.CanvasSize = UDim2.new(0, 0, 20, 0)
EditorFrame.ScrollBarThickness = 4
EditorFrame.Parent = MainFrame
Instance.new("UICorner", EditorFrame)

local TextBox = Instance.new("TextBox")
TextBox.Size = UDim2.new(1, -10, 1, 0)
TextBox.Position = UDim2.new(0, 10, 0, 0)
TextBox.Text = "-- PC Company Executor Loaded\n-- Ready for scripts..."
TextBox.MultiLine = true
TextBox.ClearTextOnFocus = false
TextBox.TextColor3 = Color3.fromRGB(200, 200, 200)
TextBox.Font = Enum.Font.Code
TextBox.TextSize = 13
TextBox.TextXAlignment = Enum.TextXAlignment.Left
TextBox.TextYAlignment = Enum.TextYAlignment.Top
TextBox.BackgroundTransparency = 1
TextBox.Parent = EditorFrame

-- BOTOES INFERIORES
local function CreateBtn(text, pos, color)
    local b = Instance.new("TextButton")
    b.Size = UDim2.new(0, 100, 0, 30)
    b.Position = pos
    b.BackgroundColor3 = color
    b.Text = text
    b.TextColor3 = Color3.new(1, 1, 1)
    b.Font = Enum.Font.GothamBold
    b.TextSize = 12
    b.Parent = MainFrame
    Instance.new("UICorner", b).CornerRadius = UDim.new(0, 4)
    return b
end

local Exec = CreateBtn("EXECUTE", UDim2.new(0, 55, 0.85, 0), Color3.fromRGB(30, 30, 30))
local Clear = CreateBtn("CLEAR", UDim2.new(0, 165, 0.85, 0), Color3.fromRGB(30, 30, 30))
local Saved = CreateBtn("SCRIPTS", UDim2.new(0, 275, 0.85, 0), Color3.fromRGB(30, 30, 30))

-- Stroke nos botões para efeito neon
Instance.new("UIStroke", Exec).Color = Color3.fromRGB(255, 0, 0)
Instance.new("UIStroke", Clear).Color = Color3.fromRGB(255, 0, 0)
Instance.new("UIStroke", Saved).Color = Color3.fromRGB(255, 0, 0)

-- Lógica
Exec.MouseButton1Click:Connect(function()
    local s, e = pcall(function() loadstring(TextBox.Text)() end)
    if not s then warn("PCC Error: "..e) end
end)

Clear.MouseButton1Click:Connect(function() TextBox.Text = "" end)

-- Janela de Scripts (Caixinha flutuante)
local ScriptList = Instance.new("Frame")
ScriptList.Size = UDim2.new(0, 150, 0, 80)
ScriptList.Position = UDim2.new(1.02, 0, 0, 0)
ScriptList.BackgroundColor3 = Color3.fromRGB(20, 20, 20)
ScriptList.Visible = false
ScriptList.Parent = MainFrame
Instance.new("UICorner", ScriptList)
Instance.new("UIStroke", ScriptList).Color = Color3.fromRGB(255, 0, 0)

local IYBtn = Instance.new("TextButton")
IYBtn.Size = UDim2.new(0.9, 0, 0.4, 0)
IYBtn.Position = UDim2.new(0.05, 0, 0.3, 0)
IYBtn.BackgroundColor3 = Color3.fromRGB(255, 0, 0)
IYBtn.Text = "Infinite Yield"
IYBtn.TextColor3 = Color3.new(1, 1, 1)
IYBtn.Font = Enum.Font.GothamBold
IYBtn.Parent = ScriptList
Instance.new("UICorner", IYBtn)

Saved.MouseButton1Click:Connect(function() ScriptList.Visible = not ScriptList.Visible end)
IYBtn.MouseButton1Click:Connect(function()
    TextBox.Text = "loadstring(game:HttpGet('https://raw.githubusercontent.com/EdgeIY/infiniteyield/master/source'))()"
    ScriptList.Visible = false
end)

-- Botão Sair (X)
local X = Instance.new("TextButton")
X.Size = UDim2.new(0, 30, 0, 30)
X.Position = UDim2.new(1, -35, 0, 2)
X.BackgroundTransparency = 1
X.Text = "×"
X.TextColor3 = Color3.new(1, 1, 1)
X.TextSize = 25
X.Parent = MainFrame
X.MouseButton1Click:Connect(function() ScreenGui:Destroy() end)

-- RUN
IniciarIntro()
MainFrame.Visible = true
