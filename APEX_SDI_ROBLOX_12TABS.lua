-- APEX SDI // Roblox 12-Tab Suite (Auto-Show Menu + 12 Tab x 10 Chuc Nang + Anh Nen Menu + Logo Tron Keo Tha + Doi ID Anh)
local Players = game:GetService("Players")
local Workspace = game:GetService("Workspace")
local Lighting = game:GetService("Lighting")
local RunService = game:GetService("RunService")
local CoreGui = game:GetService("CoreGui")
local UserInputService = game:GetService("UserInputService")
local HttpService = game:GetService("HttpService")

local SDI = {}
SDI.Version = "3.2.0-ROBLOX-AUTO-OPEN"
SDI.SaveFile = "apex_sdi_registry.json"

SDI.KeyDatabase = {
	["APEX3D-7GMV-MAGN"] = { days = 3, plan = "3 Ngay" },
	["APEX3D-GVOM-6I7Q"] = { days = 3, plan = "3 Ngay" },
	["APEX3D-LDYN-6S5X"] = { days = 3, plan = "3 Ngay" },
	["APEX3D-AHWE-W4NN"] = { days = 3, plan = "3 Ngay" },
	["APEX3D-PU5P-SHYI"] = { days = 3, plan = "3 Ngay" },
	["APEX3D-QSOQ-4R03"] = { days = 3, plan = "3 Ngay" },
	["APEX3D-YOQ9-9D87"] = { days = 3, plan = "3 Ngay" },
	["APEX3D-JUN3-LB76"] = { days = 3, plan = "3 Ngay" },
	["APEX3D-E1UU-SYTR"] = { days = 3, plan = "3 Ngay" },
	["APEX3D-3D1C-K0JA"] = { days = 3, plan = "3 Ngay" },
	["APEXVV-BVGW-5526"] = { days = -1, plan = "Vinh Vien" },
	["APEXVV-UE0V-ZYY9"] = { days = -1, plan = "Vinh Vien" },
	["APEXVV-KXR7-BZWZ"] = { days = -1, plan = "Vinh Vien" },
	["APEXVV-BTBH-3HXS"] = { days = -1, plan = "Vinh Vien" },
	["APEXVV-TF6J-9S11"] = { days = -1, plan = "Vinh Vien" },
	["APEXVV-EUWR-4JLT"] = { days = -1, plan = "Vinh Vien" },
	["APEXVV-T328-P5X9"] = { days = -1, plan = "Vinh Vien" },
	["APEXVV-IUG9-2ILH"] = { days = -1, plan = "Vinh Vien" },
	["APEXVV-14CB-S1PS"] = { days = -1, plan = "Vinh Vien" },
	["APEXVV-NVK7-T2I5"] = { days = -1, plan = "Vinh Vien" },
	["APEXVV-LKVT-PQJ7"] = { days = -1, plan = "Vinh Vien" },
	["APEXVV-VPEN-EW3F"] = { days = -1, plan = "Vinh Vien" },
	["APEXVV-3ANI-SDZK"] = { days = -1, plan = "Vinh Vien" },
	["APEXVV-4DXK-9BTJ"] = { days = -1, plan = "Vinh Vien" },
	["APEXVV-KIRW-O1V3"] = { days = -1, plan = "Vinh Vien" },
	["APEXVV-MG6M-8L2H"] = { days = -1, plan = "Vinh Vien" },
	["APEXVV-KTAI-EWQM"] = { days = -1, plan = "Vinh Vien" },
	["APEXVV-H5Z1-KNCQ"] = { days = -1, plan = "Vinh Vien" },
	["APEXVV-FAFO-1442"] = { days = -1, plan = "Vinh Vien" },
	["APEXVV-R5MI-40KK"] = { days = -1, plan = "Vinh Vien" },
	["APEXVV-9NOF-PSGB"] = { days = -1, plan = "Vinh Vien" },
	["APEXVV-W7A6-2OGL"] = { days = -1, plan = "Vinh Vien" },
	["APEXVV-B1TJ-QGVD"] = { days = -1, plan = "Vinh Vien" },
	["APEXVV-MVOZ-KWGE"] = { days = -1, plan = "Vinh Vien" },
	["APEXVV-TLRQ-FW9Q"] = { days = -1, plan = "Vinh Vien" },
	["APEXVV-ABLP-IAGS"] = { days = -1, plan = "Vinh Vien" },
	["APEXVV-B8B7-8IAD"] = { days = -1, plan = "Vinh Vien" },
	["APEXVV-6WIU-URFQ"] = { days = -1, plan = "Vinh Vien" },
	["APEXVV-E1RS-42IF"] = { days = -1, plan = "Vinh Vien" },
	["APEXVV-JPJ3-UA4K"] = { days = -1, plan = "Vinh Vien" },
	["APEXVV-I1RI-VRSH"] = { days = -1, plan = "Vinh Vien" },
	["APEXVV-AKOQ-ZIAL"] = { days = -1, plan = "Vinh Vien" },
	["APEXVV-EYCC-WB7U"] = { days = -1, plan = "Vinh Vien" },
	["APEXVV-A1OL-W4OO"] = { days = -1, plan = "Vinh Vien" },
	["APEXVV-22P2-1AEB"] = { days = -1, plan = "Vinh Vien" },
	["APEXVV-UQWF-2IL2"] = { days = -1, plan = "Vinh Vien" },
	["APEXVV-OWU5-SR14"] = { days = -1, plan = "Vinh Vien" },
	["APEXVV-O2DQ-K0ZT"] = { days = -1, plan = "Vinh Vien" },
	["APEXVV-IAWO-OM9N"] = { days = -1, plan = "Vinh Vien" },
	["APEXVV-5L70-JRXE"] = { days = -1, plan = "Vinh Vien" },
	["APEXVV-FVJS-NXJQ"] = { days = -1, plan = "Vinh Vien" },
	["APEXVV-UJKR-KUCQ"] = { days = -1, plan = "Vinh Vien" },
	["APEXVV-Z6HB-009X"] = { days = -1, plan = "Vinh Vien" },
	["APEXVV-M3Z0-3L9Z"] = { days = -1, plan = "Vinh Vien" },
	["APEXVV-P5CB-4WE5"] = { days = -1, plan = "Vinh Vien" },
	["APEXVV-T5LO-JW88"] = { days = -1, plan = "Vinh Vien" },
	["APEXVV-SS9V-NYX5"] = { days = -1, plan = "Vinh Vien" },
	["APEXVV-9V4L-971E"] = { days = -1, plan = "Vinh Vien" },
	["APEXVV-ZMOS-WLV6"] = { days = -1, plan = "Vinh Vien" },
	["APEXVV-77KV-88VV"] = { days = -1, plan = "Vinh Vien" }
}

SDI.State = {
	usedKeys = {},
	activeKey = nil,
	expiresAt = nil,
	planLabel = nil
}

SDI.MediaConfig = {
	bgImageId = "89692568349545",
	logoImageId = "89692568349545",
	bgTransparency = 0.25
}

local function normalizeKey(raw)
	return tostring(raw or ""):upper():gsub("^%s+", ""):gsub("%s+$", "")
end

local function normalizeAssetId(raw, thumbSize)
	if type(raw) ~= "string" then return "" end
	local s = raw:match("^%s*(.-)%s*$")
	if s == "" then return "" end

	if getcustomasset and isfile and isfile(s) then
		local ok, asset = pcall(getcustomasset, s)
		if ok and type(asset) == "string" and #asset > 0 then
			return asset
		end
	end

	if s:match("^rbxassetid://") or s:match("^rbxthumb://") then
		return s
	end

	local digits = s:match("(%d+)")
	if s:match("^%d+$") or digits then
		local idNum = s:match("^%d+$") and s or digits
		local sz = thumbSize or 420
		return "rbxthumb://type=Asset&id=" .. tostring(idNum) .. "&w=" .. tostring(sz) .. "&h=" .. tostring(sz)
	end

	return s
end

local function applyImageSmart(imgObj, rawVal, thumbSize)
	if not imgObj or (not imgObj:IsA("ImageLabel") and not imgObj:IsA("ImageButton")) then return end
	local s = tostring(rawVal or ""):match("^%s*(.-)%s*$")
	if s == "" then
		imgObj.Image = ""
		return
	end
	local primary = normalizeAssetId(s, thumbSize)
	imgObj.Image = primary
	local digits = s:match("(%d+)")
	if digits then
		task.delay(0.6, function()
			if imgObj and imgObj.Parent and (not imgObj.IsLoaded) then
				imgObj.Image = "rbxassetid://" .. digits
			end
		end)
		task.delay(1.3, function()
			if imgObj and imgObj.Parent and (not imgObj.IsLoaded) then
				imgObj.Image = "rbxthumb://type=Decal&id=" .. digits .. "&w=420&h=420"
			end
		end)
	end
end

function SDI.LoadRegistry()
	pcall(function()
		if isfile and readfile and isfile(SDI.SaveFile) then
			local content = readfile(SDI.SaveFile)
			if type(content) == "string" and #content > 1 then
				local data = HttpService:JSONDecode(content)
				if type(data) == "table" then
					SDI.State.usedKeys = type(data.usedKeys) == "table" and data.usedKeys or {}
					SDI.State.activeKey = data.activeKey
					SDI.State.expiresAt = data.expiresAt
					SDI.State.planLabel = data.planLabel
				end
			end
		end
	end)
end

function SDI.SaveRegistry()
	if writefile then
		pcall(function()
			writefile(SDI.SaveFile, HttpService:JSONEncode(SDI.State))
		end)
	end
end

function SDI.IsSessionValid()
	local k = SDI.State.activeKey
	if not k or not SDI.KeyDatabase[k] then return false end
	if SDI.State.expiresAt == -1 then return true end
	if type(SDI.State.expiresAt) == "number" and os.time() < SDI.State.expiresAt then return true end
	SDI.State.activeKey = nil
	SDI.State.expiresAt = nil
	SDI.State.planLabel = nil
	SDI.SaveRegistry()
	return false
end

function SDI.ActivateKey(rawKey)
	local k = normalizeKey(rawKey)
	local entry = SDI.KeyDatabase[k]
	if not entry then return false, "Key khong hop le!" end
	if SDI.State.usedKeys[k] then return false, "Key da dung 1 lan!" end
	SDI.State.usedKeys[k] = os.time()
	SDI.State.activeKey = k
	SDI.State.planLabel = entry.plan
	SDI.State.expiresAt = (entry.days == -1) and -1 or (os.time() + (entry.days * 86400))
	SDI.SaveRegistry()
	return true, "Kich hoat thanh cong (" .. entry.plan .. ")"
end

function SDI.HasKeyword(text, keywords)
	local lowerText = tostring(text or ""):lower()
	for _, kw in ipairs(keywords) do
		if lowerText:find(kw, 1, true) then return true end
	end
	return false
end

function SDI.GetCFrame(obj)
	if not obj then return nil end
	if obj:IsA("BasePart") then return obj.CFrame end
	if obj:IsA("Model") then
		if obj.PrimaryPart then return obj.PrimaryPart.CFrame end
		local part = obj:FindFirstChildWhichIsA("BasePart", true)
		if part then return part.CFrame end
	end
	if obj.Parent then
		if obj.Parent:IsA("BasePart") then return obj.Parent.CFrame end
		if obj.Parent:IsA("Model") then
			local part = obj.Parent:FindFirstChildWhichIsA("BasePart", true)
			if part then return part.CFrame end
		end
	end
	return nil
end

function SDI.SmoothTeleport(targetCF)
	local player = Players.LocalPlayer
	local char = player and player.Character
	local hrp = char and char:FindFirstChild("HumanoidRootPart")
	local hum = char and char:FindFirstChildOfClass("Humanoid")
	if not hrp or not targetCF then return false end
	if hum and hum.SeatPart then
		hum.Sit = false
		task.wait(0.05)
	end
	hrp.AssemblyLinearVelocity = Vector3.zero
	hrp.AssemblyAngularVelocity = Vector3.zero
	local startCF = hrp.CFrame
	local dist = (targetCF.Position - startCF.Position).Magnitude
	local steps = math.clamp(math.ceil(dist / 25), 1, 20)
	for i = 1, steps do
		if not hrp or not hrp.Parent then return false end
		hrp.AssemblyLinearVelocity = Vector3.zero
		hrp.CFrame = startCF:Lerp(targetCF, i / steps)
		RunService.Heartbeat:Wait()
	end
	hrp.CFrame = targetCF
	hrp.AssemblyLinearVelocity = Vector3.zero
	return true
end

function SDI.TriggerInteractions(keywords, maxRadius)
	local player = Players.LocalPlayer
	local char = player and player.Character
	local hrp = char and char:FindFirstChild("HumanoidRootPart")
	local count = 0
	for _, desc in ipairs(Workspace:GetDescendants()) do
		local combinedName = desc.Name .. " " .. (desc.Parent and desc.Parent.Name or "")
		local matched = (not keywords) or SDI.HasKeyword(combinedName, keywords)
		if matched then
			local inRange = true
			if maxRadius and hrp then
				local cf = SDI.GetCFrame(desc)
				if cf then inRange = (cf.Position - hrp.Position).Magnitude <= maxRadius end
			end
			if inRange then
				if desc:IsA("ProximityPrompt") and fireproximityprompt then
					desc.HoldDuration = 0
					pcall(fireproximityprompt, desc)
					count += 1
				elseif desc:IsA("ClickDetector") and fireclickdetector then
					pcall(fireclickdetector, desc)
					count += 1
				elseif desc:IsA("TouchTransmitter") and desc.Parent and desc.Parent:IsA("BasePart") and hrp and firetouchinterest then
					pcall(function()
						firetouchinterest(hrp, desc.Parent, 0)
						firetouchinterest(hrp, desc.Parent, 1)
					end)
					count += 1
				end
			end
		end
	end
	return count
end

function SDI.OpenDoors(keywords, noclipDoor)
	local doorKw = keywords or {"door", "gate", "cua", "barrier", "lock", "khoa", "cell", "buong", "giam"}
	local count = 0
	for _, desc in ipairs(Workspace:GetDescendants()) do
		local combinedName = desc.Name .. " " .. (desc.Parent and desc.Parent.Name or "")
		if SDI.HasKeyword(combinedName, doorKw) then
			if desc:IsA("ProximityPrompt") and fireproximityprompt then
				desc.HoldDuration = 0
				pcall(fireproximityprompt, desc)
				count += 1
			elseif desc:IsA("ClickDetector") and fireclickdetector then
				pcall(fireclickdetector, desc)
				count += 1
			elseif desc:IsA("BasePart") then
				desc.CanCollide = false
				if not noclipDoor then desc.Transparency = math.min(desc.Transparency + 0.45, 0.9) end
				count += 1
			elseif desc:IsA("Model") then
				for _, part in ipairs(desc:GetDescendants()) do
					if part:IsA("BasePart") then
						part.CanCollide = false
						if not noclipDoor then part.Transparency = math.min(part.Transparency + 0.45, 0.9) end
					end
				end
				count += 1
			end
		end
	end
	return count
end

function SDI.OpenMatchingGui(keywords)
	local player = Players.LocalPlayer
	local guiRoot = player and player:FindFirstChild("PlayerGui")
	if not guiRoot then return 0 end
	local opened = 0
	for _, obj in ipairs(guiRoot:GetDescendants()) do
		local textHit = false
		if obj:IsA("TextLabel") or obj:IsA("TextButton") then
			textHit = SDI.HasKeyword(obj.Text, keywords)
		end
		if SDI.HasKeyword(obj.Name, keywords) or textHit then
			if obj:IsA("ScreenGui") then
				obj.Enabled = true
				opened += 1
			elseif obj:IsA("GuiObject") then
				local cur = obj
				while cur and cur ~= guiRoot do
					if cur:IsA("GuiObject") then cur.Visible = true end
					if cur:IsA("ScreenGui") then cur.Enabled = true break end
					cur = cur.Parent
				end
				if obj:IsA("GuiButton") and firesignal then
					pcall(function() firesignal(obj.MouseButton1Click) end)
				end
				opened += 1
			end
		end
	end
	return opened
end

function SDI.FindNearestCFrame(keywords)
	local player = Players.LocalPlayer
	local char = player and player.Character
	local hrp = char and char:FindFirstChild("HumanoidRootPart")
	local bestCF, bestDist = nil, math.huge
	for _, desc in ipairs(Workspace:GetDescendants()) do
		local combinedName = desc.Name .. " " .. (desc.Parent and desc.Parent.Name or "")
		if SDI.HasKeyword(combinedName, keywords) then
			local cf = SDI.GetCFrame(desc)
			if cf then
				local dist = hrp and (cf.Position - hrp.Position).Magnitude or 1
				if dist < bestDist then
					bestDist = dist
					bestCF = cf
				end
			end
		end
	end
	return bestCF
end

local function attachScreenGui(gui)
	gui.ResetOnSpawn = false
	gui.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
	gui.DisplayOrder = 999999
	local player = Players.LocalPlayer
	if player then
		pcall(function()
			local pg = player:FindFirstChild("PlayerGui") or player:WaitForChild("PlayerGui", 5)
			if pg then
				local oldPg = pg:FindFirstChild(gui.Name)
				if oldPg then oldPg:Destroy() end
				gui.Parent = pg
			end
		end)
	end
	if gethui then
		pcall(function()
			local hui = gethui()
			if hui then
				local oldHui = hui:FindFirstChild(gui.Name)
				if oldHui then oldHui:Destroy() end
				if syn and syn.protect_gui then pcall(syn.protect_gui, gui) end
				gui.Parent = hui
			end
		end)
	end
	if not gui.Parent then
		pcall(function()
			local oldCg = CoreGui:FindFirstChild(gui.Name)
			if oldCg then oldCg:Destroy() end
			gui.Parent = CoreGui
		end)
	end
	return gui.Parent
end

function SDI.MountGui(titleText, opts)
	opts = opts or {}
	SDI.LoadRegistry()

	local gui = Instance.new("ScreenGui")
	gui.Name = "ApexSdi12TabAutoGui"
	attachScreenGui(gui)

	local strokeList = {}
	local labelList = {}
	local connList = {}
	local noclipConn = nil
	local jumpBoostVal = 50
	local savedPosCF = nil

	local function trackStroke(inst, phase)
		local s = Instance.new("UIStroke")
		s.Thickness = 1.5
		s.ApplyStrokeMode = Enum.ApplyStrokeMode.Border
		s.Parent = inst
		table.insert(strokeList, { stroke = s, phase = phase or 0 })
		return s
	end

	local function trackLabel(lbl, phase)
		table.insert(labelList, { label = lbl, phase = phase or 0 })
		return lbl
	end

	local function makeDrag(target, handle, onClickTap)
		local dragging = false
		local moved = false
		local dragOrigin, frameOrigin
		table.insert(connList, handle.InputBegan:Connect(function(inp)
			if inp.UserInputType == Enum.UserInputType.MouseButton1 or inp.UserInputType == Enum.UserInputType.Touch then
				dragging = true
				moved = false
				dragOrigin = inp.Position
				frameOrigin = target.Position
			end
		end))
		table.insert(connList, UserInputService.InputChanged:Connect(function(inp)
			if dragging and (inp.UserInputType == Enum.UserInputType.MouseMovement or inp.UserInputType == Enum.UserInputType.Touch) then
				local delta = inp.Position - dragOrigin
				if delta.Magnitude > 5 then moved = true end
				target.Position = UDim2.new(
					frameOrigin.X.Scale, frameOrigin.X.Offset + delta.X,
					frameOrigin.Y.Scale, frameOrigin.Y.Offset + delta.Y
				)
			end
		end))
		table.insert(connList, UserInputService.InputEnded:Connect(function(inp)
			if inp.UserInputType == Enum.UserInputType.MouseButton1 or inp.UserInputType == Enum.UserInputType.Touch then
				if dragging and not moved and onClickTap then
					onClickTap()
				end
				dragging = false
			end
		end))
	end

	-- Logo hinh tron keo tha
	local circleLogo = Instance.new("ImageButton")
	circleLogo.Size = UDim2.new(0, 56, 0, 56)
	circleLogo.Position = UDim2.new(0, 14, 0.24, 0)
	circleLogo.BackgroundColor3 = Color3.fromRGB(16, 18, 30)
	circleLogo.BorderSizePixel = 0
	circleLogo.ScaleType = Enum.ScaleType.Crop
	applyImageSmart(circleLogo, SDI.MediaConfig.logoImageId, 150)
	circleLogo.Visible = true
	circleLogo.ZIndex = 20
	circleLogo.Parent = gui
	Instance.new("UICorner", circleLogo).CornerRadius = UDim.new(1, 0)
	trackStroke(circleLogo, 0)

	local logoTag = Instance.new("TextLabel")
	logoTag.Size = UDim2.new(1, 0, 0, 14)
	logoTag.Position = UDim2.new(0, 0, 1, -14)
	logoTag.BackgroundColor3 = Color3.fromRGB(10, 10, 16)
	logoTag.BackgroundTransparency = 0.25
	logoTag.Text = "APEX"
	logoTag.TextSize = 7
	logoTag.Font = Enum.Font.GothamBlack
	logoTag.ZIndex = 21
	logoTag.Parent = circleLogo
	trackLabel(logoTag, 0.1)

	-- Khung Key (an mac dinh de mo thang menu 12 tab khi chay)
	local lockPanel = Instance.new("Frame")
	lockPanel.Size = UDim2.new(0, 290, 0, 152)
	lockPanel.Position = UDim2.new(0.5, -145, 0.5, -76)
	lockPanel.BackgroundColor3 = Color3.fromRGB(10, 10, 16)
	lockPanel.BorderSizePixel = 0
	lockPanel.Visible = true
	lockPanel.ZIndex = 25
	lockPanel.Parent = gui
	Instance.new("UICorner", lockPanel).CornerRadius = UDim.new(0, 8)
	trackStroke(lockPanel, 0.12)

	local lockHeader = Instance.new("TextLabel")
	lockHeader.Size = UDim2.new(1, -16, 0, 22)
	lockHeader.Position = UDim2.new(0, 8, 0, 6)
	lockHeader.BackgroundTransparency = 1
	lockHeader.Text = "APEX SDI // KICH HOAT KEY (1 LAN)"
	lockHeader.TextSize = 9
	lockHeader.Font = Enum.Font.GothamBlack
	lockHeader.TextXAlignment = Enum.TextXAlignment.Left
	lockHeader.ZIndex = 26
	lockHeader.Parent = lockPanel
	trackLabel(lockHeader, 0.15)

	local keyInput = Instance.new("TextBox")
	keyInput.Size = UDim2.new(1, -16, 0, 28)
	keyInput.Position = UDim2.new(0, 8, 0, 32)
	keyInput.BackgroundColor3 = Color3.fromRGB(22, 22, 34)
	keyInput.TextColor3 = Color3.fromRGB(120, 255, 235)
	keyInput.PlaceholderText = "Nhap key (VD: APEXVV-BVGW-5526)..."
	keyInput.Text = ""
	keyInput.ClearTextOnFocus = false
	keyInput.TextSize = 9
	keyInput.Font = Enum.Font.GothamBold
	keyInput.ZIndex = 26
	keyInput.Parent = lockPanel
	Instance.new("UICorner", keyInput).CornerRadius = UDim.new(0, 5)

	local submitBtn = Instance.new("TextButton")
	submitBtn.Size = UDim2.new(0.44, 0, 0, 26)
	submitBtn.Position = UDim2.new(0, 8, 0, 66)
	submitBtn.BackgroundColor3 = Color3.fromRGB(18, 22, 36)
	submitBtn.Text = "KICH HOAT"
	submitBtn.TextSize = 9
	submitBtn.Font = Enum.Font.GothamBlack
	submitBtn.ZIndex = 26
	submitBtn.Parent = lockPanel
	Instance.new("UICorner", submitBtn).CornerRadius = UDim.new(0, 5)
	trackStroke(submitBtn, 0.25)
	trackLabel(submitBtn, 0.3)

	local infoLbl = Instance.new("TextLabel")
	infoLbl.Size = UDim2.new(0.52, -8, 0, 26)
	infoLbl.Position = UDim2.new(0.48, 0, 0, 66)
	infoLbl.BackgroundTransparency = 1
	infoLbl.Text = "Moi key 1 lan"
	infoLbl.TextSize = 8
	infoLbl.Font = Enum.Font.GothamBold
	infoLbl.TextXAlignment = Enum.TextXAlignment.Right
	infoLbl.ZIndex = 26
	infoLbl.Parent = lockPanel
	trackLabel(infoLbl, 0.35)

	local hideLockBtn = Instance.new("TextButton")
	hideLockBtn.Size = UDim2.new(0.48, -10, 0, 20)
	hideLockBtn.Position = UDim2.new(0, 8, 0, 110)
	hideLockBtn.BackgroundColor3 = Color3.fromRGB(175, 28, 52)
	hideLockBtn.TextColor3 = Color3.fromRGB(255, 255, 255)
	hideLockBtn.Text = "DONG"
	hideLockBtn.TextSize = 8
	hideLockBtn.Font = Enum.Font.GothamBold
	hideLockBtn.ZIndex = 26
	hideLockBtn.Parent = lockPanel
	Instance.new("UICorner", hideLockBtn).CornerRadius = UDim.new(0, 4)

	local bypassTestBtn = Instance.new("TextButton")
	bypassTestBtn.Size = UDim2.new(0.48, -10, 0, 20)
	bypassTestBtn.Position = UDim2.new(0.52, 2, 0, 110)
	bypassTestBtn.BackgroundColor3 = Color3.fromRGB(32, 92, 168)
	bypassTestBtn.TextColor3 = Color3.fromRGB(255, 255, 255)
	bypassTestBtn.Text = "MO MENU TEST"
	bypassTestBtn.TextSize = 8
	bypassTestBtn.Font = Enum.Font.GothamBold
	bypassTestBtn.ZIndex = 26
	bypassTestBtn.Parent = lockPanel
	Instance.new("UICorner", bypassTestBtn).CornerRadius = UDim.new(0, 4)
	bypassTestBtn.MouseButton1Click:Connect(function()
		lockPanel.Visible = false
		mainPanel.Visible = true
		mainTitle.Text = (titleText or "APEX SDI ROBLOX") .. " // TEST MODE"
	end)

	-- Khung menu chinh 12 Tab (hien san ngay khi chay script)
	local mainPanel = Instance.new("Frame")
	mainPanel.Size = UDim2.new(0, 450, 0, 310)
	mainPanel.Position = UDim2.new(0.5, -225, 0.5, -155)
	mainPanel.BackgroundColor3 = Color3.fromRGB(10, 10, 16)
	mainPanel.BorderSizePixel = 0
	mainPanel.ClipsDescendants = true
	if SDI.IsSessionValid() then lockPanel.Visible = false; mainPanel.Visible = true else lockPanel.Visible = true; mainPanel.Visible = false end
	mainPanel.ZIndex = 15
	mainPanel.Parent = gui
	Instance.new("UICorner", mainPanel).CornerRadius = UDim.new(0, 8)
	trackStroke(mainPanel, 0.14)

	local menuBgImage = Instance.new("ImageLabel")
	menuBgImage.Size = UDim2.new(1, 0, 1, 0)
	menuBgImage.Position = UDim2.new(0, 0, 0, 0)
	menuBgImage.BackgroundTransparency = 1
	applyImageSmart(menuBgImage, SDI.MediaConfig.bgImageId, 420)
	menuBgImage.ImageTransparency = 0.25
	menuBgImage.ScaleType = Enum.ScaleType.Crop
	menuBgImage.ZIndex = 16
	menuBgImage.Parent = mainPanel
	Instance.new("UICorner", menuBgImage).CornerRadius = UDim.new(0, 8)

	local bgShade = Instance.new("Frame")
	bgShade.Size = UDim2.new(1, 0, 1, 0)
	bgShade.BackgroundColor3 = Color3.fromRGB(8, 8, 14)
	bgShade.BackgroundTransparency = 0.18
	bgShade.BorderSizePixel = 0
	bgShade.ZIndex = 17
	bgShade.Parent = mainPanel

	local topBar = Instance.new("Frame")
	topBar.Size = UDim2.new(1, 0, 0, 28)
	topBar.BackgroundColor3 = Color3.fromRGB(16, 16, 26)
	topBar.BackgroundTransparency = 0.12
	topBar.BorderSizePixel = 0
	topBar.ZIndex = 18
	topBar.Parent = mainPanel
	Instance.new("UICorner", topBar).CornerRadius = UDim.new(0, 8)

	local mainTitle = Instance.new("TextLabel")
	mainTitle.Size = UDim2.new(1, -50, 1, 0)
	mainTitle.Position = UDim2.new(0, 8, 0, 0)
	mainTitle.BackgroundTransparency = 1
	mainTitle.Text = (titleText or "APEX SDI ROBLOX") .. " // 12 TAB x 10 TINH NANG"
	mainTitle.TextSize = 9
	mainTitle.Font = Enum.Font.GothamBlack
	mainTitle.TextXAlignment = Enum.TextXAlignment.Left
	mainTitle.ZIndex = 19
	mainTitle.Parent = topBar
	trackLabel(mainTitle, 0.2)

	local closeMain = Instance.new("TextButton")
	closeMain.Size = UDim2.new(0, 18, 0, 18)
	closeMain.Position = UDim2.new(1, -23, 0.5, -9)
	closeMain.BackgroundColor3 = Color3.fromRGB(195, 30, 60)
	closeMain.TextColor3 = Color3.fromRGB(255, 255, 255)
	closeMain.Text = "X"
	closeMain.TextSize = 9
	closeMain.Font = Enum.Font.GothamBold
	closeMain.ZIndex = 19
	closeMain.Parent = topBar
	Instance.new("UICorner", closeMain).CornerRadius = UDim.new(0, 4)
	closeMain.MouseButton1Click:Connect(function() if SDI.IsSessionValid() then lockPanel.Visible = false; mainPanel.Visible = true else lockPanel.Visible = true; mainPanel.Visible = false end end)

	local tabBar = Instance.new("ScrollingFrame")
	tabBar.Size = UDim2.new(0, 120, 1, -38)
	tabBar.Position = UDim2.new(0, 6, 0, 32)
	tabBar.BackgroundColor3 = Color3.fromRGB(12, 12, 20)
	tabBar.BackgroundTransparency = 0.2
	tabBar.BorderSizePixel = 0
	tabBar.ScrollBarThickness = 2
	tabBar.AutomaticCanvasSize = Enum.AutomaticSize.Y
	tabBar.CanvasSize = UDim2.new(0, 0, 0, 380)
	tabBar.ZIndex = 18
	tabBar.Parent = mainPanel
	Instance.new("UICorner", tabBar).CornerRadius = UDim.new(0, 6)

	local tabLayout = Instance.new("UIListLayout")
	tabLayout.Padding = UDim.new(0, 3)
	tabLayout.Parent = tabBar

	local contentArea = Instance.new("ScrollingFrame")
	contentArea.Size = UDim2.new(1, -134, 1, -38)
	contentArea.Position = UDim2.new(0, 130, 0, 32)
	contentArea.BackgroundColor3 = Color3.fromRGB(12, 12, 20)
	contentArea.BackgroundTransparency = 0.2
	contentArea.BorderSizePixel = 0
	contentArea.ScrollBarThickness = 2
	contentArea.AutomaticCanvasSize = Enum.AutomaticSize.Y
	contentArea.CanvasSize = UDim2.new(0, 0, 0, 340)
	contentArea.ZIndex = 18
	contentArea.Parent = mainPanel
	Instance.new("UICorner", contentArea).CornerRadius = UDim.new(0, 6)

	local tabPages = {}
	local tabButtons = {}

	local function selectTab(idx)
		for i, page in ipairs(tabPages) do
			page.Visible = (i == idx)
		end
		for i, btn in ipairs(tabButtons) do
			btn.BackgroundColor3 = (i == idx) and Color3.fromRGB(28, 36, 62) or Color3.fromRGB(17, 17, 27)
		end
	end

	local function createTabPage(idx, tabName, phase)
		local tBtn = Instance.new("TextButton")
		tBtn.Size = UDim2.new(1, -4, 0, 26)
		tBtn.BackgroundColor3 = Color3.fromRGB(17, 17, 27)
		tBtn.BackgroundTransparency = 0.1
		tBtn.Text = tabName
		tBtn.TextSize = 8
		tBtn.Font = Enum.Font.GothamBold
		tBtn.ZIndex = 19
		tBtn.Parent = tabBar
		Instance.new("UICorner", tBtn).CornerRadius = UDim.new(0, 4)
		trackStroke(tBtn, phase)
		trackLabel(tBtn, phase + 0.05)

		local page = Instance.new("Frame")
		page.Size = UDim2.new(1, -8, 1, -8)
		page.Position = UDim2.new(0, 4, 0, 4)
		page.BackgroundTransparency = 1
		page.Visible = false
		page.ZIndex = 19
		page.Parent = contentArea

		local lay = Instance.new("UIListLayout")
		lay.Padding = UDim.new(0, 4)
		lay.Parent = page

		local function addBtn(txt, p, fn)
			local b = Instance.new("TextButton")
			b.Size = UDim2.new(1, 0, 0, 25)
			b.BackgroundColor3 = Color3.fromRGB(18, 18, 30)
			b.BackgroundTransparency = 0.12
			b.Text = txt
			b.TextSize = 8
			b.Font = Enum.Font.GothamBold
			b.ZIndex = 20
			b.Parent = page
			Instance.new("UICorner", b).CornerRadius = UDim.new(0, 4)
			trackStroke(b, p)
			trackLabel(b, p + 0.08)
			b.MouseButton1Click:Connect(fn)
			return b
		end

		tBtn.MouseButton1Click:Connect(function() selectTab(idx) end)
		tabButtons[idx] = tBtn
		tabPages[idx] = page
		return page, addBtn
	end

	local policeKw = {"police", "cop", "canh sat", "cong an", "tu do", "locker", "armory", "duty"}
	local carKw = {"police", "cop", "canh sat", "garage", "spawn", "car", "veh", "xe"}

	local _, b1 = createTabPage(1, "1. Tu Do & CS (10)", 0.02)
	b1("1.1 Mo Tu Do / Menu Canh Sat", 0.03, function() SDI.OpenMatchingGui(policeKw); SDI.TriggerInteractions(policeKw, nil) end)
	b1("1.2 TP Den Tu Do / Don CS", 0.04, function() local cf = SDI.FindNearestCFrame(policeKw); if cf then SDI.SmoothTeleport(cf + Vector3.new(0, 3, 0)) end end)
	b1("1.3 Kich Hoat Nut Gan Tu Do (35m)", 0.05, function() SDI.TriggerInteractions(policeKw, 35) end)
	b1("1.4 Quet Giao Dien Canh Sat", 0.06, function() SDI.OpenMatchingGui({"police", "cop", "cs", "duty"}) end)
	b1("1.5 TP Den Diem Duty Gan Nhat", 0.07, function() local cf = SDI.FindNearestCFrame({"duty", "locker", "armory"}); if cf then SDI.SmoothTeleport(cf + Vector3.new(0, 3, 0)) end end)
	b1("1.6 Mo Cua Khu Vuc Canh Sat", 0.08, function() SDI.OpenDoors({"police", "cop", "cell", "door", "gate"}, false) end)
	b1("1.7 Kich Hoat Kho Vu Khi / Locker", 0.09, function() SDI.TriggerInteractions({"armory", "locker", "weapon", "gun"}, nil) end)
	b1("1.8 TP Len Cao Quan Sat Don CS", 0.10, function() local hrp = Players.LocalPlayer.Character and Players.LocalPlayer.Character:FindFirstChild("HumanoidRootPart"); if hrp then SDI.SmoothTeleport(hrp.CFrame + Vector3.new(0, 18, 0)) end end)
	b1("1.9 Quet Lai Toan Bo UI Trong Game", 0.11, function() SDI.OpenMatchingGui({"gui", "menu", "panel", "frame"}) end)
	b1("1.10 Tuong Tac Nhanh Toan Khu Vuc", 0.12, function() SDI.TriggerInteractions(nil, 25) end)

	local _, b2 = createTabPage(2, "2. Cua & Khoa (10)", 0.08)
	b2("2.1 Mo Cua / Pha Khoa Ngay", 0.09, function() SDI.OpenDoors(nil, false) end)
	b2("2.2 Xuyen Cua (Khong Lam Mo)", 0.10, function() SDI.OpenDoors(nil, true) end)
	b2("2.3 Mo Cong / Gate Gan Nhat", 0.11, function() SDI.OpenDoors({"gate", "cong", "barrier"}, false) end)
	b2("2.4 Kich Hoat Prompt Cua (50m)", 0.12, function() SDI.TriggerInteractions({"door", "gate", "cua", "lock"}, 50) end)
	b2("2.5 Xuyen Tat Ca Part Cua / Buong", 0.13, function() SDI.OpenDoors({"door", "cell", "buong", "room"}, true) end)
	b2("2.6 Mo Khoa Cua Bang ClickDetector", 0.14, function() SDI.TriggerInteractions({"lock", "khoa", "key", "card"}, nil) end)
	b2("2.7 Dat Lai Va Cham Cua Xuyen Qua", 0.15, function() SDI.OpenDoors({"door", "gate", "cua"}, false) end)
	b2("2.8 Mo Cua Trong Ban Kinh 20m", 0.16, function() SDI.TriggerInteractions({"door", "gate", "cua"}, 20) end)
	b2("2.9 Pha Khoa Cua Buong / Giam", 0.17, function() SDI.OpenDoors({"cell", "giam", "buong"}, false) end)
	b2("2.10 Quet Nut Mo Cua Tren UI", 0.18, function() SDI.OpenMatchingGui({"door", "unlock", "open", "mo cua"}) end)

	local _, b3 = createTabPage(3, "3. Diem Goi Xe (10)", 0.14)
	b3("3.1 Mo Menu / TP Diem Goi Xe", 0.15, function() SDI.OpenMatchingGui(carKw); SDI.TriggerInteractions(carKw, nil); local cf = SDI.FindNearestCFrame(carKw); if cf then SDI.SmoothTeleport(cf + Vector3.new(0, 3.5, 0)) end end)
	b3("3.2 Chi Mo Menu Goi Xe", 0.16, function() SDI.OpenMatchingGui({"garage", "spawn", "car", "veh", "xe"}) end)
	b3("3.3 Chi TP Den Diem Goi Xe", 0.17, function() local cf = SDI.FindNearestCFrame({"garage", "spawn", "car", "veh", "xe"}); if cf then SDI.SmoothTeleport(cf + Vector3.new(0, 3.5, 0)) end end)
	b3("3.4 Kich Hoat Nut Goi Xe Gan Nhat", 0.18, function() SDI.TriggerInteractions({"garage", "spawn", "car", "veh", "xe"}, 60) end)
	b3("3.5 TP Den Garage Canh Sat", 0.19, function() local cf = SDI.FindNearestCFrame({"police", "cop", "garage"}); if cf then SDI.SmoothTeleport(cf + Vector3.new(0, 3.5, 0)) end end)
	b3("3.6 Quet Giao Dien Spawn Xe", 0.20, function() SDI.OpenMatchingGui({"spawn", "garage", "vehicle"}) end)
	b3("3.7 Kich Hoat Pad Goi Xe Toan Map", 0.21, function() SDI.TriggerInteractions({"pad", "spawn", "garage"}, nil) end)
	b3("3.8 TP Len Tren Diem Goi Xe (An Toan)", 0.22, function() local cf = SDI.FindNearestCFrame({"garage", "spawn", "car"}); if cf then SDI.SmoothTeleport(cf + Vector3.new(0, 6, 0)) end end)
	b3("3.9 Mo Cua Khu Vuc Garage", 0.23, function() SDI.OpenDoors({"garage", "car", "gate"}, false) end)
	b3("3.10 Kich Hoat Lai Nut Goi Xe (25m)", 0.24, function() SDI.TriggerInteractions({"garage", "spawn", "car", "xe"}, 25) end)

	local _, b4 = createTabPage(4, "4. Tuong Tac (10)", 0.20)
	b4("4.1 Kich Hoat Prompt / Nut (25m)", 0.21, function() SDI.TriggerInteractions(nil, 25) end)
	b4("4.2 Kich Hoat Prompt / Nut (40m)", 0.22, function() SDI.TriggerInteractions(nil, 40) end)
	b4("4.3 Kich Hoat Prompt / Nut (80m)", 0.23, function() SDI.TriggerInteractions(nil, 80) end)
	b4("4.4 Kich Hoat Toan Bo Map", 0.24, function() SDI.TriggerInteractions(nil, nil) end)
	b4("4.5 Xoa HoldDuration Tat Ca Prompt", 0.25, function() for _, d in ipairs(Workspace:GetDescendants()) do if d:IsA("ProximityPrompt") then d.HoldDuration = 0 end end end)
	b4("4.6 Kich Hoat ClickDetector Gan (40m)", 0.26, function() for _, d in ipairs(Workspace:GetDescendants()) do if d:IsA("ClickDetector") and fireclickdetector then pcall(fireclickdetector, d) end end end)
	b4("4.7 Kich Hoat TouchInterest Gan (30m)", 0.27, function() local hrp = Players.LocalPlayer.Character and Players.LocalPlayer.Character:FindFirstChild("HumanoidRootPart"); if hrp and firetouchinterest then for _, d in ipairs(Workspace:GetDescendants()) do if d:IsA("TouchTransmitter") and d.Parent and d.Parent:IsA("BasePart") and (d.Parent.Position - hrp.Position).Magnitude <= 30 then pcall(function() firetouchinterest(hrp, d.Parent, 0); firetouchinterest(hrp, d.Parent, 1) end) end end end end)
	b4("4.8 Tuong Tac Shop / Vendor", 0.28, function() SDI.TriggerInteractions({"shop", "buy", "store", "vendor"}, nil) end)
	b4("4.9 Tuong Tac Thuong / Quest", 0.29, function() SDI.TriggerInteractions({"reward", "claim", "quest", "gift"}, nil) end)
	b4("4.10 Lap Tuong Tac Nhanh 2 Lan", 0.30, function() SDI.TriggerInteractions(nil, 35); task.wait(0.15); SDI.TriggerInteractions(nil, 35) end)

	local _, b5 = createTabPage(5, "5. Quet UI (10)", 0.26)
	b5("5.1 Mo Moi Gui / Nut An", 0.27, function() SDI.OpenMatchingGui({"menu", "shop", "gui", "open", "mo"}) end)
	b5("5.2 Bat Tat Ca ScreenGui Trong PlayerGui", 0.28, function() local pg = Players.LocalPlayer and Players.LocalPlayer:FindFirstChild("PlayerGui"); if pg then for _, g in ipairs(pg:GetDescendants()) do if g:IsA("ScreenGui") then g.Enabled = true end end end end)
	b5("5.3 Hien Tat Ca Frame / Menu Chinh", 0.29, function() SDI.OpenMatchingGui({"main", "frame", "menu", "window"}) end)
	b5("5.4 Mo Shop / Cua Hang UI", 0.30, function() SDI.OpenMatchingGui({"shop", "store", "market", "mua"}) end)
	b5("5.5 Mo Inventory / Tu Do UI", 0.31, function() SDI.OpenMatchingGui({"bag", "inv", "inventory", "tu"}) end)
	b5("5.6 Mo Settings / Cai Dat UI", 0.32, function() SDI.OpenMatchingGui({"setting", "config", "cai dat"}) end)
	b5("5.7 Bam Cac Nut Open / Mo Tren UI", 0.33, function() SDI.OpenMatchingGui({"open", "mo", "enter", "vao"}) end)
	b5("5.8 Bat Visible Cho Cac Frame Bi An", 0.34, function() local pg = Players.LocalPlayer and Players.LocalPlayer:FindFirstChild("PlayerGui"); if pg then for _, o in ipairs(pg:GetDescendants()) do if o:IsA("Frame") and o.Name:lower():find("menu", 1, true) then o.Visible = true end end end end)
	b5("5.9 Quet Nut Co Chu Tieng Viet", 0.35, function() SDI.OpenMatchingGui({"mo", "xe", "tu", "cua", "nhan"}) end)
	b5("5.10 Quet Nut Co Chu Tieng Anh", 0.36, function() SDI.OpenMatchingGui({"open", "car", "door", "shop", "claim"}) end)

	local _, b6 = createTabPage(6, "6. Di Chuyen (10)", 0.32)
	b6("6.1 Toc Do Chay 24", 0.33, function() local h = Players.LocalPlayer.Character and Players.LocalPlayer.Character:FindFirstChildOfClass("Humanoid"); if h then h.WalkSpeed = 24 end end)
	b6("6.2 Toc Do Chay 32", 0.34, function() local h = Players.LocalPlayer.Character and Players.LocalPlayer.Character:FindFirstChildOfClass("Humanoid"); if h then h.WalkSpeed = 32 end end)
	b6("6.3 Toc Do Chay 45", 0.35, function() local h = Players.LocalPlayer.Character and Players.LocalPlayer.Character:FindFirstChildOfClass("Humanoid"); if h then h.WalkSpeed = 45 end end)
	b6("6.4 Reset Toc Do Chuan (16)", 0.36, function() local h = Players.LocalPlayer.Character and Players.LocalPlayer.Character:FindFirstChildOfClass("Humanoid"); if h then h.WalkSpeed = 16 end end)
	b6("6.5 Nhay Cao (JumpPower 75)", 0.37, function() local h = Players.LocalPlayer.Character and Players.LocalPlayer.Character:FindFirstChildOfClass("Humanoid"); if h then h.UseJumpPower = true; h.JumpPower = 75 end end)
	b6("6.6 Nhay Cao (JumpPower 110)", 0.38, function() local h = Players.LocalPlayer.Character and Players.LocalPlayer.Character:FindFirstChildOfClass("Humanoid"); if h then h.UseJumpPower = true; h.JumpPower = 110 end end)
	b6("6.7 Reset Nhay Chuan (50)", 0.39, function() local h = Players.LocalPlayer.Character and Players.LocalPlayer.Character:FindFirstChildOfClass("Humanoid"); if h then h.UseJumpPower = true; h.JumpPower = 50 end end)
	b6("6.8 Dung Ngoi / Thoat Ghe Ngay", 0.40, function() local h = Players.LocalPlayer.Character and Players.LocalPlayer.Character:FindFirstChildOfClass("Humanoid"); if h then h.Sit = false end end)
	b6("6.9 Xoa Van Toc Truot / Bi Day", 0.41, function() local hrp = Players.LocalPlayer.Character and Players.LocalPlayer.Character:FindFirstChild("HumanoidRootPart"); if hrp then hrp.AssemblyLinearVelocity = Vector3.zero; hrp.AssemblyAngularVelocity = Vector3.zero end end)
	b6("6.10 Chinh JumpBoost Len 90", 0.42, function() jumpBoostVal = 90; local h = Players.LocalPlayer.Character and Players.LocalPlayer.Character:FindFirstChildOfClass("Humanoid"); if h then h.UseJumpPower = true; h.JumpPower = jumpBoostVal end end)

	local _, b7 = createTabPage(7, "7. Noclip & Bay (10)", 0.38)
	b7("7.1 Bat / Tat Noclip", 0.39, function() if noclipConn then noclipConn:Disconnect(); noclipConn = nil else noclipConn = RunService.Stepped:Connect(function() local c = Players.LocalPlayer.Character; if c then for _, p in ipairs(c:GetDescendants()) do if p:IsA("BasePart") then p.CanCollide = false end end end end) end end)
	b7("7.2 Tat Noclip Ngay", 0.40, function() if noclipConn then noclipConn:Disconnect(); noclipConn = nil end end)
	b7("7.3 Nhay Len Khong Trung (+12 Studs)", 0.41, function() local hrp = Players.LocalPlayer.Character and Players.LocalPlayer.Character:FindFirstChild("HumanoidRootPart"); if hrp then SDI.SmoothTeleport(hrp.CFrame + Vector3.new(0, 12, 0)) end end)
	b7("7.4 Bay Thang Len Cao (+30 Studs)", 0.42, function() local hrp = Players.LocalPlayer.Character and Players.LocalPlayer.Character:FindFirstChild("HumanoidRootPart"); if hrp then SDI.SmoothTeleport(hrp.CFrame + Vector3.new(0, 30, 0)) end end)
	b7("7.5 Luot Ve Phia Truoc (+15 Studs)", 0.43, function() local hrp = Players.LocalPlayer.Character and Players.LocalPlayer.Character:FindFirstChild("HumanoidRootPart"); if hrp then SDI.SmoothTeleport(hrp.CFrame + hrp.CFrame.LookVector * 15) end end)
	b7("7.6 Ha Xuong Dat An Toan (-8 Studs)", 0.44, function() local hrp = Players.LocalPlayer.Character and Players.LocalPlayer.Character:FindFirstChild("HumanoidRootPart"); if hrp then SDI.SmoothTeleport(hrp.CFrame + Vector3.new(0, -8, 0)) end end)
	b7("7.7 Gia Trong Luc Nhe (110)", 0.45, function() Workspace.Gravity = 110 end)
	b7("7.8 Gia Trong Luc Rat Nhe (55)", 0.46, function() Workspace.Gravity = 55 end)
	b7("7.9 Reset Trong Luc Chuan (196.2)", 0.47, function() Workspace.Gravity = 196.2 end)
	b7("7.10 Dung Yen Tai Cho (Anchor HRP 1s)", 0.48, function() local hrp = Players.LocalPlayer.Character and Players.LocalPlayer.Character:FindFirstChild("HumanoidRootPart"); if hrp then hrp.Anchored = true; task.wait(1); hrp.Anchored = false end end)

	local _, b8 = createTabPage(8, "8. Map & Anh (10)", 0.44)
	b8("8.1 Fullbright Sang Ro Map", 0.45, function() Lighting.Brightness = 2.2; Lighting.ClockTime = 14; Lighting.GlobalShadows = false end)
	b8("8.2 Chuyen Buoi Sang (ClockTime 8)", 0.46, function() Lighting.ClockTime = 8 end)
	b8("8.3 Chuyen Buoi Dem (ClockTime 0)", 0.47, function() Lighting.ClockTime = 0 end)
	b8("8.4 Xoa Suong Mu (Atmosphere)", 0.48, function() for _, v in ipairs(Lighting:GetDescendants()) do if v:IsA("Atmosphere") then v:Destroy() end end end)
	b8("8.5 Xoa Hieu Ung Blur / Bloom / SunRays", 0.49, function() for _, v in ipairs(Lighting:GetDescendants()) do if v:IsA("BlurEffect") or v:IsA("BloomEffect") or v:IsA("SunRaysEffect") then v:Destroy() end end end)
	b8("8.6 Tang Do Tuong Phan (Exposure 0.25)", 0.50, function() Lighting.ExposureCompensation = 0.25 end)
	b8("8.7 Reset Exposure Ve 0", 0.51, function() Lighting.ExposureCompensation = 0 end)
	b8("8.8 Bat Lai Bong Do Map", 0.52, function() Lighting.GlobalShadows = true end)
	b8("8.9 An Hieu Ung Lua / Khoi Tren Map", 0.53, function() for _, p in ipairs(Workspace:GetDescendants()) do if p:IsA("Fire") or p:IsA("Smoke") then p.Enabled = false end end end)
	b8("8.10 Lam Trong Suot Nuoc / Kinh Rung", 0.54, function() for _, p in ipairs(Workspace:GetDescendants()) do if p:IsA("BasePart") and (p.Name:lower():find("glass", 1, true) or p.Name:lower():find("kinh", 1, true)) then p.Transparency = 0.75 end end end)

	local _, b9 = createTabPage(9, "9. Dich Chuyen (10)", 0.50)
	b9("9.1 Luu Vi Tri Hien Tai", 0.51, function() local hrp = Players.LocalPlayer.Character and Players.LocalPlayer.Character:FindFirstChild("HumanoidRootPart"); if hrp then savedPosCF = hrp.CFrame end end)
	b9("9.2 TP Ve Vi Tri Da Luu", 0.52, function() if savedPosCF then SDI.SmoothTeleport(savedPosCF) end end)
	b9("9.3 TP Den Diem Spawn Gan Nhat", 0.53, function() local cf = SDI.FindNearestCFrame({"spawn", "pad", "base", "hub"}); if cf then SDI.SmoothTeleport(cf + Vector3.new(0, 3, 0)) end end)
	b9("9.4 TP Den Khu Vuc Shop / Store", 0.54, function() local cf = SDI.FindNearestCFrame({"shop", "store", "market"}); if cf then SDI.SmoothTeleport(cf + Vector3.new(0, 3, 0)) end end)
	b9("9.5 TP Den Khu Vuc Safe / An Toan", 0.55, function() local cf = SDI.FindNearestCFrame({"safe", "zone", "lobby", "spawn"}); if cf then SDI.SmoothTeleport(cf + Vector3.new(0, 3, 0)) end end)
	b9("9.6 TP Den Nguoi Choi Gan Nhat", 0.56, function() local lp = Players.LocalPlayer; local myHrp = lp.Character and lp.Character:FindFirstChild("HumanoidRootPart"); local best, dMin = nil, math.huge; if myHrp then for _, pl in ipairs(Players:GetPlayers()) do if pl ~= lp and pl.Character and pl.Character:FindFirstChild("HumanoidRootPart") then local d = (pl.Character.HumanoidRootPart.Position - myHrp.Position).Magnitude; if d < dMin then dMin = d; best = pl.Character.HumanoidRootPart.CFrame end end end; if best then SDI.SmoothTeleport(best + Vector3.new(0, 0, -4)) end end end)
	b9("9.7 TP Len Cao (+50 Studs)", 0.57, function() local hrp = Players.LocalPlayer.Character and Players.LocalPlayer.Character:FindFirstChild("HumanoidRootPart"); if hrp then SDI.SmoothTeleport(hrp.CFrame + Vector3.new(0, 50, 0)) end end)
	b9("9.8 TP Ve Goc Ban Do (0, 25, 0)", 0.58, function() SDI.SmoothTeleport(CFrame.new(0, 25, 0)) end)
	b9("9.9 Xoa Vi Tri Da Luu", 0.59, function() savedPosCF = nil end)
	b9("9.10 Kiem Tra Vi Tri Hien Tai (TP +2Y)", 0.60, function() local hrp = Players.LocalPlayer.Character and Players.LocalPlayer.Character:FindFirstChild("HumanoidRootPart"); if hrp then SDI.SmoothTeleport(hrp.CFrame + Vector3.new(0, 2, 0)) end end)

	local _, b10 = createTabPage(10, "10. Hieu Nang (10)", 0.56)
	b10("10.1 Tat ParticleEmitter Toan Map", 0.57, function() for _, p in ipairs(Workspace:GetDescendants()) do if p:IsA("ParticleEmitter") then p.Enabled = false end end end)
	b10("10.2 Tat Trail & Beam Toan Map", 0.58, function() for _, p in ipairs(Workspace:GetDescendants()) do if p:IsA("Trail") or p:IsA("Beam") then p.Enabled = false end end end)
	b10("10.3 Tat Decals / Textures Tren Part", 0.59, function() for _, p in ipairs(Workspace:GetDescendants()) do if p:IsA("Decal") or p:IsA("Texture") then p.Transparency = 1 end end end)
	b10("10.4 Bat Lai ParticleEmitter", 0.60, function() for _, p in ipairs(Workspace:GetDescendants()) do if p:IsA("ParticleEmitter") then p.Enabled = true end end end)
	b10("10.5 Bat Lai Trail & Beam", 0.61, function() for _, p in ipairs(Workspace:GetDescendants()) do if p:IsA("Trail") or p:IsA("Beam") then p.Enabled = true end end end)
	b10("10.6 Khoi Phuc Decals / Textures", 0.62, function() for _, p in ipairs(Workspace:GetDescendants()) do if p:IsA("Decal") or p:IsA("Texture") then p.Transparency = 0 end end end)
	b10("10.7 Tat PointLight / SpotLight Xa", 0.63, function() for _, p in ipairs(Workspace:GetDescendants()) do if p:IsA("PointLight") or p:IsA("SpotLight") then p.Enabled = false end end end)
	b10("10.8 Don Rac Hieu Ung Tam", 0.64, function() for _, p in ipairs(Workspace:GetDescendants()) do if p:IsA("Explosion") then p:Destroy() end end end)
	b10("10.9 Toi Uu Nhanh Mot Luot", 0.65, function() for _, p in ipairs(Workspace:GetDescendants()) do if p:IsA("ParticleEmitter") or p:IsA("Trail") then p.Enabled = false end end end)
	b10("10.10 Khoi Phuc Toan Bo Hieu Ung", 0.66, function() for _, p in ipairs(Workspace:GetDescendants()) do if p:IsA("ParticleEmitter") or p:IsA("Trail") or p:IsA("Beam") then p.Enabled = true end end end)

	local p11, b11 = createTabPage(11, "11. Them Anh (10)", 0.62)

	local bgIdBox = Instance.new("TextBox")
	bgIdBox.Size = UDim2.new(1, 0, 0, 24)
	bgIdBox.BackgroundColor3 = Color3.fromRGB(22, 22, 34)
	bgIdBox.TextColor3 = Color3.fromRGB(120, 255, 235)
	bgIdBox.PlaceholderText = "Nhap ID anh nen menu (VD: 89692568349545)..."
	bgIdBox.Text = SDI.MediaConfig.bgImageId
	bgIdBox.ClearTextOnFocus = false
	bgIdBox.TextSize = 8
	bgIdBox.Font = Enum.Font.GothamBold
	bgIdBox.ZIndex = 21
	bgIdBox.Parent = p11
	Instance.new("UICorner", bgIdBox).CornerRadius = UDim.new(0, 4)

	local logoIdBox = Instance.new("TextBox")
	logoIdBox.Size = UDim2.new(1, 0, 0, 24)
	logoIdBox.BackgroundColor3 = Color3.fromRGB(22, 22, 34)
	logoIdBox.TextColor3 = Color3.fromRGB(255, 195, 110)
	logoIdBox.PlaceholderText = "Nhap ID anh logo tron (VD: 89692568349545)..."
	logoIdBox.Text = SDI.MediaConfig.logoImageId
	logoIdBox.ClearTextOnFocus = false
	logoIdBox.TextSize = 8
	logoIdBox.Font = Enum.Font.GothamBold
	logoIdBox.ZIndex = 21
	logoIdBox.Parent = p11
	Instance.new("UICorner", logoIdBox).CornerRadius = UDim.new(0, 4)

	b11("11.1 Ap Dung ID Anh Nen Menu", 0.63, function() SDI.MediaConfig.bgImageId = bgIdBox.Text; applyImageSmart(menuBgImage, bgIdBox.Text, 420); menuBgImage.Visible = true end)
	b11("11.2 Ap Dung ID Anh Logo Tron", 0.64, function() SDI.MediaConfig.logoImageId = logoIdBox.Text; applyImageSmart(circleLogo, logoIdBox.Text, 150) end)
	b11("11.3 Ap Dung Ca 2 ID Anh Ngay", 0.65, function() SDI.MediaConfig.bgImageId = bgIdBox.Text; SDI.MediaConfig.logoImageId = logoIdBox.Text; applyImageSmart(menuBgImage, bgIdBox.Text, 420); menuBgImage.Visible = true; applyImageSmart(circleLogo, logoIdBox.Text, 150) end)
	b11("11.4 Reset ID Mac Dinh (89692568349545)", 0.66, function() bgIdBox.Text = "89692568349545"; logoIdBox.Text = "89692568349545"; applyImageSmart(menuBgImage, "89692568349545", 420); applyImageSmart(circleLogo, "89692568349545", 150) end)
	b11("11.5 Do Nhat Anh Nen: Dam (0.35)", 0.67, function() menuBgImage.ImageTransparency = 0.35 end)
	b11("11.6 Do Nhat Anh Nen: Vua (0.25)", 0.68, function() menuBgImage.ImageTransparency = 0.25 end)
	b11("11.7 Do Nhat Anh Nen: Nhe (0.78)", 0.69, function() menuBgImage.ImageTransparency = 0.78 end)
	b11("11.8 An / Hien Anh Nen Menu", 0.70, function() menuBgImage.Visible = not menuBgImage.Visible end)
	b11("11.9 Logo Tron Co 56px", 0.71, function() circleLogo.Size = UDim2.new(0, 56, 0, 56) end)
	b11("11.10 Logo Tron Co 68px", 0.72, function() circleLogo.Size = UDim2.new(0, 68, 0, 68) end)

	local _, b12 = createTabPage(12, "12. Key & Info (10)", 0.74)
	b12("12.1 Kiem Tra Trang Thai Key", 0.75, function() infoLbl.Text = SDI.IsSessionValid() and ("Hieu luc: " .. tostring(SDI.State.planLabel)) or "Chua kich hoat key"; lockPanel.Visible = not SDI.IsSessionValid() end)
	b12("12.2 Mo Khung Nhap Key", 0.76, function() lockPanel.Visible = true end)
	b12("12.3 Dong Khung Nhap Key", 0.77, function() lockPanel.Visible = false end)
	b12("12.4 Mo / An Menu Chinh", 0.78, function() if SDI.IsSessionValid() or mainPanel.Visible then mainPanel.Visible = not mainPanel.Visible else lockPanel.Visible = true end end)
	b12("12.5 Dua Logo Tron Ve Goc Trai", 0.79, function() circleLogo.Position = UDim2.new(0, 14, 0.24, 0) end)
	b12("12.6 Dua Menu Ve Giua Man Hinh", 0.80, function() mainPanel.Position = UDim2.new(0.5, -225, 0.5, -155) end)
	b12("12.7 Chuyen Ve Tab 1", 0.81, function() selectTab(1) end)
	b12("12.8 Chuyen Ve Tab 11 (Them Anh)", 0.82, function() selectTab(11) end)
	b12("12.9 Luu Registry Key Hien Tai", 0.83, function() SDI.SaveRegistry() end)
	b12("12.10 Hien Thong Tin Phien Ban", 0.84, function() infoLbl.Text = SDI.Version .. " | 12x10" end)

	selectTab(1)

	local function handleUnlock()
		local okUnlock, msg = SDI.ActivateKey(keyInput.Text)
		if okUnlock then
			lockPanel.Visible = false
			mainPanel.Visible = true
			mainTitle.Text = (titleText or "APEX SDI ROBLOX") .. " // " .. tostring(SDI.State.planLabel)
		else
			infoLbl.Text = msg
		end
	end

	submitBtn.MouseButton1Click:Connect(handleUnlock)
	keyInput.FocusLost:Connect(function(enterPressed)
		if enterPressed then handleUnlock() end
	end)
	hideLockBtn.MouseButton1Click:Connect(function() lockPanel.Visible = false end)

	makeDrag(circleLogo, circleLogo, function()
		if mainPanel.Visible then
			if SDI.IsSessionValid() then lockPanel.Visible = false; mainPanel.Visible = true else lockPanel.Visible = true; mainPanel.Visible = false end
		elseif SDI.IsSessionValid() then
			mainPanel.Visible = true
		else
			lockPanel.Visible = not lockPanel.Visible
		end
	end)
	makeDrag(lockPanel, lockHeader)
	makeDrag(mainPanel, topBar)

	if SDI.IsSessionValid() then lockPanel.Visible = false; mainPanel.Visible = true else lockPanel.Visible = true; mainPanel.Visible = false end

	table.insert(connList, RunService.RenderStepped:Connect(function()
		local hue = (tick() * 0.35) % 1
		for _, item in ipairs(strokeList) do
			if item.stroke and item.stroke.Parent then
				item.stroke.Color = Color3.fromHSV((hue + item.phase) % 1, 0.95, 1)
			end
		end
		for _, item in ipairs(labelList) do
			if item.label and item.label.Parent then
				item.label.TextColor3 = Color3.fromHSV((hue + item.phase) % 1, 0.85, 1)
			end
		end
	end))

	return gui
end

SDI.MountGui("APEX SDI ROBLOX", { autoOpen = true })

return SDI
