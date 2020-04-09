#called by entity/armor_stand/tick

#checking adjacent
execute if entity @s[tag=!ttb_tempite_wire_checked] run function ttb:block/tempite_wire/check_adjacent

scoreboard players add @s ttb_tempite_tick 1
execute if score @s ttb_tempite_tick matches 3.. run kill @s
