data remove block ~ ~-1 ~ Items[{tag:{ttb:{gui_item:1b}}}]
execute as @e[type=hopper_minecart] run data remove entity @s Items[{tag:{ttb:{gui_item:1b}}}]
kill @e[type=item,nbt={Item:{tag:{ttb:{gui_item:1b}}}}]
clear @a barrier{ttb:{gui_item:1b}}
