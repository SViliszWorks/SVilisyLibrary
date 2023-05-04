-- Define Library
local Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/SViliszWorks/SVilisyLibrary/main/source.lua?token=GHSAT0AAAAAAB2RO4C3PVA5BHEGRZVKNHAUZCUB46A"))()

-- Create SubSection's Elements
local SubEelements = true

-- Create Window
local Window = Library:AddWindow({
	title = {"SVilisz", "UI Library"},
	Theme = {
		Accent = Color3.fromRGB(85, 255, 127),
		TopbarColor = Color3.fromRGB(20, 20, 20),
		SidebarColor = Color3.fromRGB(15, 15, 15),
		BackgroundColor = Color3.fromRGB(10, 10, 10),
		SectionColor = Color3.fromRGB(20, 20, 20),
		TextColor = Color3.fromRGB(255, 255, 255),
	},
	Settings = {
		ConfigPath = nil,
		MaxNotifLines = 5,
		MaxNotifStacking = 5,
	},
	key = Enum.KeyCode.RightControl,
	default = true
})

-- Notification
local Notify = Library:Notify( {title = "Title", text = "Text"}, function(selected)
	if selected == true then
		print("Notify:", selected)
	elseif selected == false then
		print("Notify:", selected)
	end
end)

-- Create Tab
local Tab = Window:AddTab("Tab", {default = false})

-- Create Section
local Section = Tab:AddSection("Section", {default = false})

-- Create SubSection
local SubSection = Tab:AddSubSection("SubSection", {default = false})

-- Create Button
local Button = Section:AddButton("Button", function()
	Library:Notify( {title = "Button", text = "Pressed"})
end)

-- Create Toggle
local Toggle = Section:AddToggle("Toggle", {flag = "Toggle_Flag", default = false}, function(bool)
	Library:Notify( {title = "Toggle", text = "Current Bool: "..bool})
end)

-- Create Label
local Label = Section:AddLabel("Label")

-- Create DualLabel
local DualLabel = Section:AddDualLabel({"Dual", "Label"})

-- Create ClipboardLabel
local ClipboardLabel = Section:AddClipboardLabel("ClipboardLabel", function()
	return "Text-Copied"
end)

-- Create Box
local Box = Section:AddBox("Box", {fireonempty = true}, function(text)
	Library:Notify( {title = "Box", text = ""..text..""})
end)

-- Create Bind
local Bind = Section:AddBind("Bind", Enum.KeyCode.RightShift, {toggleable = true, default = false, flag = "Bind_Flag"}, function(keycode)
	Window:SetKey(keycode)
	Library:Notify( {title = "Bind", text = "Bind Was Changed: "..keycode})
end)

-- Create Slider
local Slider = Section:AddSlider("Slider", 1, 100, 50, {toggleable = true, default = false, flag = "Slider_Flag", fireontoggle = true, fireondrag = true, rounded = true}, function(val, bool)
	print("Slider Value:", val, " - Slider Bool:", bool)
end)

-- Create Dropdown
local Dropdown = Section:AddDropdown("Dropdown", {"Item1", "Item2", "Item3"}, {default = "Item1"}, function(selected)
	Library:Notify( {title = "Dropdown", text = ""..selected..""})
end)

-- Create Picker {Buggy With Rainbow}
local Picker = Section:AddPicker("Picker", {color = Color3.fromRGB(255, 0, 0)}, function(color)
	Window:SetAccent(color)
end)

-- Create Configs Modifier
local AddConfigs = Tab:AddConfigs()

-- Sub-Section Elements Function
local function SubElementsFunc()
	if SubEelements then
		
		-- Create Sub-Button
		local Button = Section:AddButton("Sub-Button", function()
			Library:Notify( {title = "Button", text = "Pressed"})
		end)

		-- Create Sub-Toggle
		local Toggle = Section:AddToggle("Sub-Toggle", {flag = "Toggle_Flag", default = false}, function(bool)
			Library:Notify( {title = "Toggle", text = "Current Bool: "..bool})
		end)

		-- Create Sub-Label
		local Label = Section:AddLabel("Sub-Label")

		-- Create Sub-DualLabel
		local DualLabel = Section:AddDualLabel({"Sub-Dual", "Label"})

		-- Create Sub-ClipboardLabel
		local ClipboardLabel = Section:AddClipboardLabel("Sub-ClipboardLabel", function()
			return "Text-Copied"
		end)

		-- Create Sub-Box
		local Box = Section:AddBox("Sub-Box", {fireonempty = true}, function(text)
			Library:Notify( {title = "Box", text = ""..text..""})
		end)

		-- Create Sub-Bind
		local Bind = Section:AddBind("Sub-Bind", Enum.KeyCode.RightShift, {toggleable = true, default = false, flag = "Bind_Flag"}, function(keycode)
			Library:Notify( {title = "Bind", text = "Bind Was Changed: "..keycode})
		end)

		-- Create Sub-Slider
		local Slider = Section:AddSlider("Sub-Slider", 1, 100, 50, {toggleable = true, default = false, flag = "Slider_Flag", fireontoggle = true, fireondrag = true, rounded = true}, function(val, bool)
			print("Slider Value:", val, " - Slider Bool:", bool)
		end)

		-- Create Sub-Dropdown
		local Dropdown = Section:AddDropdown("Sub-Dropdown", {"Item1", "Item2", "Item3"}, {default = "Item1"}, function(selected)
			Library:Notify( {title = "Dropdown", text = ""..selected..""})
		end)

		-- Create Sub-Picker {Buggy With Rainbow}
		local Picker = Section:AddPicker("Sub-Picker", {color = Color3.fromRGB(255, 0, 0)}, function(color)
			Window:SetAccent(color)
		end)
		
	end
end
