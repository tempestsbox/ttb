# called by world/structure/top_spread

tp @s ~ ~-1 ~
execute at @s if block ~ ~-1 ~ #ttb:world/top_spread run function ttb:world/structure/top_spread_loop
