execute store result score modifier ttb_slot_size run data get block ~ ~ ~ Items[{Slot:9b}].Count

scoreboard players remove @s ttb_slot_size 1
execute if score @s ttb_slot_size matches 1.. store result block ~ ~ ~ Items[].Count byte 1 run scoreboard players get @s ttb_slot_size
execute unless score @s ttb_slot_size matches 1.. run function ttb:block/tempest_crafter/gui/remove_items

data modify block ~ ~ ~ Items[{tag:{ttb:{gui_item:1b}}}].Count set value 1b
data modify block ~ ~ ~ Items[{Slot:16b}].Count set value 1b
execute store result block ~ ~ ~ Items[{Slot:9b}].Count byte 1 run scoreboard players get modifier ttb_slot_size
