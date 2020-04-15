#called by entity/tick

execute store success score mob_spawning_spawner ttb_data run clone ~-3 ~-3 ~-3 ~3 ~3 ~3 ~-3 ~-3 ~-3 filtered spawner force

execute if predicate ttb:entity/function/spawning/custom/random_chance unless score mob_spawning_spawner ttb_data matches 1 run function ttb:entity/function/spawning/replace_entity

tag @s add ttb_no_check
