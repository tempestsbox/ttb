scoreboard players set #is_exposed_to_sunlight ttb_data 0
execute if predicate ttb:world/dimension/overworld if predicate ttb:world/is_day positioned ~ 256 ~ run function ttb:util/get_sunlight_loop
