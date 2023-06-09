-- Define Library
local Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/SViliszWorks/SVilisyLibrary/main/source.lua"))()

-- Create SubSection's Elements
local SubEelements = true

-- Create Window
local Window = Library:AddWindow({
	title = {"SVilisz", "UI Library"},
	Theme = {
		Accent = Color3.fromRGB(200, 255, 127),
		TopbarColor = Color3.fromRGB(200, 20, 20),
		SidebarColor = Color3.fromRGB(15, 150, 15),
		BackgroundColor = Color3.fromRGB(10, 100, 10),
		SectionColor = Color3.fromRGB(200, 20, 20),
		TextColor = Color3.fromRGB(255, 0, 255),
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
local SubSection = Section:AddSubSection("SubSection", {default = false})

-- Create Button
local Button = Section:AddButton("Button", function()
	Library:Notify( {title = "Button", text = "Pressed"})
end)

-- Create Toggle
local Toggle = Section:AddToggle("Toggle", {flag = "Toggle_Flag", default = false}, function(bool)
	if bool == true then
        Library:Notify( {title = "Toggle", text = "Current Bool: True"})
    elseif bool == false then
        Library:Notify( {title = "Toggle", text = "Current Bool: False"})
    end
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
local Box = Section:AddBox("Box", {fireonempty = true}, function(text2)
	Library:Notify( {title = "Box", text = text2})
end)

-- Create Bind
local Bind = Section:AddBind("Bind", Enum.KeyCode.RightShift, {toggleable = true, default = false, flag = "Bind_Flag"}, function(keycode)
	Window:SetKey(keycode)
	Library:Notify( {title = "Bind", text = "Bind Was Changed"})
end)

-- Create Slider
local Slider = Section:AddSlider("Slider", 1, 100, 50, {toggleable = true, default = false, flag = "Slider_Flag", fireontoggle = true, fireondrag = true, rounded = true}, function(val, bool)
	print("Slider Value:", val, " - Slider Bool:", bool)
end)

-- Create Dropdown
local Dropdown = Section:AddDropdown("Dropdown", {"Item1", "Item2", "Item3"}, {default = "Item1"}, function(selected)
	Library:Notify( {title = "Dropdown", text = selected})
end)

-- Create Picker {Buggy With Rainbow}
local Picker = Section:AddPicker("Picker", {color = Color3.fromRGB(255, 0, 0)}, function(color)
	Window:SetAccent(color)
end)

-- Create Configs Modifier
local AddConfigs = Tab:AddConfigs()

-- Sub-Section Elements Function
local function SubElementsFunc()
		
		-- Create Sub-Button
		local SubButton = SubSection:AddButton("Sub-Button", function()
			Library:Notify( {title = "Button", text = "Pressed"})
		end)

		-- Create Sub-Toggle
		local SubToggle = SubSection:AddToggle("Sub-Toggle", {flag = "Toggle_Flag", default = false}, function(bool)
            if bool == true then
                Library:Notify( {title = "Toggle", text = "Current Bool: True"})
            elseif bool == false then
                Library:Notify( {title = "Toggle", text = "Current Bool: False"})
            end
		end)

		-- Create Sub-Label
		local SubLabel = SubSection:AddLabel("Sub-Label")

		-- Create Sub-DualLabel
		local SubDualLabel = SubSection:AddDualLabel({"Sub-Dual", "Label"})

		-- Create Sub-ClipboardLabel
		local SubClipboardLabel = SubSection:AddClipboardLabel("Sub-ClipboardLabel", function()
			return "Text-Copied"
		end)

		-- Create Sub-Box
		local SubBox = SubSection:AddBox("Sub-Box", {fireonempty = true}, function(text)
			Library:Notify( {title = "Box", text = ""..text..""})
		end)

		-- Create Sub-Bind
		local SubBind = SubSection:AddBind("Sub-Bind", Enum.KeyCode.RightShift, {toggleable = true, default = false, flag = "Bind_Flag"}, function(keycode)
			Library:Notify( {title = "Bind", text = "Bind Was Changed"})
		end)

		-- Create Sub-Slider
		local SubSlider = SubSection:AddSlider("Sub-Slider", 1, 100, 50, {toggleable = true, default = false, flag = "Slider_Flag", fireontoggle = true, fireondrag = true, rounded = true}, function(val, bool)
			print("Slider Value:", val, " - Slider Bool:", bool)
		end)

		-- Create Sub-Dropdown
		local SubDropdown = SubSection:AddDropdown("Sub-Dropdown", {"Item1", "Item2", "Item3"}, {default = "Item1"}, function(selected)
			Library:Notify( {title = "Dropdown", text = ""..selected..""})
		end)

		-- Create Sub-Picker {Buggy With Rainbow}
		local SubPicker = SubSection:AddPicker("Sub-Picker", {color = Color3.fromRGB(255, 0, 0)}, function(color)
			Window:SetAccent(color)
		end)

end

-- Calls Function
if SubEelements then
    SubElementsFunc()
end
