# called by entity/function/spawning/check

# global
execute if entity @s[type=enderman] run function ttb:entity/function/spawning/global/enderman

# biome-based
execute unless entity @s[tag=ttb_spawning_success] if predicate ttb:world/biome/cave run function ttb:entity/function/spawning/biome/cave
execute unless entity @s[tag=ttb_spawning_success] unless predicate ttb:world/biome/cave unless predicate ttb:world/biome/deep_cave if predicate ttb:world/biome/plains run function ttb:entity/function/spawning/specific/cave_or_deep_cave_and_plains

tag @s[tag=ttb_spawning_success] add ttb_remove
