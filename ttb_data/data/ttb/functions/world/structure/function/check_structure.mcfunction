#called by entity/area_effect_cloud/tick

execute if entity @s[tag=ttb_structure_large_wooden_snow_dungeon] positioned ~-8 ~-14 ~-8 run function ttb:world/structure/large_wooden_snow_dungeon/create

#debug message
tellraw @a[tag=ttb_debug] [{"nbt":"Tags","entity":"@s"}," ",{"nbt":"Pos","entity":"@s"}]
#remove entity
tag @s[type=!player] add ttb_remove
