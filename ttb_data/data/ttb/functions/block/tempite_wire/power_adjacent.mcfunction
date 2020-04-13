#called by block/tempite_wire/check_adjacent

execute if entity @e[type=item_frame,tag=ttb_tempite_insulator,distance=..1.25,limit=1] run tag @s[tag=ttb_tempite_wire] add ttb_tempite_wire_insulated
execute if entity @s[tag=ttb_tempite_wire_insulated] run particle smoke ~ ~ ~ .25 .25 .25 0 200 normal @a
execute if entity @s[tag=ttb_tempite_wire_insulated] run playsound block.redstone_torch.burnout block @a[distance=..16] ~ ~ ~ .5 2 1

#continue charge
execute if block ~ ~ ~ glass unless entity @a[tag=ttb_tempite_wire_insulated] run function ttb:block/tempite_wire/glass
execute if block ~ ~ ~ #ttb:block/tempite_wire unless entity @s[tag=ttb_tempite_wire_insulated] run function ttb:block/tempite_wire/color/compare_type
