GameTooltip:HookScript("OnUpdate", function(self, elpased)
	local x, y = GetCursorPosition()
	local effScale = self:GetEffectiveScale()
	self:ClearAllPoints()
	self:SetPoint("BOTTOM", UIParent, "BOTTOMLEFT", (x / effScale), (y / effScale))
end)

hooksecurefunc("GameTooltip_SetDefaultAnchor", function(tooltip, parent)
	if GetMouseFocus() ~= WorldFrame then return end
	tooltip:SetOwner(parent, "ANCHOR_CURSOR")
	tooltip.default = 1
end)