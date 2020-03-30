#tempest crafter recipe check
#@s - tempest crafter with valid recipe
#called by crafting/recipe_validity_check

#tempest crafter
execute if score @s ttb_slot_count matches 9 if score @s ttb_slot_size matches ..64 if block ~ ~ ~ dropper{Items:[{id:"minecraft:diamond",Slot:0b},{id:"minecraft:glass",Slot:1b},{id:"minecraft:diamond",Slot:2b},{id:"minecraft:gold_ingot",Slot:3b},{id:"minecraft:end_crystal",Slot:4b},{id:"minecraft:gold_ingot",Slot:5b},{id:"minecraft:obsidian",Slot:6b},{id:"minecraft:obsidian",Slot:7b},{id:"minecraft:obsidian",Slot:8b}]} run function ttb:block/tempest_crafter/craft_item

#staff random recipe
execute if score @s ttb_slot_count matches 7 if score @s ttb_slot_size matches ..1 if block ~ ~ ~ dropper{Items:[{id:"minecraft:diamond",Slot:0b},{id:"minecraft:ender_eye",Slot:1b},{id:"minecraft:diamond",Slot:2b},{id:"minecraft:diamond",Slot:3b},{id:"minecraft:blaze_rod",Slot:4b},{id:"minecraft:diamond",Slot:5b},{id:"minecraft:blaze_rod",Slot:7b}]} run function ttb:item/staff/craft_random

#relics
execute if score @s ttb_slot_count matches 3 if score @s ttb_slot_size matches ..64 if block ~ ~ ~ dropper{Items:[{id:"minecraft:diamond",Slot:3b},{id:"minecraft:sea_lantern",Slot:4b},{id:"minecraft:diamond",Slot:5b}]} run function ttb:item/bright_relic/craft
execute if score @s ttb_slot_count matches 3 if score @s ttb_slot_size matches ..64 if block ~ ~ ~ dropper{Items:[{id:"minecraft:diamond",Slot:3b},{id:"minecraft:ender_eye",Slot:4b},{id:"minecraft:diamond",Slot:5b}]} run function ttb:item/dark_relic/craft
