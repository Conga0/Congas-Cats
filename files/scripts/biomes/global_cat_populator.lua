dofile("data/scripts/lib/mod_settings.lua")
--- Cats

local wildCatsChance = ModSettingGet( "congas_cats.conga_cat_wild_chance" )
local wildCatBoost = ModSettingGet( "congas_cats.conga_cat_wild_chance_superboost" )
if wildCatsChance ~= nil then
    wildCatsChance = (wildCatsChance * 0.01)
    if wildCatBoost == true then
        wildCatsChance = (wildCatsChance * 10)
    end
else
    local wildCatsChance = 0.02    
end

table.insert(g_small_enemies,
{
    prob           = wildCatsChance,
    min_count    = 1,
    max_count    = 1,    
    entity     = "mods/congas_cats/files/entities/special/conjurer_cat_spawner.xml"
})