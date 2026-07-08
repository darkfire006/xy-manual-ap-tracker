--HOSTED_ITEMS = {}

function initialize_watch_items()
    --for _, code in pairs(HOSTED_ITEMS) do
        --ScriptHost:AddWatchForCode(code, code, toggle_item)
    --end
    
--    ScriptHost:AddWatchForCode("Map Tabbing", "*", tabswitch)
    ScriptHost:AddWatchForCode("Shuffle Tricks", "opt_tricks", toggle_itemgrid)
    ScriptHost:AddWatchForCode("Backgroundsanity", "opt_backgrounds", toggle_itemgrid)
    ScriptHost:AddWatchForCode("Mega Evolutions", "opt_megas", toggle_itemgrid)
    ScriptHost:AddWatchForCode("Game Version", "opt_ver", toggle_mega_grid)
    
end