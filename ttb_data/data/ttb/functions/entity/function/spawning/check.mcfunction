# called by entity/tick

execute store success score #mob_spawning_spawner ttb_data run clone ~-3 ~-3 ~-3 ~3 ~3 ~3 ~-3 ~-3 ~-3 filtered spawner force
execute unless score #mob_spawning_spawner ttb_data matches 1 run function ttb:entity/function/spawning/generic_mob_check

tag @s add ttb_no_check
