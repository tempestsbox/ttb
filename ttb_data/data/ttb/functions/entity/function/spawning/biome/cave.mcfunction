# called by entity/function/spawning/replace_entity

execute if entity @s[type=zombie] run function ttb:entity/function/spawning/entity/ore_dweller
execute if entity @s[tag=!ttb_spawning_success,type=bat] if predicate ttb:entity/function/spawning/random_chance_sub run function ttb:entity/function/spawning/entity/cave_in
execute if entity @s[tag=!ttb_spawning_success,type=bat] run function ttb:entity/function/spawning/entity/void_gas
