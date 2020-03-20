#called by clock16

execute if entity @s[nbt={OnGround:1b,Item:{Count:1b,id:"minecraft:end_crystal"}}] positioned ~ ~-1 ~ if block ~ ~ ~ dropper{Items:[{id:"minecraft:diamond",Count:1b,Slot:0b},{id:"minecraft:glass",Count:1b,Slot:1b},{id:"minecraft:diamond",Count:1b,Slot:2b},{id:"minecraft:gold_ingot",Count:1b,Slot:3b},{id:"minecraft:gold_ingot",Count:1b,Slot:5b},{id:"minecraft:obsidian",Count:1b,Slot:6b},{id:"minecraft:obsidian",Count:1b,Slot:7b},{id:"minecraft:obsidian",Count:1b,Slot:8b}]} align xyz positioned ~.5 ~.5 ~.5 run function ttb:block/tempest_crafter/craft
