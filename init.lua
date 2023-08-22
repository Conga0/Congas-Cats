dofile("data/scripts/lib/utilities.lua")


if ModIsEnabled("Mo_Creeps") == false then

  --Spawns Cats via pixelscenes
  if ModIsEnabled("raksa") == false then
    if ModIsEnabled("purgatory") then
      dofile_once( "mods/congas_cats/files/scripts/biomes/boss_spawns/boss_spawn_list_purgatory.lua" )
    else
      dofile_once( "mods/congas_cats/files/scripts/biomes/boss_spawns/boss_spawn_list.lua" )
    end
  end

  -- Conjurer Mod, adds cats, buildings and wands to a custom tab
  if ModIsEnabled("raksa") then
    ModLuaFileAppend( "mods/raksa/files/scripts/lists/entity_categories.lua", "mods/congas_cats/files/scripts/mod_compatibility/conjurer_populator.lua" )
  end
end

local wildCats = ModSettingGet( "congas_cats.congacat_cat_wild" )

if wildCats == true then

  ModLuaFileAppend( "data/scripts/biomes/wizardcave.lua", "mods/congas_cats/files/scripts/biomes/global_cat_populator.lua" ) --Wizard's Den, aside from the darkness it's pretty habitable. Polymorph liquid is scarier, I can't shield that.
  ModLuaFileAppend( "data/scripts/biomes/coalmine.lua", "mods/congas_cats/files/scripts/biomes/global_cat_populator.lua" ) --Coal Mine, first area, goodluck on your run
  ModLuaFileAppend( "data/scripts/biomes/the_end.lua", "mods/congas_cats/files/scripts/biomes/global_cat_populator.lua" ) --Heaven, or Hell, your choice. Either are The Work.
  ModLuaFileAppend( "data/scripts/biomes/desert.lua", "mods/congas_cats/files/scripts/biomes/global_cat_populator.lua" ) --Desert above ground, careful not to die to any Stendari
  ModLuaFileAppend( "data/scripts/biomes/crypt.lua", "mods/congas_cats/files/scripts/biomes/global_cat_populator.lua" ) --Temple of the Arts.. who died here?
  ModLuaFileAppend( "data/scripts/biomes/pyramid.lua", "mods/congas_cats/files/scripts/biomes/global_cat_populator.lua" ) --Presumably everything below the entrance to the pyramid
  ModLuaFileAppend( "data/scripts/biomes/fungicave.lua", "mods/congas_cats/files/scripts/biomes/global_cat_populator.lua" ) --BUNGUS!! cave, west side of area 2 for example
  ModLuaFileAppend( "data/scripts/biomes/coalmine_alt.lua", "mods/congas_cats/files/scripts/biomes/global_cat_populator.lua" ) --Coalmine but to the west side near damp cave
  ModLuaFileAppend( "data/scripts/biomes/pyramid_hallway.lua", "mods/congas_cats/files/scripts/biomes/global_cat_populator.lua" ) --Pyramid entrance, presumably
  ModLuaFileAppend( "data/scripts/biomes/excavationsite.lua", "mods/congas_cats/files/scripts/biomes/global_cat_populator.lua" ) --Coal Pits, area 2
  ModLuaFileAppend( "data/scripts/biomes/fungiforest.lua", "mods/congas_cats/files/scripts/biomes/global_cat_populator.lua" ) --Overgrowth
  ModLuaFileAppend( "data/scripts/biomes/snowcave.lua", "mods/congas_cats/files/scripts/biomes/global_cat_populator.lua" ) --Snowy Depths
  ModLuaFileAppend( "data/scripts/biomes/wandcave.lua", "mods/congas_cats/files/scripts/biomes/global_cat_populator.lua" ) --Magical temple.. huh
  ModLuaFileAppend( "data/scripts/biomes/sandcave.lua", "mods/congas_cats/files/scripts/biomes/global_cat_populator.lua" ) --Desert sand cave, I don't think it includes desert chasm
  ModLuaFileAppend( "data/scripts/biomes/vault.lua", "mods/congas_cats/files/scripts/biomes/global_cat_populator.lua" ) --The Vault
  ModLuaFileAppend( "data/scripts/biomes/clouds.lua", "mods/congas_cats/files/scripts/biomes/global_cat_populator.lua" ) --Cloudscapes
  ModLuaFileAppend( "data/scripts/biomes/hills.lua", "mods/congas_cats/files/scripts/biomes/global_cat_populator.lua" ) --Hills, aka forest.
  ModLuaFileAppend( "data/scripts/biomes/robot_egg.lua", "mods/congas_cats/files/scripts/biomes/global_cat_populator.lua" ) --I'm sure you can guess
  ModLuaFileAppend( "data/scripts/biomes/winter.lua", "mods/congas_cats/files/scripts/biomes/global_cat_populator.lua" ) --Winter appears to be the snow chasm... terrifying. Also line 69!
  ModLuaFileAppend( "data/scripts/biomes/rainforest.lua", "mods/congas_cats/files/scripts/biomes/global_cat_populator.lua" ) --Jungle
  ModLuaFileAppend( "data/scripts/biomes/rainforest_dark.lua", "mods/congas_cats/files/scripts/biomes/global_cat_populator.lua" ) --Lukki Lair.. creepy
  ModLuaFileAppend( "data/scripts/biomes/vault_frozen.lua", "mods/congas_cats/files/scripts/biomes/global_cat_populator.lua" ) --Like the vault, but way colder, worse, more hisii and with a really rude welcoming
  ModLuaFileAppend( "data/scripts/biomes/snowcastle.lua", "mods/congas_cats/files/scripts/biomes/global_cat_populator.lua" ) --Hisii Base... Interesting name.. I won't judge.. too much, I've used some really weird inengine names myself in the past
  ModLuaFileAppend( "data/scripts/biomes/robobase.lua", "mods/congas_cats/files/scripts/biomes/global_cat_populator.lua" ) --Power Plant
  ModLuaFileAppend( "data/scripts/biomes/liquidcave.lua", "mods/congas_cats/files/scripts/biomes/global_cat_populator.lua" ) --Abandoned Alchemy Lab

end

-- Custom Audio Support

ModRegisterAudioEventMappings("mods/congas_cats/files/audio/GUIDs.txt")


--Mo Creeps Sign translation headsup
--
local year, month, day = GameGetDateAndTimeLocal()

if ( month == 12 ) and ( day >= 16 ) and (day <= 20) and ( year == 2022 ) then
  if (ModIsEnabled("Mo_Creeps") == false) and (ModSettingGet( "congas_cats.conga_cat_mocreep_sign" ) == true) then
    dofile_once( "mods/congas_cats/files/scripts/misc/temp_mocreepSign.lua" )
  end
end


local content = ModTextFileGetContent("data/translations/common.csv")
ModTextFileSetContent("data/translations/common.csv", content .. [[
sign_congascats_creepsshowcase,"Check Out More Creeps & Weirdos on the workshop, 1.1.0 update out today! \n Featuring new Creeps, a new super boss and plenty more secrets to find for yourself!\n[This message will be removed after 4 days, This can also be disabled before then in this mod's settings]",,,,,,,,,,,,,
sign_congascats_creepsshowcase,"Check Out More Creeps & Weirdos on the workshop, 1.1.0 update out today! \n Featuring new Creeps, a new super boss and plenty more secrets to find for yourself!\n[This message will be removed after 4 days, This can also be disabled before then in this mod's settings]",,,,,,,,,,,,,
]])


--1.0.0 release sign
--[[
  sign_congascats_creepsshowcase,"Checkout More Creeps and Weirdos!!! \nA mod about new creatures, secrets, spells & more! \n[This message will be removed after 4 days, This can also be disabled before then in this mod's settings]",,,,,,,,,,,,,
]]--