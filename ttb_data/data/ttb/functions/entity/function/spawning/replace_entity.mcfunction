#called by entity/function/spawning/check

#get entity to spawn, if any
loot spawn ~ ~ ~ loot ttb:entities/function/spawning/get_entity

#summon entity
execute as @e[type=item,distance=0] if data entity @s Item.tag.ttb.entity run function ttb:entity/function/spawning/summon_new_entity

#debug notification
title @a[tag=ttb_debug] actionbar [{"selector":"@s"},": ",[{"nbt":"Pos[0]","entity":"@s"}," ",{"nbt":"Pos[1]","entity":"@s"}," ",{"nbt":"Pos[2]","entity":"@s"}]," ",{"nbt":"Item.tag.ttb.entity","entity":"@e[type=item,tag=ttb_entity_spawn_env_check]"}]

#remove previous entity
tag @s[type=!player,type=!#ttb:sprite] add ttb_remove
