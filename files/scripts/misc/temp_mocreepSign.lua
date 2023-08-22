dofile_once("data/scripts/lib/utilities.lua")

--Spawns the sign alerting of Mo Creeps if enabled
if ModIsEnabled("purgatory") then
    local nxml = dofile_once("mods/congas_cats/lib/nxml.lua")
    local content = ModTextFileGetContent("mods/purgatory/files/biome/_pixel_scenes.xml")
    local xml = nxml.parse(content)
    xml:first_of("mBufferedPixelScenes"):add_child(nxml.parse([[
        <PixelScene pos_x="505" pos_y="-105" just_load_an_entity="mods/congas_cats/files/entities/props/sign_motd/sign_creep_headsup.xml" />
    ]]))
    ModTextFileSetContent("mods/purgatory/files/biome/_pixel_scenes.xml", tostring(xml))
else
    local nxml = dofile_once("mods/congas_cats/lib/nxml.lua")
    local content = ModTextFileGetContent("data/biome/_pixel_scenes.xml")
    local xml = nxml.parse(content)
    xml:first_of("mBufferedPixelScenes"):add_child(nxml.parse([[
        <PixelScene pos_x="505" pos_y="-105" just_load_an_entity="mods/congas_cats/files/entities/props/sign_motd/sign_creep_headsup.xml" />
    ]]))
    ModTextFileSetContent("data/biome/_pixel_scenes.xml", tostring(xml))
end