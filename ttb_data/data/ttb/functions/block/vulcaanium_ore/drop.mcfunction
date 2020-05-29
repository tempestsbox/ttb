#called by block/check_spawner_item

execute if entity @s[predicate=!ttb:block/check_spawner_item/tool/enchantment/silk_touch] run loot spawn ~ ~ ~ loot ttb:blocks/vulcaanium_ore
execute if entity @s[predicate=ttb:block/check_spawner_item/tool/enchantment/silk_touch] run loot spawn ~ ~ ~ loot ttb:items/vulcaanium_ore

particle block stone ~ ~ ~ .25 .25 .25 0 64 normal @a
particle block lime_terracotta ~ ~ ~ .25 .25 .25 0 32 normal @a
