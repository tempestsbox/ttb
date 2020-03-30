#called by block/check_spawner_item

execute if entity @s[tag=!ttb_spawner_ench_silk] run loot spawn ~ ~ ~ loot ttb:blocks/amethyst_ore
execute if entity @s[tag=ttb_spawner_ench_silk] run loot spawn ~ ~ ~ loot ttb:items/amethyst_ore

particle block stone ~ ~ ~ .25 .25 .25 0 64 normal @a
particle block purple_terracotta ~ ~ ~ .25 .25 .25 0 32 normal @a
