#called by block/tempite_stone/tick

#audiovisuals
particle dust 0.0862 0.8509 0.8117 1 ~ ~ ~ .25 .25 .25 0 100 normal @a
data modify entity @s ArmorItems[3].tag.CustomModelData set value 6830005

#functionality
execute positioned ~ ~1 ~ if block ~ ~ ~ #ttb:block/tempite_wire/can_power unless entity @e[type=armor_stand,tag=ttb_tempite_wire,distance=...5] run function ttb:block/tempite_wire/check_color
execute positioned ~ ~-1 ~ if block ~ ~ ~ #ttb:block/tempite_wire/can_power unless entity @e[type=armor_stand,tag=ttb_tempite_wire,distance=...5] run function ttb:block/tempite_wire/check_color
execute positioned ~1 ~ ~ if block ~ ~ ~ #ttb:block/tempite_wire/can_power unless entity @e[type=armor_stand,tag=ttb_tempite_wire,distance=...5] run function ttb:block/tempite_wire/check_color
execute positioned ~-1 ~ ~ if block ~ ~ ~ #ttb:block/tempite_wire/can_power unless entity @e[type=armor_stand,tag=ttb_tempite_wire,distance=...5] run function ttb:block/tempite_wire/check_color
execute positioned ~ ~ ~1 if block ~ ~ ~ #ttb:block/tempite_wire/can_power unless entity @e[type=armor_stand,tag=ttb_tempite_wire,distance=...5] run function ttb:block/tempite_wire/check_color
execute positioned ~ ~ ~-1 if block ~ ~ ~ #ttb:block/tempite_wire/can_power unless entity @e[type=armor_stand,tag=ttb_tempite_wire,distance=...5] run function ttb:block/tempite_wire/check_color
