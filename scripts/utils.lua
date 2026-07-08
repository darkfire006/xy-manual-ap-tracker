function has(item, amount)
	local count = Tracker:ProviderCountForCode(item)
	amount = tonumber(amount)
	if not amount then
		return count > 0
	else
		return count >= amount
	end
end

function toggle_item(code)
    local active = Tracker:FindObjectForCode(code).Active
    code = code
    local object = Tracker:FindObjectForCode(code)
    if object then
        object.Active = active
    else
        if ENABLE_DEBUG_LOG then
            print(string.format("toggle_item: could not find object for code %s", code))
        end
    end
end

function has_value (t, val)
    for i, v in ipairs(t) do
        if v == val then return 1 end
    end
    return 0
end

function dump_table(o, depth)
    if depth == nil then
        depth = 0
    end
    if type(o) == 'table' then
        local tabs = ('\t'):rep(depth)
        local tabs2 = ('\t'):rep(depth + 1)
        local s = '{\n'
        for k, v in pairs(o) do
            if type(k) ~= 'number' then
                k = '"' .. k .. '"'
            end
            s = s .. tabs2 .. '[' .. k .. '] = ' .. dump_table(v, depth + 1) .. ',\n'
        end
        return s .. tabs .. '}'
    else
        return tostring(o)
    end
end

function toggle_hosted_item(code)
    local active = Tracker:FindObjectForCode(code).Active
    code = code:gsub("")
    local object = Tracker:FindObjectForCode(code)
    if object then
        object.Active = active
    else
        if ENABLE_DEBUG_LOG then
            print(string.format("toggle_hosted_item: could not find object for code %s", code))
        end
    end
end

function containsItem(list, item)
    if list and item then
        for _, value in pairs(list) do
            if value == item then
                return true
            end
        end
    end
    
    return false
end

function tabswitch(unsanitized)
    if string.sub(unsanitized, 1, 6) == "tabto_" then
        local mapgroup, submap = unsanitized:match("tabto_(.-)_and_(.+)")
        Tracker:UiHint("ActivateTab", mapgroup)
        Tracker:UiHint("ActivateTab", submap)
        Tracker:FindObjectForCode(unsanitized).Active = false
    end
end

function toggle_itemgrid()
    local tricks = has("opt_tricks_on")
    local backgs = has("opt_backgrounds_gen") or has("opt_backgrounds_spec")
    local megas = has("opt_megas_nosheep") or has("opt_megas_full")
	
	local suffix = ""
	
	if tricks == true then
		suffix = suffix .. "_tricks"
	end
	
	if backgs == true then
		suffix = suffix .. "_backgs"
	end
	
	if megas == true then
		suffix = suffix .. "_megas"
	end
	
    Tracker:AddLayouts("layouts/tracker" .. suffix .. ".json")
	
	toggle_mega_grid()
end

function toggle_mega_grid()
	if has("opt_ver_x") == true then
		Tracker:AddLayouts("layouts/mega_x.json")
	else
		Tracker:AddLayouts("layouts/mega_y.json")
	end
end