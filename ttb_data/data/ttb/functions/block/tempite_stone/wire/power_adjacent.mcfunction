#called by block/tempite_stone/check_adjacent

#continue charge
execute if block ~ ~ ~ #ttb:block/tempite_wire run summon area_effect_cloud ~ ~ ~ {Tags:["ttb_entity","ttb_tempite_wire"],Duration:3}

#replace
execute if block ~ ~ ~ pink_stained_glass run tag @s add ttb_tempite_wire_purple
execute if block ~ ~ ~ purple_stained_glass run tag @s add ttb_tempite_wire_pink
execute if entity @s[tag=ttb_tempite_wire_purple] run setblock ~ ~ ~ purple_stained_glass
execute if entity @s[tag=ttb_tempite_wire_pink] run setblock ~ ~ ~ pink_stained_glass
tag @s remove ttb_tempite_wire_purple
tag @s remove ttb_tempite_wire_pink
