#called by block/tempite_wire/check_block

execute if entity @e[type=item_frame,tag=ttb_tempite_insulator,distance=..1.25,limit=1] run tag @s[tag=ttb_tempite_wire] add ttb_tempite_wire_insulated
execute if entity @s[tag=ttb_tempite_wire_insulated] run function ttb:block/tempite_wire/insulated

#continue charge
execute unless score @s ttb_tempite_deca >= $max ttb_tempite_deca run function ttb:block/tempite_wire/continue_charge
execute if score @s ttb_tempite_deca >= $max ttb_tempite_deca run function ttb:block/tempite_wire/insulated

#tag powerable machines
execute unless entity @s[tag=ttb_tempite_wire_insulated] as @e[type=armor_stand,tag=ttb_machine,tag=ttb_machine_powerable_tempite,distance=..1.1185] unless score @s ttb_machine_cool matches 1.. at @s run function ttb:block/machine/color_check
