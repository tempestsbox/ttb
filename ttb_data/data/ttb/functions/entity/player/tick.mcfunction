#called by tick

execute if entity @s[scores={ttb_place_iframe=1..}] as @e[type=item_frame,tag=ttb_create_entity] at @s align xyz positioned ~.5 ~.5 ~.5 run function ttb:block/create_block
execute if entity @s[scores={ttb_use_crtstck=1..}] run function ttb:entity/player/used_item/carrot_on_a_stick
scoreboard players reset @s ttb_place_iframe
scoreboard players reset @s ttb_use_crtstck
