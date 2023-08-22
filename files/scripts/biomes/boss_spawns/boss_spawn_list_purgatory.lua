dofile("data/scripts/lib/utilities.lua")


--Spawns Kitty Cats at the start of the game, Cat, I'm a Kitty Cat! And I dance dance dance and I dance dance dance!! Nyaaa!!
local nxml = dofile_once("mods/congas_cats/lib/nxml.lua")
local content = ModTextFileGetContent("mods/purgatory/files/biome/_pixel_scenes.xml")
local xml = nxml.parse(content)
xml:first_of("mBufferedPixelScenes"):add_child(nxml.parse([[
    <PixelScene pos_x="676" pos_y="-106" just_load_an_entity="data/entities/buildings/c_intro_kitty_populator.xml" />
]]))
ModTextFileSetContent("mods/purgatory/files/biome/_pixel_scenes.xml", tostring(xml))


--Spawns Kitty Cats at the end of the game.. It's been a long journey, best of luck, friend.
local nxml = dofile_once("mods/congas_cats/lib/nxml.lua")
local content = ModTextFileGetContent("mods/purgatory/files/biome/_pixel_scenes.xml")
local xml = nxml.parse(content)
xml:first_of("mBufferedPixelScenes"):add_child(nxml.parse([[
    <PixelScene pos_x="3053" pos_y="13113" just_load_an_entity="data/entities/buildings/c_outro_kitty_populator.xml" />
]]))
ModTextFileSetContent("mods/purgatory/files/biome/_pixel_scenes.xml", tostring(xml))