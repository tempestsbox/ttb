#called by block/gui/fix_gui_items

tag @s add ttb_gui_has_items
execute unless data block ~ ~ ~ Items[{Slot:3b}] unless data block ~ ~ ~ Items[{Slot:4b}] unless data block ~ ~ ~ Items[{Slot:6b}] unless data block ~ ~ ~ Items[{Slot:7b}] unless data block ~ ~ ~ Items[{Slot:10b}] unless data block ~ ~ ~ Items[{Slot:12b}] unless data block ~ ~ ~ Items[{Slot:13b}] unless data block ~ ~ ~ Items[{Slot:15b}] unless data block ~ ~ ~ Items[{Slot:16b}] unless data block ~ ~ ~ Items[{Slot:20b}] unless data block ~ ~ ~ Items[{Slot:21b}] unless data block ~ ~ ~ Items[{Slot:23b}] unless data block ~ ~ ~ Items[{Slot:24b}] run tag @s remove ttb_gui_has_items
execute if entity @s[tag=ttb_gui_has_items] run function ttb:block/machine/recreate
execute unless entity @s[tag=ttb_gui_has_items] run data remove block ~ ~ ~ Items
data modify block ~ ~ ~ Items set from storage ttb:block machine.Items
