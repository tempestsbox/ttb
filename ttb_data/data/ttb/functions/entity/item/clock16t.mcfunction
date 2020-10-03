# called by clock16t

execute if block ~ ~-1 ~ gold_block if entity @s[nbt={OnGround:1b,Item:{Count:2b,id:"minecraft:crying_obsidian"}}] align xyz run function ttb:block/tempest_crafter/craft_block_check
