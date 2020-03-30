#called by entity/function/spawning/check

#get entity to spawn, if any
loot spawn ~ ~ ~ loot ttb:entities/function/spawning/get_entity
#retry globally if non-existent
execute unless entity @e[type=item,tag=ttb_spawning_environment_check,distance=0,limit=1] run loot spawn ~ ~ ~ loot ttb:entities/function/spawning/global_get_entity

#remove previous entity
execute if entity @e[type=item,tag=ttb_spawning_environment_check,distance=0,limit=1] run tag @s[type=!player,type=!#ttb:sprite] add ttb_remove

#summon entity
execute as @e[type=item,distance=0] if data entity @s Item.tag.ttb.entity run function ttb:entity/function/spawning/summon_new_entity
