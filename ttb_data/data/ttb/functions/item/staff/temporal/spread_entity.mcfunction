# called by item/staff/temporal/use_left

data modify storage ttb:temp y set from entity @s Pos[1]
spreadplayers ~ ~ 0 9 false @s
data modify entity @s Pos[1] set from storage ttb:temp y
data remove storage ttb:temp y

execute at @s unless block ~ ~ ~ #ttb:replace_on_creation run tag @s add ttb_temporal_staff_invalid
execute if entity @s[tag=ttb_temporal_staff_invalid] run function ttb:item/staff/temporal/spread_entity
tag @s remove ttb_temporal_staff_invalid
