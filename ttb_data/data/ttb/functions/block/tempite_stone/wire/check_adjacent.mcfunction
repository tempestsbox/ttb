#called by block/tempite_stone/triggered || entity/area_effect_cloud/tick

#check adjacent blocks for wiring
execute positioned ~ ~1 ~ if block ~ ~ ~ #ttb:block/tempite_wire/can_power unless entity @e[type=area_effect_cloud,tag=ttb_tempite_wire,distance=...1] run function ttb:block/tempite_stone/wire/power_adjacent
execute positioned ~ ~-1 ~ if block ~ ~ ~ #ttb:block/tempite_wire/can_power unless entity @e[type=area_effect_cloud,tag=ttb_tempite_wire,distance=...1] run function ttb:block/tempite_stone/wire/power_adjacent
execute positioned ~1 ~ ~ if block ~ ~ ~ #ttb:block/tempite_wire/can_power unless entity @e[type=area_effect_cloud,tag=ttb_tempite_wire,distance=...1] run function ttb:block/tempite_stone/wire/power_adjacent
execute positioned ~-1 ~ ~ if block ~ ~ ~ #ttb:block/tempite_wire/can_power unless entity @e[type=area_effect_cloud,tag=ttb_tempite_wire,distance=...1] run function ttb:block/tempite_stone/wire/power_adjacent
execute positioned ~ ~ ~1 if block ~ ~ ~ #ttb:block/tempite_wire/can_power unless entity @e[type=area_effect_cloud,tag=ttb_tempite_wire,distance=...1] run function ttb:block/tempite_stone/wire/power_adjacent
execute positioned ~ ~ ~-1 if block ~ ~ ~ #ttb:block/tempite_wire/can_power unless entity @e[type=area_effect_cloud,tag=ttb_tempite_wire,distance=...1] run function ttb:block/tempite_stone/wire/power_adjacent

#tag powerable machines
tag @e[type=armor_stand,tag=ttb_machine,tag=ttb_machine_powerable_tempite,distance=..1.1185] add ttb_machine_powered_tempite

#don't check again
tag @s[type=area_effect_cloud] add ttb_tempite_wire_checked
