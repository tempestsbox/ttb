#called by block/tempest_crafter/recipe_validity_check

#tempest crafter
execute if score @s ttb_slot_count matches 9 if score @s ttb_slot_size matches ..64 if block ~ ~ ~ barrel{Items:[{id:"minecraft:diamond",Slot:2b},{id:"minecraft:glass",Slot:3b},{id:"minecraft:diamond",Slot:4b},{id:"minecraft:gold_ingot",Slot:11b},{id:"minecraft:end_crystal",Slot:12b},{id:"minecraft:gold_ingot",Slot:13b},{id:"minecraft:obsidian",Slot:20b},{id:"minecraft:obsidian",Slot:21b},{id:"minecraft:obsidian",Slot:22b}]} run function ttb:block/tempest_crafter/craft_item

#staff recipes
execute if score @s ttb_slot_count matches 7 if score @s ttb_slot_size matches ..1 if block ~ ~ ~ barrel{Items:[{id:"minecraft:diamond",Slot:2b},{id:"minecraft:ender_eye",Slot:3b},{id:"minecraft:diamond",Slot:2b},{id:"minecraft:diamond",Slot:4b},{id:"minecraft:blaze_rod",Slot:12b},{id:"minecraft:diamond",Slot:13b},{id:"minecraft:blaze_rod",Slot:21b}]} run function ttb:item/staff/craft

#relics
execute if score @s ttb_slot_count matches 3 if score @s ttb_slot_size matches ..64 if block ~ ~ ~ barrel{Items:[{id:"minecraft:diamond",Slot:11b},{id:"minecraft:sea_lantern",Slot:12b},{id:"minecraft:diamond",Slot:13b}]} run function ttb:item/bright_relic/craft
execute if score @s ttb_slot_count matches 3 if score @s ttb_slot_size matches ..64 if block ~ ~ ~ barrel{Items:[{id:"minecraft:diamond",Slot:11b},{id:"minecraft:ender_eye",Slot:12b},{id:"minecraft:diamond",Slot:13b}]} run function ttb:item/dark_relic/craft
