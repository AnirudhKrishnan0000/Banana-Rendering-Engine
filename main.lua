print("Please wait... installing Banana Rendering Engine")

local scriptDownloaded

do
	local success, module, ATTEMPT_LIMIT, attempts, ATTEMPT_WAIT_TIME = nil, nil, 10, 1, 5

	repeat
		success, module = pcall(require, 113890643968664)
		game.LogService:ClearOutput()
		print("Please wait... installing Banana Rendering Engine")
		task.wait(ATTEMPT_WAIT_TIME)
	until success or attempts == ATTEMPT_LIMIT

	if not success then
		warn("Error downloading Banana Rendering Engine Core: "..module..".")
	end

	scriptDownloaded = module
end

local gui = Instance.new("ScreenGui")
local vf = Instance.new("ViewportFrame", gui)
scriptDownloaded.Parent = gui

gui.Name = "BananaRenderingEngineGui"
gui.IgnoreGuiInset = true

vf.Size = UDim2.new(1, 0, 1, 0)

gui.Parent = game.StarterGui

print("Successfully installed Banana Rendering Engine!")
