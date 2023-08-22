dofile("data/scripts/lib/mod_settings.lua")

function mod_setting_change_callback( mod_id, gui, in_main_menu, setting, old_value, new_value  )
	print( tostring(new_value) )
end

local currentLang = GameTextGetTranslatedOrNot("$current_language")

local congacat_cat_immortal_name = "Cat immortality"
local congacat_cat_immortal_desc = "Are cats immortal?"
local congacat_cat_gold_name = "Cats drop gold"
local congacat_cat_gold_desc = "Do rare cat variants, such as the Golden Kitty, drop gold?"
local congacat_cat_wild_name = "Cats appear in wild"
local congacat_cat_wild_desc = "Can cats appear in the wild? \nWill cats appear randomly in any biome?"
local congacat_cat_wild_chance_name = "Wild Cat Chance"
local congacat_cat_wild_chance_desc = "Chance that cats will appear in the wild. \nThis is the 'weight' that a cat appears in the wild, the default value is 002. \nThis slider can go from 0 weight to 100 weight. \nHere are some recommended weight values to try out: \n002 (rare cats, default amount) \n010 (common cats) \n020 (very frequent cats) \n050 (extremely frequent cats) \n100 (cats override normal spawns frequently) \n1000 (with spawn boost enabled.. please stop)"
local congacat_cat_wild_slider = " $0 Weight"
local congacat_cat_wild_chance_boost_name = "Boost Wild Cat Chance"
local congacat_cat_wild_chance_boost_desc = "Multiply wild cat spawn chances by 10x."

--Russian Translations
if currentLang == "русский" then

  congacat_cat_immortal_name = "Бессмертие кошек"
  congacat_cat_immortal_desc = "Являются ли кошки бессмертными?"
  congacat_cat_gold_name = "Из кошек выпадает золото"
  congacat_cat_gold_desc = "Выпадает ли золото из редких разновидностей кошек, таких как золотая кошка?"
  congacat_cat_wild_name = "Появление кошек в дикой природе"
  congacat_cat_wild_desc = "Могут ли кошки появляться в дикой природе? \nБудут ли кошки появляться случайным образом в любом биоме?"
  congacat_cat_wild_chance_name = "Шанс дикой кошки"
  congacat_cat_wild_chance_desc = "Шанс того, что кошки появятся в дикой природе. \nЭтот «вес» того, что кошка появится в дикой природе,\n значение по умолчанию - 002. \nЭтот ползунок может изменяться от 0 до 100. \nВот несколько рекомендуемых значений веса, которые можно попробовать: \n002 (редко встречающиеся кошки, по умолчанию) \n010 (обычно встречающиеся кошки) \n020 (очень часто встречающиеся кошки) \n050 (чрезвычайно часто встречающиеся кошки) \n100 (кошки встречаются чаще, чем другие существа) \n1000 (с включенным усилителем появления... пожалуйста, остановитесь)"
  congacat_cat_wild_slider = " $0 вес"
  congacat_cat_wild_chance_boost_name = "Увеличение шанса дикой кошки"
  congacat_cat_wild_chance_boost_desc = "Увеличивает шансы на появление дикой кошки в 10 раз."

end

local mod_id = "congas_cats"
mod_settings_version = 1
mod_settings = 
{
  {
    id = "congacat_cat_gold",
    ui_name = congacat_cat_gold_name,
    ui_description = congacat_cat_gold_desc,
    value_default = true,
    scope = MOD_SETTING_SCOPE_RUNTIME,
  },
  {
    id = "congacat_cat_wild",
    ui_name = congacat_cat_wild_name,
    ui_description = congacat_cat_wild_desc,
    value_default = true,
    scope = MOD_SETTING_SCOPE_NEW_GAME,
  },
  {
    id = "congacat_cat_immortal",
    ui_name = congacat_cat_immortal_name,
    ui_description = congacat_cat_immortal_desc,
    value_default = true,
    scope = MOD_SETTING_SCOPE_NEW_GAME,
  },
  {
    id = "conga_cat_wild_chance",
    ui_name = congacat_cat_wild_chance_name,
    ui_description = congacat_cat_wild_chance_desc,
    value_default = 002,
    value_min = 000,
    value_max = 100,
    value_display_multiplier = 1,
    value_display_formatting = congacat_cat_wild_slider,
    scope = MOD_SETTING_SCOPE_NEW_GAME,
  },
  {
    id = "conga_cat_wild_chance_superboost",
    ui_name = congacat_cat_wild_chance_boost_name,
    ui_description = congacat_cat_wild_chance_boost_desc,
    value_default = false,
    scope = MOD_SETTING_SCOPE_NEW_GAME,
  },

}

if ( month == 12 ) and ( day >= 16 ) and (day <= 20) and ( year == 2022 ) then
  table.insert(mod_settings,
  {
    id = "conga_cat_mocreep_sign",
    ui_name = "Mo Creeps 1.1.0 update sign",
    ui_description = "Will a sign appear showing off the More Creeps & Weirdos 1.1.0 update? \nI'm sorry if this bothered you, I just felt really proud of it and wanted to get the word out.",
    value_default = true,
    scope = MOD_SETTING_SCOPE_NEW_GAME,
  })
end

function ModSettingsUpdate( init_scope )
	local old_version = mod_settings_get_version( mod_id )
	mod_settings_update( mod_id, mod_settings, init_scope )
end

function ModSettingsGuiCount()
	return mod_settings_gui_count( mod_id, mod_settings )
end

function ModSettingsGui( gui, in_main_menu )
	mod_settings_gui( mod_id, mod_settings, gui, in_main_menu )
end
