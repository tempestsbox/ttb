# called by util/find_closest_y

tp @s ~ ~1 ~
execute at @s unless block ~ ~ ~ #ttb:passthrough run function ttb:util/find_closest_y_loop
