# called by entity/function/spawning/check

# global
execute if entity @s[type=enderman] run function ttb:entity/function/spawning/global/enderman

# biome-based
execute unless entity @s[tag=ttb_entity_spawning_success] if predicate ttb:world/biome/cave run function ttb:entity/function/spawning/biome/cave

tag @s[tag=ttb_spawning_success] add ttb_remove
