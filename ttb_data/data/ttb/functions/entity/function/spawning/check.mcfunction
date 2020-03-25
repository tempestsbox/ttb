#called by entity/tick

execute if predicate ttb:entity/function/spawning/custom/random_chance run function ttb:entity/function/spawning/replace_entity

tag @s add ttb_no_check
