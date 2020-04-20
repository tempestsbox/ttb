#called by block/gui/fix_gui_items

tag @s add ttb_gui_has_items
execute unless data block ~ ~ ~ Items[{Slot:2b}] unless data block ~ ~ ~ Items[{Slot:3b}] unless data block ~ ~ ~ Items[{Slot:4b}] unless data block ~ ~ ~ Items[{Slot:11b}] unless data block ~ ~ ~ Items[{Slot:12b}] unless data block ~ ~ ~ Items[{Slot:13b}] unless data block ~ ~ ~ Items[{Slot:20b}] unless data block ~ ~ ~ Items[{Slot:21b}] unless data block ~ ~ ~ Items[{Slot:22b}] unless data block ~ ~ ~ Items[{Slot:9b}] unless data block ~ ~ ~ Items[{Slot:16b}] run tag @s remove ttb_gui_has_items
execute if entity @s[tag=ttb_gui_has_items] run function ttb:block/tempest_crafter/recreate
execute unless entity @s[tag=ttb_gui_has_items] run data remove block ~ ~ ~ Items
data modify block ~ ~ ~ Items set from storage ttb:block tempest_crafter.Items
