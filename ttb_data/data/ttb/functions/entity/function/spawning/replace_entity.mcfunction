# called by entity/function/spawning/generic_mob_check

# global
execute if entity @s[type=enderman] run function ttb:entity/function/spawning/global/enderman
execute if entity @s[tag=!ttb_spawning_success,type=zombie] run function ttb:entity/function/spawning/global/zombie

# biome-based
execute unless entity @s[tag=ttb_spawning_success] if predicate ttb:world/biome/cave run function ttb:entity/function/spawning/biome/cave
execute unless entity @s[tag=ttb_spawning_success] if predicate ttb:world/biome/desert run function ttb:entity/function/spawning/biome/desert

# specific
execute unless entity @s[tag=ttb_spawning_success] unless predicate ttb:world/biome/cave unless predicate ttb:world/biome/deep_cave if predicate ttb:world/biome/plains run function ttb:entity/function/spawning/specific/plains_and_not_cave_or_deep_cave

tag @s[tag=ttb_spawning_success] add ttb_remove
