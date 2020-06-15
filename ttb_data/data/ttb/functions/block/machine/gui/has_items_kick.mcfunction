#called by block/gui/fix_gui_items

tag @s add ttb_gui_has_items
execute unless data block ~ ~ ~ Items[{Slot:10b}] unless data block ~ ~ ~ Items[{Slot:12b}] unless data block ~ ~ ~ Items[{Slot:13b}] unless data block ~ ~ ~ Items[{Slot:14b}] unless data block ~ ~ ~ Items[{Slot:15b}] unless data block ~ ~ ~ Items[{Slot:16b}] run tag @s remove ttb_gui_has_items
execute if entity @s[tag=ttb_gui_has_items] run function ttb:block/machine/recreate
execute unless entity @s[tag=ttb_gui_has_items] run data remove block ~ ~ ~ Items
data modify block ~ ~ ~ Items set from storage ttb:block machine.Items
