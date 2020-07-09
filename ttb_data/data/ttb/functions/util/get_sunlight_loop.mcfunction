# called by util/get_sunlight

execute if block ~ ~-1 ~ #ttb:allows_sunlight positioned ~ ~-1 ~ run function ttb:util/get_sunlight_loop
execute unless block ~ ~-1 ~ #ttb:allows_sunlight positioned ~ ~-1 ~ align xyz store success score #is_exposed_to_sunlight ttb_data if entity @s[dx=0]
