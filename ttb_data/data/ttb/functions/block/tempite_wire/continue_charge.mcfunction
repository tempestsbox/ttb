# called by block/tempite_wire/power_adjacent

execute if block ~ ~ ~ glass if entity @s[tag=!ttb_tempite_wire_insulated,tag=!ttb_tempite_wire_glass_new] run function ttb:block/tempite_wire/glass

execute if block ~ ~ ~ #ttb:block/tempite_wire unless entity @s[tag=ttb_tempite_wire_insulated] run function ttb:block/tempite_wire/color/compare_type
