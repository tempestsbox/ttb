#player tick
#@s - player
#called by tick

#custom block placement
execute if entity @s[scores={ttb_plc_iframe=1..}] as @e[type=item_frame,tag=ttb_create_entity] at @s align xyz positioned ~.5 ~.5 ~.5 run function ttb:block/create_block
scoreboard players reset @s ttb_plc_iframe
