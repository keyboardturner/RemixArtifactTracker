local _, rat = ...
local L = rat.L

local RefreshPanel, SelectSwatch, RefreshSwatches, SetupCustomPanel

local RemixStandaloneFrame
local function ToggleStandaloneFrame()
	if not RemixStandaloneFrame then
		RemixStandaloneFrame = CreateFrame("Frame", "RemixStandaloneFrame", UIParent)
		RemixStandaloneFrame:SetSize(1630, 895)
		RemixStandaloneFrame:SetPoint("CENTER")
		RemixStandaloneFrame:SetToplevel(true)
		RemixStandaloneFrame:SetMovable(true)
		RemixStandaloneFrame:EnableMouse(true)
		RemixStandaloneFrame:RegisterForDrag("LeftButton")
		RemixStandaloneFrame:SetScript("OnDragStart", RemixStandaloneFrame.StartMoving)
		RemixStandaloneFrame:SetScript("OnDragStop", RemixStandaloneFrame.StopMovingOrSizing)

		RemixStandaloneFrame.tex = RemixStandaloneFrame:CreateTexture()
		RemixStandaloneFrame.tex:SetAllPoints()

		--local title = RemixStandaloneFrame:CreateFontString(nil, "ARTWORK", "GameFontNormalLarge")
		--title:SetPoint("TOP", 0, -16)
		--title:SetText(L["Addon_Title"])

		SetupCustomPanel(RemixStandaloneFrame);
		RemixStandaloneFrame.customPanel:Show();

		local _, classToken = UnitClass("player");
		local classArtifacts = rat.ClassArtifacts and rat.ClassArtifacts[classToken]
		if classArtifacts and #classArtifacts > 0 then
			RemixStandaloneFrame.attachedItemID = classArtifacts[1];
		end
		
		RemixStandaloneFrame:Show();
		RefreshPanel(RemixStandaloneFrame);
	else
		RemixStandaloneFrame:SetShown(not RemixStandaloneFrame:IsShown());
		if RemixStandaloneFrame:IsShown() then
			RefreshPanel(RemixStandaloneFrame);
		end
	end
end

SLASH_REMIXARTIFACTTRACKER1 = "/rat";
SlashCmdList["REMIXARTIFACTTRACKER"] = ToggleStandaloneFrame;

local function SetModelCamera(modelFrame, cameraData)
	modelFrame.lastCamera = cameraData;
	modelFrame:MakeCurrentCameraCustom();

	if cameraData then
		modelFrame:SetCameraPosition(cameraData.posX or 3.5, cameraData.posY or 0, cameraData.posZ or 0);
		modelFrame:SetCameraTarget(cameraData.targetX or 0, cameraData.targetY or 0, cameraData.targetZ or 0.1);
		modelFrame:SetFacing(cameraData.facing or math.pi / 2);
		modelFrame:SetPitch(cameraData.pitch or -0.75);
	else
		-- default cam if cameraData nil
		modelFrame:SetCameraPosition(3.5, 0, 0);
		modelFrame:SetCameraTarget(0, 0, 0.1);
		modelFrame:SetFacing(math.pi / 2);
		modelFrame:SetPitch(-0.75);
	end
end

local function AreRequirementsMet(req)
	-- check quests
	if req.quests then
		if req.any then
			local anyComplete = false;
			for _, questID in ipairs(req.quests) do
				if C_QuestLog.IsQuestFlaggedCompleted(questID) then
					anyComplete = true;
					break; -- the "collect 1 of the pillars" thing
				end
			end
			if not anyComplete then
				return false;
			end
		else
			for _, questID in ipairs(req.quests) do
				if not C_QuestLog.IsQuestFlaggedCompleted(questID) then
					return false;
				end
			end
		end
	end

	-- check achievements
	if req.achievements then
		for _, achID in ipairs(req.achievements) do
			local _, _, _, completed, _, _, _, _, _, _, _, _, wasEarnedByMe = GetAchievementInfo(achID)

			if (req.charspecific and not wasEarnedByMe) or (not req.charspecific and not completed) then -- some achieves aren't really warbound and tints want the char-specific ones
				return false;
			end
		end
	end
	return true;
end

function UISwatchColorToRGB(colorInt)
	if not colorInt then
		return 1, 1, 1;
	end
	local b = bit.band(colorInt, 0xFF) / 255;
	local g = bit.band(bit.rshift(colorInt, 8), 0xFF) / 255;
	local r = bit.band(bit.rshift(colorInt, 16), 0xFF) / 255;
	return r, g, b;
end

-- handles all logic for selecting a swatch button
SelectSwatch = function(swatchButton)
	local frame = swatchButton.parentFrame
	if not frame then return end
	local panel = frame.customPanel
	if not panel or not panel.swatchRows then return end

	panel.selectedSwatch = swatchButton

	-- hide all selection highlights
	for _, row in ipairs(panel.swatchRows) do
		for _, btn in ipairs(row) do
			btn.selection:Hide();
		end
	end

	swatchButton.selection:Show(); -- show selection on the target button

	-- update the model and camera
	local specID = frame.attachedItemID
	local specData = rat.AppSwatchData[specID]
	if not specData then return end

	local appearanceData = specData.appearances[swatchButton.rowIndex]
	local tintData = swatchButton.swatchData -- selected tint data

	if tintData and appearanceData then
		local cameraToUse = appearanceData.camera; -- default to the main model camera

		if panel.showSecondary and specData.secondary then
			panel.modelFrame:SetItem(specData.secondary, tintData.modifiedID);

			if appearanceData.secondaryCamera then
				cameraToUse = appearanceData.secondaryCamera; -- use secondaryCamera if defined
			end
		elseif tintData.displayID then
			panel.modelFrame:SetDisplayInfo(tintData.displayID); -- use displayID over default but not secondary
		else
			panel.modelFrame:SetItem(specData.itemID, tintData.modifiedID); -- use default itemID
		end

		SetModelCamera(panel.modelFrame, cameraToUse);
		panel.modelFrame:SetAnimation(appearanceData.animation or 0); -- handles the funni demo lock artifact + druid shapeshifts
	end
end

-- combined refresh function for colors, tooltips, and locks
RefreshSwatches = function(frame)
	local panel = frame and frame.customPanel
	if not panel or not panel.swatchRows then return end
	local specID = frame.attachedItemID
	local specData = rat.AppSwatchData[specID]
	if not specData then return end

	local _, _, playerRaceID = UnitRace("player")

	for i, row in ipairs(panel.swatchRows) do
		-- check if tint exists
		local appearanceData = specData.appearances[i]
		local tintsToDisplay

		if appearanceData and appearanceData.tints then
			-- check if racial (druid)
			local hasRacialTints = false
			for _, tint in ipairs(appearanceData.tints) do
				if tint.raceIDs then
					hasRacialTints = true
					break
				end
			end

			if hasRacialTints then
				tintsToDisplay = {}
				-- add the matching racial tint
				for _, tint in ipairs(appearanceData.tints) do
					if tint.raceIDs then
						for _, raceID in ipairs(tint.raceIDs) do
							if raceID == playerRaceID then
								table.insert(tintsToDisplay, tint)
								break -- only add one
							end
						end
					end
				end
				-- add all non-racial tints
				for _, tint in ipairs(appearanceData.tints) do
					if not tint.raceIDs then
						table.insert(tintsToDisplay, tint)
					end
				end
			else
				-- no racial tints, use all of them
				tintsToDisplay = appearanceData.tints
			end
		else
			tintsToDisplay = {}
		end


		for k, swatchButton in ipairs(row) do
			local tintData = tintsToDisplay[k]

			swatchButton:SetShown(tintData ~= nil)

			if tintData then
				-- set the swatch data for the button
				swatchButton.swatchData = tintData;

				-- tint swatch color
				swatchButton.swatch:SetVertexColor(UISwatchColorToRGB(tintData.color));

				-- swatch tooltip
				if tintData.tooltip then
					swatchButton:SetScript("OnEnter", function(self)
						GameTooltip:SetOwner(self, "ANCHOR_TOP");
						GameTooltip_AddNormalLine(GameTooltip, tintData.tooltip);
						GameTooltip:Show();
					end)
					swatchButton:SetScript("OnLeave", GameTooltip_Hide);
				else
					swatchButton:SetScript("OnEnter", nil);
					swatchButton:SetScript("OnLeave", nil);
				end

				-- swatch locked
				swatchButton.locked:SetShown(tintData.req and not AreRequirementsMet(tintData.req));

				-- transmog collected
				if specData.itemID and tintData.modifiedID then
					local hasTransmog = C_TransmogCollection.PlayerHasTransmog(specData.itemID, tintData.modifiedID)
					swatchButton.transmogIcon:SetShown(hasTransmog)
				else
					swatchButton.transmogIcon:Hide()
				end
			end
		end
	end
end

-- combined refresh function for panel, including swatches
RefreshPanel = function(frame)
	if not frame or not frame.customPanel or not frame.attachedItemID then return end
	local panel = frame.customPanel
	local specID = frame.attachedItemID
	local specData = rat.AppSwatchData[specID]
	if not specData then return end

	-- appearance row names
	if rat.ArtifactAppearanceNames[specID] then
		local appInfo = rat.ArtifactAppearanceNames[specID]
		for i, appnameFS in ipairs(panel.appNameFontStrings or {}) do
			appnameFS:SetText(WrapTextInColorCode(appInfo.appearances[i] or "", "FFE6CC80"));
		end
		if frame.tex then frame.tex:SetAtlas(appInfo.background or "Artifacts-DemonHunter-BG") end
		if panel.classicon then panel.classicon:SetAtlas(appInfo.icon or "Artifacts-DemonHunter-BG-rune") end
	end

	if panel.secondaryCheckbox then
		if specData.secondary then
			panel.secondaryCheckbox:Show();
		else
			panel.secondaryCheckbox:Hide();
			panel.showSecondary = false;
			panel.secondaryCheckbox:SetChecked(false);
		end
	end

	if panel.artifactSelectorDropdown then
		panel.artifactSelectorDropdown:GenerateMenu();
	end

	RefreshSwatches(frame);

	-- select the first swatch of the first row when opened
	if panel.swatchRows and panel.swatchRows[1] and panel.swatchRows[1][1] then
		SelectSwatch(panel.swatchRows[1][1]);
	end
end

-- setup the custom panel elements
SetupCustomPanel = function(frame)
	if frame.customPanel then return end
	local panel = CreateFrame("Frame", nil, frame);
	panel:SetAllPoints(true);
	panel:Hide();
	frame.customPanel = panel

	if frame == RemixStandaloneFrame then
		local closeButton = CreateFrame("Button", nil, panel, "UIPanelCloseButtonNoScripts");
		closeButton:SetPoint("TOPRIGHT", -10, -10);
		closeButton:SetScript("OnClick", function()
			frame:Hide();
		end);
	end

	panel.appNameFontStrings, panel.swatchRows = {}, {};
	panel:SetFrameLevel(frame:GetFrameLevel() + 10);

	-- 9-slice border + vignette
	local border = panel:CreateTexture(nil, "BORDER", nil, 7);
	border:SetPoint("TOPLEFT", -6, 6);
	border:SetPoint("BOTTOMRIGHT", 6, -6);
	border:SetAtlas("ui-frame-legionartifact-border");
	border:SetTextureSliceMargins(166, 166, 166, 166);
	border:SetTextureSliceMode(Enum.UITextureSliceMode.Tiled);

	local vignette = panel:CreateTexture(nil, "BACKGROUND", nil, 1);
	vignette:SetAllPoints();
	vignette:SetAtlas("Artifacts-BG-Shadow");

	local classicon = panel:CreateTexture(nil, "BACKGROUND", nil, 1);
	classicon:SetPoint("CENTER", -125, -200);
	classicon:SetSize(270, 270);
	classicon:SetAtlas("Artifacts-DemonHunter-BG-rune");
	panel.classicon = classicon;

	-- model
	panel.modelFrame = CreateFrame("PlayerModel", nil, panel);
	panel.modelFrame:SetPoint("TOPLEFT", panel, "TOP", -(frame:GetWidth()/6), -16);
	panel.modelFrame:SetPoint("BOTTOMRIGHT", -16, 16);
	panel.modelFrame:SetScript("OnModelLoaded", function(self)
		SetModelCamera(self, self.lastCamera);
	end);
	panel.modelFrame:SetScript("OnUpdate", function(self, elapsed)
		if not self.isSpinning then
			return
		end
		self.spinAngle = (self.spinAngle or 0) + (elapsed * 0.5);
		self:SetFacing(self.spinAngle);
	end);
	panel.modelFrame.isSpinning = true;

	local spinButton = CreateFrame("Button", nil, panel, "UIPanelButtonTemplate");
	spinButton:SetSize(40, 40);
	spinButton:SetPoint("BOTTOM", 0, 50);
	spinButton.tex = spinButton:CreateTexture(nil, "ARTWORK");
	spinButton.tex:SetPoint("TOPLEFT", spinButton, "TOPLEFT", 7, -7);
	spinButton.tex:SetPoint("BOTTOMRIGHT", spinButton, "BOTTOMRIGHT", -7, 7);
	spinButton.tex:SetAtlas("CreditsScreen-Assets-Buttons-Pause");
	spinButton:SetScript("OnClick", function(self)
		panel.modelFrame.isSpinning = not panel.modelFrame.isSpinning;
		self.tex:SetAtlas(panel.modelFrame.isSpinning and "CreditsScreen-Assets-Buttons-Pause" or "CreditsScreen-Assets-Buttons-Play");
	end);

	-- displays secondary models ie druid weapons instead of shapeshift, offhands, etc.
	local secondaryCheckbox = CreateFrame("CheckButton", nil, panel, "UICheckButtonTemplate");
	secondaryCheckbox:SetPoint("LEFT", spinButton, "RIGHT", 10, 0);
	secondaryCheckbox.Text:SetText(L["ShowSecondary"]);
	panel.secondaryCheckbox = secondaryCheckbox;
	panel.showSecondary = false;
	secondaryCheckbox:SetScript("OnClick", function(self)
		panel.showSecondary = self:GetChecked();
		if panel.selectedSwatch then
			SelectSwatch(panel.selectedSwatch); -- refresh model
		end
	end);
	secondaryCheckbox:Hide();

	-- forge frame
	local forgebg = panel:CreateTexture(nil, "BACKGROUND", nil, 0);
	forgebg:SetPoint("TOPLEFT", 50, -100);
	forgebg:SetPoint("BOTTOMLEFT", 50, 100);
	forgebg:SetWidth(460);
	forgebg:SetAtlas("Forge-Background");

	-- forge border
	local borderFrame = CreateFrame("Frame", nil, panel)
	borderFrame:SetPoint("TOPLEFT", forgebg, -4, 4)
	borderFrame:SetPoint("BOTTOMRIGHT", forgebg, 4, -4)

	local bordercornersize = 64

	local bordertop = borderFrame:CreateTexture(nil, "ARTWORK", nil, 2)
	bordertop:SetPoint("TOPLEFT", 16, 0)
	bordertop:SetPoint("TOPRIGHT", -16, 0)
	bordertop:SetHeight(16)
	bordertop:SetAtlas("_ForgeBorder-Top", true)

	local borderbottom = borderFrame:CreateTexture(nil, "ARTWORK", nil, 2)
	borderbottom:SetPoint("BOTTOMLEFT", 16, 0)
	borderbottom:SetPoint("BOTTOMRIGHT", -16, 0)
	borderbottom:SetHeight(16)
	borderbottom:SetAtlas("_ForgeBorder-Top", true)
	borderbottom:SetTexCoord(0, 1, 1, 0) -- flip vertically

	local borderleft = borderFrame:CreateTexture(nil, "ARTWORK", nil, 2)
	borderleft:SetPoint("TOPLEFT", 0, -16)
	borderleft:SetPoint("BOTTOMLEFT", 0, 16)
	borderleft:SetWidth(16)
	borderleft:SetAtlas("!ForgeBorder-Right", true)
	borderleft:SetTexCoord(1, 0, 0, 1) -- flip horizontally

	local borderright = borderFrame:CreateTexture(nil, "ARTWORK", nil, 2)
	borderright:SetPoint("TOPRIGHT", 0, -16)
	borderright:SetPoint("BOTTOMRIGHT", 0, 16)
	borderright:SetWidth(16)
	borderright:SetAtlas("!ForgeBorder-Right", true)

	local bordertopleft = borderFrame:CreateTexture(nil, "ARTWORK", nil, 3)
	bordertopleft:SetPoint("TOPLEFT")
	bordertopleft:SetSize(bordercornersize, bordercornersize)
	bordertopleft:SetAtlas("ForgeBorder-CornerBottomLeft")
	bordertopleft:SetTexCoord(0, 1, 1, 0)

	local borderbottomleft = borderFrame:CreateTexture(nil, "ARTWORK", nil, 3)
	borderbottomleft:SetPoint("BOTTOMLEFT")
	borderbottomleft:SetSize(bordercornersize, bordercornersize)
	borderbottomleft:SetAtlas("ForgeBorder-CornerBottomLeft")

	local bordertopright = borderFrame:CreateTexture(nil, "ARTWORK", nil, 3)
	bordertopright:SetPoint("TOPRIGHT")
	bordertopright:SetSize(bordercornersize, bordercornersize)
	bordertopright:SetAtlas("ForgeBorder-CornerBottomRight")
	bordertopright:SetTexCoord(0, 1, 1, 0)

	local borderbottomright = borderFrame:CreateTexture(nil, "ARTWORK", nil, 3)
	borderbottomright:SetPoint("BOTTOMRIGHT")
	borderbottomright:SetSize(bordercornersize, bordercornersize)
	borderbottomright:SetAtlas("ForgeBorder-CornerBottomRight")
	
	local forgeTitle = panel:CreateFontString(nil, "OVERLAY", "Fancy24Font");
	forgeTitle:SetPoint("CENTER", forgebg, "TOP", 0, -60);
	forgeTitle:SetText(WrapTextInColorCode(ARTIFACTS_APPEARANCE_TAB_TITLE, "fff0b837"));

	-- appearance rows and swatches
	local MaxRows = 6; -- 3 is remix, 6 is mainline
	if PlayerGetTimerunningSeasonID() then
		MaxRows = 3;
	end
	for i = 1, MaxRows do
		local appstrip = panel:CreateTexture(nil, "ARTWORK", nil, 1);
		local HeightSpacer = 150;
		if MaxRows == 6 then
			HeightSpacer = 95;
		end
		appstrip:SetPoint("TOPLEFT", forgebg, "TOPLEFT", 15, i*-HeightSpacer);
		appstrip:SetPoint("TOPRIGHT", forgebg, "TOPRIGHT", -15, i*-HeightSpacer);
		appstrip:SetHeight(103);
		appstrip:SetAtlas("Forge-AppearanceStrip");

		local appname = panel:CreateFontString(nil, "OVERLAY", "GameFontNormalLarge");
		appname:SetPoint("CENTER", forgebg, "TOPLEFT", 125, i*-HeightSpacer - 50);
		appname:SetSize(150, 100);
		appname:SetJustifyH("CENTER");
		appname:SetJustifyV("MIDDLE");
		appname:SetWordWrap(true);
		panel.appNameFontStrings[i] = appname;

		panel.swatchRows[i] = {};

		for k = 1, 4 do
			local apptint = CreateFrame("Button", nil, panel);
			apptint:SetSize(40, 40);
			apptint:SetPoint("CENTER", forgebg, "TOP", (k - 0.5) * 50, i*-HeightSpacer-50);

			apptint.rowIndex, apptint.tintIndex, apptint.parentFrame = i, k, frame;

			apptint.bg = apptint:CreateTexture(nil, "BACKGROUND", nil, 0);
			apptint.bg:SetAllPoints();
			apptint.bg:SetAtlas("Forge-ColorSwatchBackground");
			apptint.swatch = apptint:CreateTexture(nil, "ARTWORK", nil, 1);
			apptint.swatch:SetAllPoints();
			apptint.swatch:SetAtlas("Forge-ColorSwatch");
			apptint.border = apptint:CreateTexture(nil, "OVERLAY", nil, 2);
			apptint.border:SetAllPoints();
			apptint.border:SetAtlas("Forge-ColorSwatchBorder");
			apptint.highlight = apptint:CreateTexture(nil, "HIGHLIGHT", nil, 3);
			apptint.highlight:SetAllPoints();
			apptint.highlight:SetAtlas("Forge-ColorSwatchHighlight");
			apptint.selection = apptint:CreateTexture(nil, "OVERLAY", nil, 4);
			apptint.selection:SetAllPoints();
			apptint.selection:SetAtlas("Forge-ColorSwatchSelection");
			apptint.selection:Hide();
			apptint.locked = apptint:CreateTexture(nil, "OVERLAY", nil, 5);
			apptint.locked:SetAllPoints();
			apptint.locked:SetAtlas("Forge-Lock");
			apptint.locked:Hide();

			-- transmog collected icon
			apptint.transmogIcon = apptint:CreateTexture(nil, "OVERLAY", nil, 6);
			apptint.transmogIcon:SetSize(20, 20);
			apptint.transmogIcon:SetPoint("TOPRIGHT", 5, 5);
			apptint.transmogIcon:SetAtlas("Crosshair_Transmogrify_32");
			apptint.transmogIcon:SetScript("OnEnter", function(self)
				GameTooltip:SetOwner(self, "ANCHOR_TOP");
				GameTooltip:SetText(TRANSMOGRIFY_TOOLTIP_APPEARANCE_KNOWN);
				GameTooltip:Show();
			end);
			apptint.transmogIcon:SetScript("OnLeave", GameTooltip_Hide);
			apptint.transmogIcon:Hide();

			apptint:SetScript("OnClick", function(self)
				if self.selection:IsShown() and not self.locked:IsShown() then
					return;
				end
				SelectSwatch(self);
				PlaySound(self.locked:IsShown() and SOUNDKIT.UI_70_ARTIFACT_FORGE_APPEARANCE_LOCKED or SOUNDKIT.UI_70_ARTIFACT_FORGE_APPEARANCE_COLOR_SELECT); -- 54131 or 54130
			end);
			panel.swatchRows[i][k] = apptint;
		end
	end
	if frame == RemixStandaloneFrame or isDebug then

		-- artifact select dropdown (might not be added to release version - instead filter to only current class)
		local function ArtifactSelector_GenerateMenu(_, rootDescription)
			local function SetSelected(data)
				frame.attachedItemID = data;
				RefreshPanel(frame);
			end

			local function IsSelected(data)
				return data == frame.attachedItemID;
			end

			rootDescription:CreateTitle("[PH] Select Artifact")

			local _, classToken = UnitClass("player")
			local classArtifacts = rat.ClassArtifacts and rat.ClassArtifacts[classToken]

			if classArtifacts and #classArtifacts > 0 then
				table.sort(classArtifacts);

				for _, specID in ipairs(classArtifacts) do
					local itemName = C_Item.GetItemInfo(specID) or ("Item " .. specID);
					rootDescription:CreateRadio(itemName, IsSelected, SetSelected, specID);
				end
			else
				rootDescription:CreateTitle("[PH] No Artifacts Available");
			end
		end

		-- artifact select dropdown (might not be added to release version - instead filter to only current class)
		local dropdown = CreateFrame("DropdownButton", nil, panel, "WowStyle1DropdownTemplate");
		dropdown:SetPoint("TOP", forgebg, "TOP", 0, -10);
		dropdown:SetWidth(300);
		dropdown:SetDefaultText("Select Artifact");
		dropdown:SetupMenu(ArtifactSelector_GenerateMenu);
		panel.artifactSelectorDropdown = dropdown;
	end
end