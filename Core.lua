local _, rat = ...
local L = rat.L

local RefreshPanel, SelectSwatch, RefreshSwatches, SetupCustomPanel, SelectRemixTab

local RemixStandaloneFrame

local function RATFrame_OnShow()
	if RemixArtifactFrame then
		if RemixArtifactFrame.Model then
			RemixArtifactFrame.Model:SetAlpha(0)
		end
		if RemixArtifactFrame.Model then
			RemixArtifactFrame.AltModel:SetAlpha(0)
		end
	end
	if RemixStandaloneFrame and RemixStandaloneFrame:GetParent() == UIParent then
		PlaySound(SOUNDKIT.UI_CLASS_TALENT_OPEN_WINDOW);
	end
end
local function RATFrame_OnHide()
	if RemixArtifactFrame then
		if RemixArtifactFrame.Model then
			RemixArtifactFrame.Model:SetAlpha(1)
		end
		if RemixArtifactFrame.Model then
			RemixArtifactFrame.AltModel:SetAlpha(1)
		end
	end
	if RemixStandaloneFrame and RemixStandaloneFrame:GetParent() == UIParent then
		PlaySound(SOUNDKIT.UI_CLASS_TALENT_CLOSE_WINDOW);
	end
end

local function ToggleStandaloneFrame()
	if not RemixStandaloneFrame then
		RemixStandaloneFrame = CreateFrame("Frame", "RAT_RemixStandaloneFrame", UIParent)
		RemixStandaloneFrame:SetSize(1618, 883)
		RemixStandaloneFrame:SetPoint("TOP", 0, -116)
		RemixStandaloneFrame:SetToplevel(true)
		--RemixStandaloneFrame:SetMovable(true)
		RemixStandaloneFrame:EnableMouse(true)

		tinsert(UISpecialFrames, RemixStandaloneFrame:GetName())
		--RemixStandaloneFrame:RegisterForDrag("LeftButton")
		--RemixStandaloneFrame:SetScript("OnDragStart", RemixStandaloneFrame.StartMoving)
		--RemixStandaloneFrame:SetScript("OnDragStop", RemixStandaloneFrame.StopMovingOrSizing)

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

local function RAT_SlashHandler(msg)
		-- if the main artifact frame is open, treat the slash command as a shortcut to the appearance tab
	if RemixArtifactFrame and RemixArtifactFrame:IsShown() then
		SelectRemixTab(2)
	else
		-- if the main artifact frame is closed, use the standalone frame
		if RemixStandaloneFrame and RemixStandaloneFrame:GetParent() ~= UIParent then
			RemixStandaloneFrame:SetParent(UIParent)
			RemixStandaloneFrame:ClearAllPoints()
			RemixStandaloneFrame:SetPoint("TOP", 0, -116)
			RemixStandaloneFrame:SetSize(1618, 883) -- re-apply size for standalone mode
		end

		ToggleStandaloneFrame()
	end
end
SLASH_REMIXARTIFACTTRACKER1 = L["SlashCmd1"];
SLASH_REMIXARTIFACTTRACKER2 = L["SlashCmd2"];
SLASH_REMIXARTIFACTTRACKER3 = L["SlashCmd3"];
SlashCmdList["REMIXARTIFACTTRACKER"] = RAT_SlashHandler;

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
	if not req then return true end
	
	-- if tables are empty, it's the base appearance (collected)
	local hasQuests = req.quests and #req.quests > 0
	local hasAchievements = req.achievements and #req.achievements > 0
	if not hasQuests and not hasAchievements then return true; end

	-- check quests
	if hasQuests then
		local questMet = false;
		for _, questID in ipairs(req.quests) do
			if C_QuestLog.IsQuestFlaggedCompleted(questID) then 
				questMet = true;
				if req.any then break; end
			elseif not req.any then
				questMet = false; break; -- the "collect 1 of the pillars" thing
			end
		end
		if not questMet then return false; end
	end

	-- check achievements
	if hasAchievements then
		local achMet = false
		for _, achID in ipairs(req.achievements) do
			local _, _, _, completed, _, _, _, _, _, _, _, _, wasEarnedByMe = GetAchievementInfo(achID)
			local isDone = (req.charspecific and wasEarnedByMe) or (not req.charspecific and completed)  -- some achieves aren't really warbound and tints want the char-specific ones
			
			if isDone then
				achMet = true
				if req.any then break end
			elseif not req.any then
				achMet = false; break
			end
		end
		if not achMet then return false end
	end

	return true
end

local function GetAchievementProgress(achievementID)
	local currentProgress, requiredProgress = 0, 0
	local numCriteria = GetAchievementNumCriteria(achievementID)
	if numCriteria == 0 then return nil, nil end

	for i = 1, numCriteria do
		local _, _, _, quantity, totalQuantity = GetAchievementCriteriaInfo(achievementID, i)
		currentProgress = currentProgress + quantity
		requiredProgress = totalQuantity
	end

	return currentProgress, requiredProgress
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
	
	local isCollected = false
	local charName = UnitName("player") .. "-" .. GetRealmName()
	local db = RemixArtifactTracker_DB and RemixArtifactTracker_DB[charName]
	
	if db and db.appearances and swatchButton.parentSpecID then
		local specAppearances = db.appearances[swatchButton.parentSpecID]
		if specAppearances and swatchButton.swatchData then
			isCollected = specAppearances[swatchButton.swatchData.modifiedID]
		end
	end

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
	local isTimerunner = PlayerGetTimerunningSeasonID() ~= nil
	
	local trackableAchievements = {
		[11152] = true, -- Dungeons
		[11153] = true, -- World Quests
		[11154] = true, -- Player Kills
	}

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

		local isRowUnobtainable = false
		if tintsToDisplay[1] and tintsToDisplay[1].unobtainable and tintsToDisplay[1].req and not AreRequirementsMet(tintsToDisplay[1].req) then
			isRowUnobtainable = true
		end


		for k, swatchButton in ipairs(row) do
			local tintData = tintsToDisplay[k]

			swatchButton:SetShown(tintData ~= nil)

			if tintData then
				-- set the swatch data for the button
				swatchButton.swatchData = tintData;
				swatchButton.parentSpecID = specID;

				-- tint swatch color
				swatchButton.swatch:SetVertexColor(UISwatchColorToRGB(tintData.color));

				-- swatch locked
				local isUnobtainable = isRowUnobtainable or (isTimerunner and tintData.unobtainableRemix)
				swatchButton.unobtainable:SetShown(isUnobtainable)
				swatchButton.locked:SetShown(not isUnobtainable and tintData.req and not AreRequirementsMet(tintData.req))

				-- swatch tooltip
				if tintData.tooltip then
					local currentItemID = specData.itemID

					local function UpdateTooltip(button)
						if not button.swatchData or not button.parentSpecID then return end
						local data = button.swatchData
						
						GameTooltip:SetOwner(button, "ANCHOR_TOP")
						
						if isTimerunner and data.unobtainableRemix then
							GameTooltip_AddErrorLine(GameTooltip, L["Unavailable"]);
						end
						if isRowUnobtainable then
							GameTooltip_AddErrorLine(GameTooltip, L["NoLongerAvailable"]);
						end

						GameTooltip_AddNormalLine(GameTooltip, data.tooltip)

						-- hidden artifact progress
						if data.req and data.req.achievements then
							local achID = data.req.achievements[1]
							if achID and trackableAchievements[achID] then
								local baseUnlocked = (not tintsToDisplay[1].req) or AreRequirementsMet(tintsToDisplay[1].req)
								if baseUnlocked then
									local current, total = GetAchievementProgress(achID)
									if current and total then
										GameTooltip:AddLine(string.format("\n(%d / %d)", current, total)) 
									end
								end
							end
						end

						-- warband logic
						local artifactClass = nil
						for classToken, artifacts in pairs(rat.ClassArtifacts) do
							for _, id in ipairs(artifacts) do
								if id == button.parentSpecID then
									artifactClass = classToken
									break
								end
							end
						end

						if IsShiftKeyDown() and data.modifiedID then
							local collectors = {}
							for name, charData in pairs(RemixArtifactTracker_DB or {}) do
								if charData.appearances then
									local charApps = charData.appearances[currentItemID]
									if charApps and charApps[data.modifiedID] then
										local color = (CUSTOM_CLASS_COLORS or RAID_CLASS_COLORS)[charData.class or "PRIEST"]
										table.insert(collectors, string.format("|c%s%s|r", color.colorStr, name))
									end
								end
							end

							if #collectors > 0 then
								GameTooltip:AddLine("\n"..L["CollectedBy"], 1, 0.82, 0)
								for _, coloredName in ipairs(collectors) do
									GameTooltip:AddLine(coloredName)
								end
							else
								GameTooltip:AddLine("\n" .. L["NotCollectedBy"], 0.5, 0.5, 0.5)
							end
						else
							GameTooltip:AddLine("\n"..L["HoldSHIFT"], 0.5, 0.5, 0.5)
						end
						GameTooltip:Show();
					end

					swatchButton:SetScript("OnEnter", UpdateTooltip);
					swatchButton:SetScript("OnLeave", GameTooltip_Hide);
					
					swatchButton:RegisterEvent("MODIFIER_STATE_CHANGED");
					swatchButton:SetScript("OnEvent", function(self, event, key)
						if (key == "LSHIFT" or key == "RSHIFT") and self:IsMouseOver() then
							UpdateTooltip(self);
						end
					end)
				else
					swatchButton:SetScript("OnEnter", nil);
					swatchButton:SetScript("OnLeave", nil);
					swatchButton:UnregisterEvent("MODIFIER_STATE_CHANGED");
				end

				-- transmog collected
				if specData.itemID and tintData.modifiedID then
					local hasTransmog = C_TransmogCollection.PlayerHasTransmog(specData.itemID, tintData.modifiedID)
					
					if hasTransmog then
						-- appearance is learned
						swatchButton.transmogIcon:SetDesaturated(false)
						swatchButton.transmogIcon:Show()
					elseif not swatchButton.locked:IsShown() and not swatchButton.unobtainable:IsShown() then -- otherwise tons of false icons
						-- tint is unlocked, but not collected
						swatchButton.transmogIcon:SetDesaturated(true) -- trigger "requires relog" tooltip
						swatchButton.transmogIcon:Show()
					else
						-- not unlocked and not collected
						swatchButton.transmogIcon:Hide()
					end
				else
					swatchButton.transmogIcon:Hide()
				end
			end
		end
	end
end

-- combined refresh function for panel, including swatches
RefreshPanel = function(frame)
	if not frame or not frame.customPanel then return end

	-- sync with the main RemixArtifactFrame if not manually overridden by the dropdown
	if not frame.isOverridden and RemixArtifactFrame and RemixArtifactFrame.attachedItemID then
		frame.attachedItemID = RemixArtifactFrame.attachedItemID
	end
	
	if not frame.attachedItemID then return end
	
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

	panel:SetScript("OnShow", RATFrame_OnShow);
	panel:SetScript("OnHide", RATFrame_OnHide);

	panel:SetAllPoints(true);
	panel:Hide();
	frame.customPanel = panel

	if frame == RemixStandaloneFrame then
		local closeButton = CreateFrame("Button", nil, panel, "UIPanelCloseButtonNoScripts");
		closeButton:SetPoint("TOPRIGHT", -8, -10);
		closeButton:SetScript("OnClick", function()
			frame:Hide();
			if RemixArtifactFrame then
				RemixArtifactFrame:Hide();
			end
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
	local MaxRows = 6;
	--if PlayerGetTimerunningSeasonID() then -- BLIZZORD LETS US COLLECT HIDDEN APPEARANCES
	--	MaxRows = 3;
	--end
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
			apptint.unobtainable = apptint:CreateTexture(nil, "OVERLAY", nil, 6);
			apptint.unobtainable:SetAllPoints();
			apptint.unobtainable:SetAtlas("Forge-UnobtainableCover");
			apptint.unobtainable:Hide();
			

			-- transmog collected icon
			apptint.transmogIcon = apptint:CreateTexture(nil, "OVERLAY", nil, 7);
			apptint.transmogIcon:SetSize(20, 20);
			apptint.transmogIcon:SetPoint("TOPRIGHT", 5, 5);
			apptint.transmogIcon:SetAtlas("Crosshair_Transmogrify_32");
			apptint.transmogIcon:SetScript("OnEnter", function(self)
				GameTooltip:SetOwner(self, "ANCHOR_TOP");
				if self:IsDesaturated() then -- transmog takes a relog for it to learn after tint is unlocked
					GameTooltip_AddErrorLine(GameTooltip, OPTION_LOGOUT_REQUIREMENT);
				else
					GameTooltip:SetText(TRANSMOGRIFY_TOOLTIP_APPEARANCE_KNOWN);
				end
				GameTooltip:Show();
			end);
			apptint.transmogIcon:SetScript("OnLeave", GameTooltip_Hide);
			apptint.transmogIcon:Hide();

			apptint:SetScript("OnClick", function(self)
				if self.selection:IsShown() and not self.locked:IsShown() then
					return;
				end
				SelectSwatch(self);
				PlaySound((self.locked:IsShown() or self.unobtainable:IsShown()) and SOUNDKIT.UI_70_ARTIFACT_FORGE_APPEARANCE_LOCKED or SOUNDKIT.UI_70_ARTIFACT_FORGE_APPEARANCE_COLOR_SELECT); -- 54131 or 54130
			end);
			panel.swatchRows[i][k] = apptint;
		end
	end
	if frame == RemixStandaloneFrame or isDebug then

		-- artifact select dropdown (might not be added to release version - instead filter to only current class)
		local function ArtifactSelector_GenerateMenu(_, rootDescription)
			rootDescription:SetScrollMode(300)
			local function SetSelected(data)
				frame.attachedItemID = data;
				-- set the override flag to true when user manually selects from dropdown
				frame.isOverridden = true;
				RefreshPanel(frame);
			end

			local function IsSelected(data)
				return data == frame.attachedItemID;
			end

			local function AddArtifactsForClass(token)
				local artifacts = rat.ClassArtifacts[token]
				if artifacts then
					local displayName = LOCALIZED_CLASS_NAMES_MALE[token] or token
					rootDescription:CreateTitle(displayName)

					for _, specID in ipairs(artifacts) do
						local itemID = rat.AppSwatchData[specID].itemID
						local itemName = C_Item.GetItemNameByID(itemID) or ("Item " .. itemID);
						rootDescription:CreateRadio(itemName, IsSelected, SetSelected, specID);
					end
				end
			end

			if panel.showAllClasses then
				local classes = {}
				for token in pairs(rat.ClassArtifacts) do
					if token ~= "DEBUG" and token ~= "EVOKER" and token ~= "Adventurer" then
						table.insert(classes, token)
					end
				end
				table.sort(classes)

				for _, classToken in ipairs(classes) do
					AddArtifactsForClass(classToken)
				end
			else
				local _, playerClass = UnitClass("player")
				AddArtifactsForClass(playerClass)
			end
		end

		-- artifact select dropdown
		local dropdown = CreateFrame("DropdownButton", nil, panel, "WowStyle1DropdownTemplate");
		dropdown:SetPoint("TOP", forgebg, "TOP", 0, -10);
		dropdown:SetWidth(300);
		dropdown:SetDefaultText(L["Artifact"]);
		dropdown:SetupMenu(ArtifactSelector_GenerateMenu);
		panel.artifactSelectorDropdown = dropdown;
		
		if not RemixArtifactTracker_DB then RemixArtifactTracker_DB = {} end
		if not RemixArtifactTracker_DB.Settings then RemixArtifactTracker_DB.Settings = {} end
		
		panel.showAllClasses = RemixArtifactTracker_DB.Settings.ShowAllClasses or false

		local settingsButton = CreateFrame("Button", nil, panel)
		settingsButton:SetPoint("LEFT", panel.artifactSelectorDropdown, "RIGHT", 10, 0)
		settingsButton:SetSize(20, 20)
		settingsButton:SetNormalAtlas("QuestLog-icon-setting")
		settingsButton:SetHighlightAtlas("QuestLog-icon-setting")
		
		settingsButton:SetScript("OnMouseDown", function(self)
			self:GetNormalTexture():SetTexCoord(-0.075, 0.925, -0.075, 0.925)
			self:GetHighlightTexture():SetTexCoord(-0.075, 0.925, -0.075, 0.925)
		end)
		settingsButton:SetScript("OnMouseUp", function(self)
			self:GetNormalTexture():SetTexCoord(0, 1, 0, 1)
			self:GetHighlightTexture():SetTexCoord(0, 1, 0, 1)
		end)

		local settingsFrame = CreateFrame("Frame", "RAT_SettingsFrame", panel)
		settingsFrame:SetSize(250, 100)
		settingsFrame:SetPoint("TOPLEFT", settingsButton, "BOTTOMRIGHT", 5, -5)
		settingsFrame:SetFrameLevel(panel:GetFrameLevel() + 20)
		settingsFrame:EnableMouse(true)
		settingsFrame:Hide()

		local settingsBg = settingsFrame:CreateTexture(nil, "BACKGROUND", nil, 0)
		settingsBg:SetAllPoints()
		settingsBg:SetAtlas("housing-basic-container")
		settingsBg:SetTextureSliceMargins(64, 64, 64, 112)
		settingsBg:SetTextureSliceMode(Enum.UITextureSliceMode.Stretched)

		local closeBtn = CreateFrame("Button", nil, settingsFrame, "UIPanelCloseButtonNoScripts")
		closeBtn:SetPoint("TOPRIGHT", -5, -5)
		closeBtn:SetScript("OnClick", function() settingsFrame:Hide() end)

		local title = settingsFrame:CreateFontString(nil, "OVERLAY", "GameFontNormal")
		title:SetPoint("TOP", 0, -15)
		title:SetText(L["Settings"])

		local showAllCb = CreateFrame("CheckButton", nil, settingsFrame, "ChatConfigCheckButtonTemplate")
		showAllCb:SetPoint("TOPLEFT", 20, -40)
		showAllCb.Text:SetText(L["ShowAllClasses"])
		showAllCb:SetChecked(panel.showAllClasses)
		showAllCb:SetScript("OnClick", function(self)
			local checked = self:GetChecked()
			panel.showAllClasses = checked
			RemixArtifactTracker_DB.Settings.ShowAllClasses = checked
			panel.artifactSelectorDropdown:GenerateMenu()
		end)

		settingsButton:SetScript("OnClick", function()
			settingsFrame:SetShown(not settingsFrame:IsShown())
		end)
		settingsButton:SetScript("OnEnter", function(self)
			GameTooltip:SetOwner(self, "ANCHOR_TOP")
			GameTooltip:AddLine(L["Settings"])
			GameTooltip:Show()
		end)
		settingsButton:SetScript("OnLeave", function(self)
			GameTooltip:Hide()
		end)
		
		-- update the dropdown text once the item name is loaded from the server
		if not panel.itemInfoListener then
			local listener = CreateFrame("Frame")
			listener:RegisterEvent("GET_ITEM_INFO_RECEIVED")
			listener:SetScript("OnEvent", function(self, event, itemID)
				if not dropdown or not frame.attachedItemID then return end

				local currentArtifactData = rat.AppSwatchData[frame.attachedItemID]
				if currentArtifactData and currentArtifactData.itemID == itemID then
					local itemName = C_Item.GetItemNameByID(itemID)
					if itemName then
						dropdown:SetText(itemName)
					end
				end
			end)
			panel.itemInfoListener = listener
		end
	end
end
	
-- Tabs stuff
SelectRemixTab = function(tabID)
	PanelTemplates_SetTab(RemixArtifactFrame, tabID*2)
	PlaySound(SOUNDKIT.IG_CHARACTER_INFO_TAB)

	if tabID == 1 then -- traits
		if RemixStandaloneFrame and RemixStandaloneFrame:IsShown() then
			RemixStandaloneFrame:Hide()
			RemixArtifactFrame:SetToplevel(true)
		end
	elseif tabID == 2 then -- appearances
		if not RemixStandaloneFrame then
			ToggleStandaloneFrame()
		end
		if not RemixArtifactFrame then return end

		RemixStandaloneFrame:ClearAllPoints()
		RemixStandaloneFrame:SetParent(RemixArtifactFrame)
		RemixStandaloneFrame:SetPoint("TOPLEFT", RemixArtifactFrame, "TOPLEFT")
		RemixStandaloneFrame:SetPoint("BOTTOMRIGHT", RemixArtifactFrame, "BOTTOMRIGHT")
		RemixArtifactFrame:SetToplevel(false)
		if RemixArtifactFrame.BorderContainer then
			RemixStandaloneFrame:SetFrameLevel(RemixArtifactFrame.BorderContainer:GetFrameLevel()+1)
		end
		RemixStandaloneFrame:Show()
	end
end

local function SetupRemixTabs()
	if not RemixArtifactFrame or RemixArtifactFrame.numTabs then
		return
	end

	RemixArtifactFrame.Tabs = {}
	local frameName = RemixArtifactFrame:GetName()

	-- traits
	local tab1 = CreateFrame("Button", frameName.."Tab1", RemixArtifactFrame, "PanelTabButtonTemplate")
	tab1:SetID(1)
	tab1:SetText(L["Traits"])
	tab1:SetPoint("TOPLEFT", RemixArtifactFrame, "BOTTOMLEFT", 20, 2)
	tab1:SetScript("OnClick", function(self) SelectRemixTab(self:GetID()) end)
	table.insert(RemixArtifactFrame.Tabs, tab1)

	-- appearances
	local tab2 = CreateFrame("Button", frameName.."Tab2", RemixArtifactFrame, "PanelTabButtonTemplate")
	tab2:SetID(2)
	tab2:SetText(L["Appearances"])
	tab2:SetPoint("TOPLEFT", tab1, "TOPRIGHT", 3, 0)
	tab2:SetScript("OnClick", function(self) SelectRemixTab(self:GetID()) end)
	table.insert(RemixArtifactFrame.Tabs, tab2)

	RemixArtifactFrame.numTabs = #RemixArtifactFrame.Tabs

	PanelTemplates_TabResize(tab1)
	PanelTemplates_TabResize(tab2)

	RemixArtifactFrame:HookScript("OnHide", function()
		if RemixStandaloneFrame and RemixStandaloneFrame:IsShown() then
			RemixStandaloneFrame:Hide()
		end
	end)
	
	SelectRemixTab(1)
end

local function OnSetTreeID()
	SetupRemixTabs()
	SelectRemixTab(1)
end

-- This function handles live updates when the artifact is changed in the main Remix frame.
local function OnArtifactTreeChanged()
	if RemixStandaloneFrame then
		-- An external change occurred, so we must disable the dropdown's override.
		RemixStandaloneFrame.isOverridden = false;
		-- Refresh the panel to sync with the new attachedItemID.
		RefreshPanel(RemixStandaloneFrame);
	end
end

EventRegistry:RegisterCallback("RemixArtifactFrame.SetTreeID", OnSetTreeID)
EventRegistry:RegisterCallback("RemixArtifactFrame.SetTreeID", OnArtifactTreeChanged)

local function IsTintUnlockedLocally(tintData)
	local hasQuests = tintData.req and tintData.req.quests and #tintData.req.quests > 0
	local hasAchievements = tintData.req and tintData.req.achievements and #tintData.req.achievements > 0

	if not hasQuests and not hasAchievements then
		return true
	end

	-- check achievements
	if hasAchievements then
		for _, achID in ipairs(tintData.req.achievements) do
			local _, _, _, completed = GetAchievementInfo(achID)
			if completed then return true end
		end
	end

	-- check quests
	if hasQuests then
		for _, questID in ipairs(tintData.req.quests) do
			if C_QuestLog.IsQuestFlaggedCompleted(questID) then return true end
		end
	end

	return false
end

local function UpdateCharacterCollection()
	RemixArtifactTracker_DB = RemixArtifactTracker_DB or {}
	local _, classToken = UnitClass("player")
	local charName = UnitName("player") .. "-" .. GetRealmName()
	
	RemixArtifactTracker_DB[charName] = RemixArtifactTracker_DB[charName] or { appearances = {}, class = classToken }
	
	local classArtifacts = rat.ClassArtifacts[classToken]
	if classArtifacts then
		for _, specID in ipairs(classArtifacts) do
			local specData = rat.AppSwatchData[specID]
			if specData and specData.itemID and specData.appearances then
				local itemID = specData.itemID
				RemixArtifactTracker_DB[charName].appearances[itemID] = {} 
				
				for _, app in ipairs(specData.appearances) do
					for _, tint in ipairs(app.tints) do
						if AreRequirementsMet(tint.req) then
							RemixArtifactTracker_DB[charName].appearances[itemID][tint.modifiedID] = true
						end
					end
				end
			end
		end
	end
end

local loginFrame = CreateFrame("Frame")
loginFrame:RegisterEvent("PLAYER_ENTERING_WORLD")
loginFrame:SetScript("OnEvent", UpdateCharacterCollection)