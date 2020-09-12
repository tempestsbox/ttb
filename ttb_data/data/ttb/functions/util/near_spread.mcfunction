data modify storage ttb:temp y set from entity @s Pos[1]
spreadplayers ~ ~ 0 10 false @s[type=!player]
data modify entity @s Pos[1] set from storage ttb:temp y
data remove storage ttb:temp y

execute at @s anchored eyes unless block ^ ^ ^ #ttb:passthrough run tag @s add ttb_near_spread_suffocating
execute if entity @s[tag=ttb_near_spread_suffocating] run tp @s ~ ~ ~
tag @s remove ttb_near_spread_suffocating
