# called by entity/tick

execute store success score mob_spawning_spawner ttb_data run clone ~-3 ~-3 ~-3 ~3 ~3 ~3 ~-3 ~-3 ~-3 filtered spawner force

execute if predicate ttb:entity/function/spawning/random_chance unless score mob_spawning_spawner ttb_data matches 1 run function ttb:entity/function/spawning/replace_entity

execute if entity @s[type=#ttb:generic_mob_spawn] unless predicate ttb:world/biome/cave unless predicate ttb:world/biome/deep_cave run tag @s add ttb_remove

tag @s add ttb_no_check
