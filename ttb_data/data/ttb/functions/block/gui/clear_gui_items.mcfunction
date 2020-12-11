execute if block ~ ~-1 ~ hopper run data remove block ~ ~-1 ~ Items[{tag:{ttb:{gui_item:1b}}}]
execute if block ~ ~-2 ~ hopper run data remove block ~ ~-2 ~ Items[{tag:{ttb:{gui_item:1b}}}]
execute as @e[type=hopper_minecart,distance=..5] run data remove entity @s Items[{tag:{ttb:{gui_item:1b}}}]
kill @e[type=item,nbt={Item:{tag:{ttb:{gui_item:1b}}}}]
clear @a white_stained_glass{ttb:{gui_item:1b}}
