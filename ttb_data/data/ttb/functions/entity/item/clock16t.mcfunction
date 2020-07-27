# called by clock16t

execute if block ~ ~-1 ~ gold_block if entity @s[nbt={OnGround:1b,Item:{Count:2b,id:"minecraft:crying_obsidian"}}] align xyz run function ttb:block/tempest_crafter/craft_block_check

execute if entity @s[nbt={Item:{tag:{ttb:{item:"tempite_insulator"}}}}] run particle dust 0.0862 0.8509 0.8117 1 ~ ~ ~ .05 .05 .05 0 100 normal @a
