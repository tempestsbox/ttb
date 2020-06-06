# called by block/check_spawner_item

execute as @e[type=armor_stand,tag=ttb_spawner_drop,distance=...1,limit=1] run loot spawn ~ ~ ~ fish ttb:blocks/vulcaanium_ore ~ ~ ~ mainhand

particle block stone ~ ~ ~ .25 .25 .25 0 64 normal @a
particle block lime_terracotta ~ ~ ~ .25 .25 .25 0 32 normal @a
