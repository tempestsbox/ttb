# called by block/check_spawner_item

execute as @e[type=armor_stand,tag=ttb_spawner_drop,distance=...1,limit=1] run loot spawn ~ ~ ~ fish ttb:blocks/amethyst_block ~ ~ ~ mainhand

particle block purple_concrete ~ ~ ~ .25 .25 .25 0 64 normal @a
