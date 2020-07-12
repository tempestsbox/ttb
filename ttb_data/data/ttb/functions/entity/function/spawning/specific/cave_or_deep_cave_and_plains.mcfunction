# called by entity/function/spawning/replace_entity

execute if predicate ttb:entity/function/spawning/random_chance_sub run function ttb:entity/function/spawning/entity/ratch
execute unless entity @s[tag=ttb_spawning_success] if predicate ttb:entity/function/spawning/random_chance_sub run function ttb:entity/function/spawning/entity/bullant
