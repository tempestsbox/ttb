# called by entity/function/spawning/check

execute unless predicate ttb:world/biome/cave unless predicate ttb:world/biome/deep_cave run tag @s[type=#ttb:generic_mob_spawn] add ttb_remove
execute unless entity @s[tag=ttb_remove] if predicate ttb:entity/function/spawning/random_chance run function ttb:entity/function/spawning/replace_entity
