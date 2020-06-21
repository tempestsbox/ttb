# called by entity/function/spawning/check

execute if predicate ttb:entity/function/spawning/random_chance if entity @s[type=enderman] run function ttb:entity/function/spawning/entity/endermenace

execute if predicate ttb:world/biome/cave run function ttb:entity/function/spawning/biome/cave

tag @s[tag=ttb_spawning_success] add ttb_remove
