# called by block/tempite_wire/spread

execute if block ~ ~ ~ white_stained_glass run tag @s add ttb_tempite_wire_white
execute if block ~ ~ ~ orange_stained_glass run tag @s add ttb_tempite_wire_orange
execute if block ~ ~ ~ magenta_stained_glass run tag @s add ttb_tempite_wire_magenta
execute if block ~ ~ ~ light_blue_stained_glass run tag @s add ttb_tempite_wire_light_blue
execute if block ~ ~ ~ yellow_stained_glass run tag @s add ttb_tempite_wire_yellow
execute if block ~ ~ ~ lime_stained_glass run tag @s add ttb_tempite_wire_lime
execute if block ~ ~ ~ pink_stained_glass run tag @s add ttb_tempite_wire_pink
execute if block ~ ~ ~ gray_stained_glass run tag @s add ttb_tempite_wire_gray
execute if block ~ ~ ~ light_gray_stained_glass run tag @s add ttb_tempite_wire_light_gray
execute if block ~ ~ ~ cyan_stained_glass run tag @s add ttb_tempite_wire_cyan
execute if block ~ ~ ~ purple_stained_glass run tag @s add ttb_tempite_wire_purple
execute if block ~ ~ ~ blue_stained_glass run tag @s add ttb_tempite_wire_blue
execute if block ~ ~ ~ brown_stained_glass run tag @s add ttb_tempite_wire_brown
execute if block ~ ~ ~ green_stained_glass run tag @s add ttb_tempite_wire_green
execute if block ~ ~ ~ red_stained_glass run tag @s add ttb_tempite_wire_red
execute if block ~ ~ ~ black_stained_glass run tag @s add ttb_tempite_wire_black

execute unless entity @s[tag=ttb_tempite_wire_glass] run function ttb:block/tempite_wire/power_adjacent
