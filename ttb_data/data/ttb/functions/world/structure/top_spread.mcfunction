# called by world/structure/loop_spawns

tp @s ~ 255 ~
execute at @s if block ~ ~-1 ~ #ttb:world/top_spread run function ttb:world/structure/top_spread_loop
