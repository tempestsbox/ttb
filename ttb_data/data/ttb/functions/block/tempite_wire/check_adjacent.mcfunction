# called by block/tempite_stone/tick || block/tempite_wire/tick

# audiovisuals
execute if entity @s[tag=ttb_tempite_wire] run particle dust 0.0862 0.8509 0.8117 1 ~ ~ ~ .25 .25 .25 0 25 normal @a
execute if entity @s[tag=ttb_tempite_wire_glass_new] run particle dust 0.721 0.086 0.850 1 ~ ~ ~ .25 .25 .25 0 25 normal @a

# check adjacent blocks for wiring
execute positioned ~ ~1 ~ if block ~ ~ ~ #ttb:block/tempite_wire/can_power unless entity @e[type=armor_stand,tag=ttb_tempite_wire,distance=...5] run function ttb:block/tempite_wire/power_adjacent
execute positioned ~ ~-1 ~ if block ~ ~ ~ #ttb:block/tempite_wire/can_power unless entity @e[type=armor_stand,tag=ttb_tempite_wire,distance=...5] run function ttb:block/tempite_wire/power_adjacent
execute positioned ~1 ~ ~ if block ~ ~ ~ #ttb:block/tempite_wire/can_power unless entity @e[type=armor_stand,tag=ttb_tempite_wire,distance=...5] run function ttb:block/tempite_wire/power_adjacent
execute positioned ~-1 ~ ~ if block ~ ~ ~ #ttb:block/tempite_wire/can_power unless entity @e[type=armor_stand,tag=ttb_tempite_wire,distance=...5] run function ttb:block/tempite_wire/power_adjacent
execute positioned ~ ~ ~1 if block ~ ~ ~ #ttb:block/tempite_wire/can_power unless entity @e[type=armor_stand,tag=ttb_tempite_wire,distance=...5] run function ttb:block/tempite_wire/power_adjacent
execute positioned ~ ~ ~-1 if block ~ ~ ~ #ttb:block/tempite_wire/can_power unless entity @e[type=armor_stand,tag=ttb_tempite_wire,distance=...5] run function ttb:block/tempite_wire/power_adjacent

# check for explosion
tag @e[type=armor_stand,tag=ttb_tempite_wire,distance=..3] add ttb_tempite_wire_nearby
tag @s remove ttb_tempite_wire_nearby

execute store result score tempite_wire_nearby ttb_data if entity @e[type=armor_stand,tag=ttb_tempite_wire_nearby]
execute if score tempite_wire_nearby ttb_data matches 11.. as @e[type=armor_stand,tag=ttb_tempite_wire_nearby] at @s run function ttb:block/tempite_wire/explode

tag @e[type=armor_stand,tag=ttb_tempite_wire] remove ttb_tempite_wire_nearby

# don't check again
tag @s[tag=ttb_tempite_wire] add ttb_tempite_wire_checked
