data modify storage ttb:temp y set from entity @s Pos[1]
spreadplayers ~ ~ 0 10 false @s
data modify entity @s Pos[1] set from storage ttb:temp y
data remove storage ttb:temp y

execute at @s run function ttb:util/find_closest_y
