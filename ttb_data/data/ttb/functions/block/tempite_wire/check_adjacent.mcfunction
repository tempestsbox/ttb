#called by block/tempite_stone/triggered || entity/armor_stand/tick

#audiovisuals
execute if entity @s[tag=ttb_tempite_wire] run particle dust 0.721 0.086 0.850 1 ~ ~ ~ .25 .25 .25 0 25 normal @a

#don't check again
tag @s[tag=ttb_tempite_wire] add ttb_tempite_wire_checked

#check adjacent blocks for wiring
execute positioned ~ ~1 ~ if block ~ ~ ~ #ttb:block/tempite_wire/can_power unless entity @e[type=armor_stand,tag=ttb_tempite_wire,distance=...5] run function ttb:block/tempite_wire/power_adjacent
execute positioned ~ ~-1 ~ if block ~ ~ ~ #ttb:block/tempite_wire/can_power unless entity @e[type=armor_stand,tag=ttb_tempite_wire,distance=...5] run function ttb:block/tempite_wire/power_adjacent
execute positioned ~1 ~ ~ if block ~ ~ ~ #ttb:block/tempite_wire/can_power unless entity @e[type=armor_stand,tag=ttb_tempite_wire,distance=...5] run function ttb:block/tempite_wire/power_adjacent
execute positioned ~-1 ~ ~ if block ~ ~ ~ #ttb:block/tempite_wire/can_power unless entity @e[type=armor_stand,tag=ttb_tempite_wire,distance=...5] run function ttb:block/tempite_wire/power_adjacent
execute positioned ~ ~ ~1 if block ~ ~ ~ #ttb:block/tempite_wire/can_power unless entity @e[type=armor_stand,tag=ttb_tempite_wire,distance=...5] run function ttb:block/tempite_wire/power_adjacent
execute positioned ~ ~ ~-1 if block ~ ~ ~ #ttb:block/tempite_wire/can_power unless entity @e[type=armor_stand,tag=ttb_tempite_wire,distance=...5] run function ttb:block/tempite_wire/power_adjacent

#tag powerable machines
tag @e[type=armor_stand,tag=ttb_machine,tag=ttb_machine_powerable_tempite,distance=..1.1185] add ttb_machine_powered_tempite
