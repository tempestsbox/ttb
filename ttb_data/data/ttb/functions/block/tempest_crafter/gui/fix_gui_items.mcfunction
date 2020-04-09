#called by block/tempest_crafter/gui/verify_integrity

#pre
execute in overworld run forceload add 29999984 29999984

#remove gui items
setblock 29999984 253 29999984 black_shulker_box
data modify block 29999984 253 29999984 Items set from block ~ ~ ~ Items
data remove block 29999984 253 29999984 Items[{tag:{ttb:{gui_item:1b}}}]
loot spawn ~ ~1 ~ mine 29999984 253 29999984 air{ttb:{shulker_box_loot:{drop_contents:1b}}}

#reset gui
tag @s add ttb_tempest_crafter_has_recipe
execute unless data block ~ ~ ~ Items[{Slot:2b}] unless data block ~ ~ ~ Items[{Slot:3b}] unless data block ~ ~ ~ Items[{Slot:4b}] unless data block ~ ~ ~ Items[{Slot:11b}] unless data block ~ ~ ~ Items[{Slot:12b}] unless data block ~ ~ ~ Items[{Slot:13b}] unless data block ~ ~ ~ Items[{Slot:20b}] unless data block ~ ~ ~ Items[{Slot:21b}] unless data block ~ ~ ~ Items[{Slot:22b}] unless data block ~ ~ ~ Items[{Slot:9b}] unless data block ~ ~ ~ Items[{Slot:16b}] run tag @s remove ttb_tempest_crafter_has_recipe
execute if entity @s[tag=ttb_tempest_crafter_has_recipe] run function ttb:block/tempest_crafter/recreate
execute unless entity @s[tag=ttb_tempest_crafter_has_recipe] run data remove block ~ ~ ~ Items
data modify block ~ ~ ~ Items set from storage ttb:block tempest_crafter.Items

#remove items from world
data remove block ~ ~-1 ~ Items[{tag:{ttb:{gui_item:1b}}}]
execute as @e[type=hopper_minecart] run data remove entity @s Items[{tag:{ttb:{gui_item:1b}}}]
kill @e[type=item,nbt={Item:{tag:{ttb:{gui_item:1b}}}}]
clear @a barrier{ttb:{gui_item:1b}}

#post
execute in overworld run forceload remove 29999984 29999984
