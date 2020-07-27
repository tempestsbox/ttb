# called by entity/player/tick

execute if entity @s[y_rotation=135.00001..-135] run scoreboard players set custom_block_rotation ttb_data 0
execute if entity @s[y_rotation=-135.0001..-44.99999] run scoreboard players set custom_block_rotation ttb_data 90
execute if entity @s[y_rotation=-45..45] run scoreboard players set custom_block_rotation ttb_data 180
execute if entity @s[y_rotation=45.00001..135] run scoreboard players set custom_block_rotation ttb_data -90

kill @s[tag=ttb_gui_has_items]

execute as @e[type=item_frame,tag=ttb_create_entity,distance=..7] at @s align xyz positioned ~.5 ~.5 ~.5 run function ttb:block/create_block
