dofile_once("data/scripts/lib/utilities.lua")
dofile_once( "data/scripts/game_helpers.lua" )

function death( damage_type_bit_field, damage_message, entity_thats_responsible, drop_items )

    local catgold = ModSettingGet( "congas_cats.congacat_cat_gold" )

    if catgold == true then

        local entity_id    = GetUpdatedEntityID()
        local x, y = EntityGetTransform( entity_id )

        load_gold_entity( "data/entities/items/pickup/goldnugget_200.xml", x, y-8, remove_timer )
        load_gold_entity( "data/entities/items/pickup/goldnugget_200.xml", x, y-8, remove_timer )
        load_gold_entity( "data/entities/items/pickup/goldnugget_200.xml", x, y-8, remove_timer )
        load_gold_entity( "data/entities/items/pickup/goldnugget_200.xml", x, y-8, remove_timer )
        load_gold_entity( "data/entities/items/pickup/goldnugget_200.xml", x, y-8, remove_timer )
        load_gold_entity( "data/entities/items/pickup/goldnugget_200.xml", x, y-8, remove_timer )
        load_gold_entity( "data/entities/items/pickup/goldnugget_200.xml", x, y-8, remove_timer )
        load_gold_entity( "data/entities/items/pickup/goldnugget_200.xml", x, y-8, remove_timer )

    end
end