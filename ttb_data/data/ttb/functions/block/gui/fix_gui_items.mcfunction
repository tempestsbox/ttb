#called by block/<block>/gui/verify_integrity

#pre
execute in overworld run forceload add 29999984 29999984

#remove gui items
setblock 29999984 253 29999984 black_shulker_box
data modify block 29999984 253 29999984 Items set from block ~ ~ ~ Items
data remove block 29999984 253 29999984 Items[{tag:{ttb:{gui_item:1b}}}]
loot spawn ~ ~1 ~ mine 29999984 253 29999984 air{ttb:{shulker_box_loot:{drop_contents:1b}}}

#reset gui
execute if entity @s[tag=ttb_tempest_crafter] run function ttb:block/tempest_crafter/gui/has_items_kick
execute if entity @s[tag=ttb_machine] run function ttb:block/machine/gui/has_items_kick

#remove items from world
data remove block ~ ~-1 ~ Items[{tag:{ttb:{gui_item:1b}}}]
execute as @e[type=hopper_minecart] run data remove entity @s Items[{tag:{ttb:{gui_item:1b}}}]
kill @e[type=item,nbt={Item:{tag:{ttb:{gui_item:1b}}}}]
clear @a barrier{ttb:{gui_item:1b}}

#post
execute in overworld run forceload remove 29999984 29999984
