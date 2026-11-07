_G[ModPath] = _G[ModPath] or {}
if _G[ModPath][RequiredScript] then return end
_G[ModPath][RequiredScript] = true

if _G.LegendStats then
	return
end

--Anarcho Grip already has no stats so we don't need to do balance it
--PostHook last function in init, make sure that all attachments and whatnot have been set up.
Hooks:PostHook(WeaponFactoryTweakData, "_set_inaccessibles", "SupAnarchBar-PostHook-WeaponFactoryTweakData:_set_inaccessibles", function(self)
	--Safely add a value to the table of a part_id. Creates the table if it does not exist.
	--Does nothing if value==part_id or if the value is already in the table.
	local function wftd_safe_add_value(part_id, table_name, value)
		if value ~= part_id and self.parts[part_id] then
			self.parts[part_id][table_name] = self.parts[part_id][table_name] or {}
			if not table.contains(self.parts[part_id][table_name], value) then
				table.insert(self.parts[part_id][table_name], value)
			end
		end
	end

	--New localization by OSA/AOLA
	self.parts.wpn_fps_pis_judge_b_legend.legend_part_name_type = "barrel_sup"

	--Copy stats of Silent Killer Suppressor
	self.parts.wpn_fps_pis_judge_b_legend.stats = deep_clone(self.parts.wpn_fps_upg_ns_shot_thick.stats)

	--Add "silencer" perk, "gadget" perk is not overwritten
	wftd_safe_add_value("wpn_fps_pis_judge_b_legend", "perks", "silencer")

	--Suppressed fire sound, clone Silent Killer Suppressor
	self.parts.wpn_fps_pis_judge_b_legend.sound_switch = deep_clone(self.parts.wpn_fps_upg_ns_shot_thick.sound_switch)

	--Block all barrel extensions
	for _, part_id in pairs(self.wpn_fps_pis_judge.uses_parts) do
		if self.parts[part_id] and self.parts[part_id].type == "barrel_ext" then
			wftd_safe_add_value("wpn_fps_pis_judge_b_legend", "forbids", part_id)
		end
	end

	--Block Dragon's Breath
	wftd_safe_add_value("wpn_fps_pis_judge_b_legend", "forbids", "wpn_fps_upg_a_dragons_breath")
end)
