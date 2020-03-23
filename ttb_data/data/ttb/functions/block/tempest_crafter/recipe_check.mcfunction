#tempest crafter recipe check
#@s - tempest crafter with valid recipe
#called by crafting/recipe_validity_check

#staff random recipe
execute if score @s ttb_slot_count matches 7 if score @s ttb_slot_size matches ..1 if block ~ ~ ~ dropper{Items:[{id:"minecraft:diamond",Slot:0b},{id:"minecraft:ender_eye",Slot:1b},{id:"minecraft:diamond",Slot:2b},{id:"minecraft:diamond",Slot:3b},{id:"minecraft:blaze_rod",Slot:4b},{id:"minecraft:diamond",Slot:5b},{id:"minecraft:blaze_rod",Slot:7b}]} run function ttb:item/staff/craft_random

#relics
execute if score @s ttb_slot_count matches 3 if score @s ttb_slot_size matches ..64 if block ~ ~ ~ dropper{Items:[{id:"minecraft:diamond",Slot:3b},{id:"minecraft:sea_lantern",Slot:4b},{id:"minecraft:diamond",Slot:5b}]} run function ttb:item/bright_relic/craft
execute if score @s ttb_slot_count matches 3 if score @s ttb_slot_size matches ..64 if block ~ ~ ~ dropper{Items:[{id:"minecraft:diamond",Slot:3b},{id:"minecraft:ender_eye",Slot:4b},{id:"minecraft:diamond",Slot:5b}]} run function ttb:item/dark_relic/craft
