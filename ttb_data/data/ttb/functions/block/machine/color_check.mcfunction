# called by block/tempite_wire/power_adjacent

execute if data block ~ ~ ~ Items[{Slot:10b,id:"minecraft:white_stained_glass_pane"}] if block ^ ^ ^-1 white_stained_glass run function ttb:block/machine/get_power
execute if data block ~ ~ ~ Items[{Slot:10b,id:"minecraft:orange_stained_glass_pane"}] if block ^ ^ ^-1 orange_stained_glass run function ttb:block/machine/get_power
execute if data block ~ ~ ~ Items[{Slot:10b,id:"minecraft:magenta_stained_glass_pane"}] if block ^ ^ ^-1 magenta_stained_glass run function ttb:block/machine/get_power
execute if data block ~ ~ ~ Items[{Slot:10b,id:"minecraft:light_blue_stained_glass_pane"}] if block ^ ^ ^-1 light_blue_stained_glass run function ttb:block/machine/get_power
execute if data block ~ ~ ~ Items[{Slot:10b,id:"minecraft:yellow_stained_glass_pane"}] if block ^ ^ ^-1 yellow_stained_glass run function ttb:block/machine/get_power
execute if data block ~ ~ ~ Items[{Slot:10b,id:"minecraft:lime_stained_glass_pane"}] if block ^ ^ ^-1 lime_stained_glass run function ttb:block/machine/get_power
execute if data block ~ ~ ~ Items[{Slot:10b,id:"minecraft:pink_stained_glass_pane"}] if block ^ ^ ^-1 pink_stained_glass run function ttb:block/machine/get_power
execute if data block ~ ~ ~ Items[{Slot:10b,id:"minecraft:gray_stained_glass_pane"}] if block ^ ^ ^-1 gray_stained_glass run function ttb:block/machine/get_power
execute if data block ~ ~ ~ Items[{Slot:10b,id:"minecraft:light_gray_stained_glass_pane"}] if block ^ ^ ^-1 light_gray_stained_glass run function ttb:block/machine/get_power
execute if data block ~ ~ ~ Items[{Slot:10b,id:"minecraft:cyan_stained_glass_pane"}] if block ^ ^ ^-1 cyan_stained_glass run function ttb:block/machine/get_power
execute if data block ~ ~ ~ Items[{Slot:10b,id:"minecraft:purple_stained_glass_pane"}] if block ^ ^ ^-1 purple_stained_glass run function ttb:block/machine/get_power
execute if data block ~ ~ ~ Items[{Slot:10b,id:"minecraft:blue_stained_glass_pane"}] if block ^ ^ ^-1 blue_stained_glass run function ttb:block/machine/get_power
execute if data block ~ ~ ~ Items[{Slot:10b,id:"minecraft:brown_stained_glass_pane"}] if block ^ ^ ^-1 brown_stained_glass run function ttb:block/machine/get_power
execute if data block ~ ~ ~ Items[{Slot:10b,id:"minecraft:green_stained_glass_pane"}] if block ^ ^ ^-1 green_stained_glass run function ttb:block/machine/get_power
execute if data block ~ ~ ~ Items[{Slot:10b,id:"minecraft:red_stained_glass_pane"}] if block ^ ^ ^-1 red_stained_glass run function ttb:block/machine/get_power
execute if data block ~ ~ ~ Items[{Slot:10b,id:"minecraft:black_stained_glass_pane"}] if block ^ ^ ^-1 black_stained_glass run function ttb:block/machine/get_power

execute unless data block ~ ~ ~ Items[{Slot:10b}] if block ^ ^ ^-1 #ttb:block/tempite_wire run function ttb:block/machine/get_power
tag @s remove ttb_machine_color_check_passed
