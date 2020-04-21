#called by block/tempest_crafter/recipe_validity_check

#tempest crafter
execute if score @s ttb_slot_count matches 9 if score @s ttb_slot_size matches ..64 if block ~ ~ ~ barrel{Items:[{id:"minecraft:diamond",Slot:2b},{id:"minecraft:glass",Slot:3b},{id:"minecraft:diamond",Slot:4b},{id:"minecraft:gold_ingot",Slot:11b},{id:"minecraft:end_crystal",Slot:12b},{id:"minecraft:gold_ingot",Slot:13b},{id:"minecraft:obsidian",Slot:20b},{id:"minecraft:obsidian",Slot:21b},{id:"minecraft:obsidian",Slot:22b}]} run function ttb:block/tempest_crafter/craft

#staff recipes
execute if score @s ttb_slot_count matches 7 if score @s ttb_slot_size matches 1 if block ~ ~ ~ barrel{Items:[{id:"minecraft:diamond",Slot:2b},{id:"minecraft:ender_eye",Slot:3b},{id:"minecraft:diamond",Slot:2b},{id:"minecraft:diamond",Slot:4b},{id:"minecraft:blaze_rod",Slot:12b},{id:"minecraft:diamond",Slot:13b},{id:"minecraft:blaze_rod",Slot:21b}]} run function ttb:item/staff/craft

#breaker
execute if score @s ttb_slot_count matches 9 if score @s ttb_slot_size matches 1 if block ~ ~ ~ barrel{Items:[{Slot:9b,tag:{ttb:{item:"vulcaanium"}},Count:4b} ,{id:"minecraft:red_nether_bricks",Slot:2b},{id:"minecraft:red_nether_bricks",Slot:3b},{id:"minecraft:red_nether_bricks",Slot:4b},{id:"minecraft:iron_bars",Slot:11b},{id:"minecraft:lava_bucket",Slot:12b},{id:"minecraft:iron_bars",Slot:13b},{id:"minecraft:red_nether_bricks",Slot:20b},{id:"minecraft:red_nether_bricks",Slot:21b},{id:"minecraft:red_nether_bricks",Slot:22b}]} run function ttb:block/breaker/craft

#relics
execute if score @s ttb_slot_count matches 3 if score @s ttb_slot_size matches ..64 if block ~ ~ ~ barrel{Items:[{id:"minecraft:diamond",Slot:11b},{id:"minecraft:sea_lantern",Slot:12b},{id:"minecraft:diamond",Slot:13b}]} run function ttb:item/bright_relic/craft
execute if score @s ttb_slot_count matches 3 if score @s ttb_slot_size matches ..64 if block ~ ~ ~ barrel{Items:[{id:"minecraft:diamond",Slot:11b},{id:"minecraft:ender_eye",Slot:12b},{id:"minecraft:diamond",Slot:13b}]} run function ttb:item/dark_relic/craft

#mysterious pearl
execute if score @s ttb_slot_count matches 9 if score @s ttb_slot_size matches ..64 if block ~ ~ ~ barrel{Items:[{tag:{ttb:{item:"mysterious_dust"}},Slot:2b},{tag:{ttb:{crystal:1b}},Slot:3b},{tag:{ttb:{item:"mysterious_dust"}},Slot:4b},{tag:{ttb:{crystal:1b}},Slot:11b},{tag:{ttb:{item:"tempest_pearl"}},Slot:12b},{tag:{ttb:{crystal:1b}},Slot:13b},{tag:{ttb:{item:"mysterious_dust"}},Slot:20b},{tag:{ttb:{crystal:1b}},Slot:21b},{tag:{ttb:{item:"mysterious_dust"}},Slot:22b}]} run function ttb:item/mysterious_pearl/craft

#crystals
execute if score @s ttb_slot_count matches 5 if score @s ttb_slot_size matches 1 if block ~ ~ ~ barrel{Items:[{tag:{ttb:{item:"mysterious_dust"}},Slot:3b},{tag:{ttb:{item:"mysterious_dust"}},Slot:11b},{tag:{ttb:{item:"amethyst"}},Slot:12b},{tag:{ttb:{item:"mysterious_dust"}},Slot:13b},{tag:{ttb:{item:"mysterious_dust"}},Slot:21b}]} run function ttb:item/amethyst_crystal/craft
execute if score @s ttb_slot_count matches 5 if score @s ttb_slot_size matches 1 if block ~ ~ ~ barrel{Items:[{tag:{ttb:{item:"mysterious_dust"}},Slot:3b},{tag:{ttb:{item:"mysterious_dust"}},Slot:11b},{tag:{ttb:{item:"vulcaanium"}},Slot:12b},{tag:{ttb:{item:"mysterious_dust"}},Slot:13b},{tag:{ttb:{item:"mysterious_dust"}},Slot:21b}]} run function ttb:item/vulcaanium_crystal/craft
